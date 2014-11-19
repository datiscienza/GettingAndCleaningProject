# Class project for "Getting and Cleaning Data"

library(dplyr)

dir <- "UCI HAR Dataset"

# Step 1
merge_data_sets <- function() {
    
    read_table <- function(table_type, set_type) {
        file_name <- paste(table_type, "_", set_type, ".txt", sep="")
        file_path <- file.path(dir, set_type, file_name)
        read.table(file_path)
    }
    
    get_set <- function(set_type) {
        subject <- read_table("subject", set_type)
        X <- read_table("X", set_type)
        y <- read_table("y", set_type)
        cbind(subject, y, X)
    }
    
    get_features <- function() {
        file_path <- file.path(dir, "features.txt")
        names <- read.table(file_path)
        as.character(names[,2])
    }
    
    train <- get_set("train")
    test <- get_set("test")
    merged <- rbind(train, test)
    colnames(merged) <- c("subject", "activity", get_features())
    merged
}

# Step 2
extract_measurements <- function(df) {
    r <- "-(mean|std)\\(\\)(-[XYZ])?$"
    cols <- grep(r, names(df))
    #add back the first and second columns
    cols <- c(1, 2, cols)
    df[,cols]
}

# Step 3
named_activities <- function(df) {
    file_path <- file.path(dir, "activity_labels.txt")
    labels <- read.table(file_path)
    
    #make things like WALKING_UPSTAIRS a little nicer by replacing underscores
    #and using Title Case.
    labels <- labels %>%
        mutate(nicer = tolower(labels[,2]),
               nicer = gsub("_", "\\.", nicer))
    
    mutate(df, activity = labels[activity,3])
}

# Step 4
named_variables <- function(df) {
    removed_parens <- sub("\\(\\)", "", names(df))
    replaced_hypens <- gsub("-", "\\.", removed_parens)
    replaced_t <- gsub("^t", "time\\.", replaced_hypens)
    replaced_f <- gsub("^f", "freq\\.", replaced_t)
    onebody <- gsub("BodyBody", "Body", replaced_f)
    colnames(df) <- onebody
    df
}

# Step 5
means <- function(df) {
    res <- df %>%
        group_by(activity, subject) %>%
        summarise_each(funs(mean))
    
    #also change column names to indicate they're mean values
    f <- function(x) { paste("mean.", x, sep="") }
    col_names <- names(res)
    colnames(res) <- c(col_names[1:2], unlist(lapply(col_names[c(-1, -2)], f)))
    res
}

step1_df <- merge_data_sets()
step2_df <- extract_measurements(step1_df)
step3_df <- named_activities(step2_df)
step4_df <- named_variables(step3_df)
step5_df <- means(step4_df)

# write out the tidy data set for submission
write.table(step5_df, "tidy.txt", row.name=FALSE)
