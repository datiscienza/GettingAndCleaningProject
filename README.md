#Getting and Cleaning Data Course Project

###Step 1

The function ```merge_data_sets()``` is responsible for merging the training and test sets to create one data set.

The data frame is created by
1.  reading the relevant files for each respective set and binding them together (by column) in order to create two "complete" data sets--one train and one test; and
2.  binding the two data sets together (by row) in order to create the final merged set, as per requirements.

File | Data |
---- | ---- |
[TYPE]/subject_[TYPE].txt | subject
[TYPE]/y_[TYPE].txt | activity
[TYPE]/X_[TYPE].txt | observations

where `[TYPE]` is one of "test" or "train".

At this step, we also assign names to each column. The first column is named *subject* as it refers to the subject under test, the second column is named *activity* as it refers to the activity being performed, and the remaining columns are assigned names according to their names in `features.txt`.

###Step 2

The function `extract_measurements()` is responsible for extracting only the measurements on the mean and standard deviation for each measurement.

The key step is to extract those columns that match the regular expression `-(mean|std)\(\)(-[XYZ])?$`. We are careful not to match column names that have the word *mean* in them, such as *fBodyAccJerk-meanFreq()-X*, *angle(X,gravityMean)*, etc. as we are only interested in those columns that are measurements on the mean and standard deviation for measurements.

As described in `README.TXT` which accompanies the original dataset, *meanFreq()* is a weighted average of the frequency components, and vectors such as `gravityMean` are obtained by averaging values in a single window sample. We aren't interested in this data.

###Step 3

The function `named_activities()` is responsible for returning a new data set where all activities are named with descriptive names.

To perform this task, we obtain the activity names from `acitivity_labels.txt` and create a data frame identical to the previous one, but with the previous activity column replaced with a new activity column (consisting of factors).

To make the activity names a little nicer, we replace underscores with periods, and convert names to lower case. For example, `WALKING_UPSTAIRS` becomes `walking.upstairs`.

###Step 4

The function `named_variables()` is responsible for appropriately labeling the data set with descriptive variable names.

The variable names that we selected for *subject* and *activity* are fine, but the names for the feature measurements could be improved.  To do so, we use regular expression matching to strip out `()` from variable names, and replace `-` in variable names with `.` which is more idiomatic in R.

We also modify variables starting with `t` (corresponding to time) by starting them with `time.` and variables starting with `f` (corresponding to frequency) by starting them with `freq.`.

This will change a variable name such as `tBodyAcc-mean()-X` to `time.BodyAcc.mean.X`

In addition, some variables are mistakenly named with double `Body`s  (`BodyBody`). We strip one of the `Body`s in this case.

###Step 5

The function `means()` is responsible for creating a second, independent tidy data set with the average of each variable for each activity and each subject.

To perform this task, we group the data frame by *activity* and *subject*, and take the mean of each column by group.

Also, for all measurement columns (every column except *activity* and *subject*), we change the name of each column by prepending it with the string *mean.* in order to indicate that it is a mean.  For example, *someMeasurement* becomes *mean.someMeasrement*.

We output this tidy data set to a file named `tidy.txt`.
