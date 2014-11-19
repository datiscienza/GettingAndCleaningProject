#Code Book

##Unmodified Variables

####subject
* An identifier assigned to the subject under test
* Unmodified from the original dataset
* From 1-30
* Available from `subject_[test/train].txt` and correlated with the observations in `y_[train/test].txt`

##Modified Variables

####activity
* The activity under which the measurement was performed.
* The activities for each observation are available in `y_[train/test].txt` and names are correlated with `activity_labels.txt`

identifier | original | modified
-------- | -----------
1 | WALKING | walking
2 | WALKING_UPSTAIRS | walking.upstairs
3 | WALKING_DOWNSTAIRS | walking.downstairs
4 | SITTING | sitting
5 | STANDING | standing
6 | LAYING | laying

##New Variables

Several new variables have been created for the signals measured using the phone's accelerometer and gyroscope.  The only variables examined from the original dataset are those of the mean and standard deviation for each measurement. These variables were extracted and the average of each variable was obtained for each activity and subject.

These variable names have all been prepended with `mean.`, such as it is.

In addition, these variables correspond to observations in both the time and frequency domains.  Variables for averages in the time domain are labeled with `time`, and variables for averages in the frequency domain are labeled with `freq`. The frequency domain observations were performed by the original researchers by taking a FFT on the time domain data.

Measurements were taken for all three axis. These variables are concatenated with the axis for which the meaurement was taken, yielding variables ending with `X`, `Y`, and `Z`. The magnitude (labeled with `mag`) corresponding to the magnitudes of these measurements is also available.

Measurements taken with the accelerometer are in units of meters per second per second, and measurements taken with the gyroscope are in units of radians per second.

A description for each of these variables follows.

####mean.time.BodyAcc.mean.X
####mean.time.BodyAcc.mean.Y
####mean.time.BodyAcc.mean.Z

The mean of the mean of the acceleration due to the subject's body measured with the phone's accelerometer for each axis (m/s/s).

####mean.time.BodyAcc.std.X
####mean.time.BodyAcc.std.Y
####mean.time.BodyAcc.std.Z

The mean of the standard deviation of the acceleration due to the subject's body measured with the phone's accelerometer for each axis (m/s/s).

####mean.time.GravityAcc.mean.X
####mean.time.GravityAcc.mean.Y
####mean.time.GravityAcc.mean.Z

The mean of the mean of the acceleration due to gravity measured with the phone's accelerometer for each axis (m/s/s).

####mean.time.GravityAcc.std.X
####mean.time.GravityAcc.std.Y
####mean.time.GravityAcc.std.Z

The mean of the standard deviation of the acceleration due to gravity measured with the phone's accelerometer for each axis (m/s/s).

####mean.time.BodyAccJerk.mean.X
####mean.time.BodyAccJerk.mean.Y
####mean.time.BodyAccJerk.mean.Z

The mean of the mean of acceleration due to jerk of the subject's body measured with the phone's accelerometer for each axis (m/s/s).

####mean.time.BodyAccJerk.std.X
####mean.time.BodyAccJerk.std.Y
####mean.time.BodyAccJerk.std.Z

The mean of the standard deviation of acceleration due to jerk of the subject's body measured with the phone's accelerometer for each axis (m/s/s).

####mean.time.BodyGyro.mean.X
####mean.time.BodyGyro.mean.Y
####mean.time.BodyGyro.mean.Z

The mean of the mean of the orientation of the subject's body measured with the phone's gyroscope (rad/s)

####mean.time.BodyGyro.std.X
####mean.time.BodyGyro.std.Y
####mean.time.BodyGyro.std.Z

The mean of the standard deviation of the orientation of the subject's body measured with the phone's gyroscope (rad/s)

####mean.time.BodyGyroJerk.mean.X
####mean.time.BodyGyroJerk.mean.Y
####mean.time.BodyGyroJerk.mean.Z

The mean of the mean of the jerk due to the subject's body measured with the phone's gyroscope (rad/s)

####mean.time.BodyGyroJerk.std.X
####mean.time.BodyGyroJerk.std.Y
####mean.time.BodyGyroJerk.std.Z

The mean of the standard deviation of the jerk due to the subject's body measured with the phone's gyroscope (rad/s)

####mean.time.BodyAccMag.mean

The mean of the mean of the magnitude of the acceleration due to the subject's body measured with the phone's accelerometer (m/s/s)

####mean.time.BodyAccMag.std

The mean of the standard deviation of the magnitude of the acceleration due to the subject's body measured with the phone's accelerometer (m/s/s)

####mean.time.GravityAccMag.mean

The mean of the mean of the magnitude of the acceleration due to gravity measured with the phone's accelerometer (m/s/s)

####mean.time.GravityAccMag.std

The mean of the standard deviation of the magnitude of the acceleration due to gravity measured with the phone's accelerometer (m/s/s)

####mean.time.BodyAccJerkMag.mean

The mean of the mean of the magnitude of the jerk due to the subject's body measured with the phone's accelerometer (m/s/s)

####mean.time.BodyAccJerkMag.std

The mean of the standard deviation of the magnitude of the jerk due to the subject's body measured with the phone's accelerometer (m/s/s)

####mean.time.BodyGyroMag.mean

The mean of the mean of the magnitude of the orientation due to the subject's body measured with the phone's gyroscope (rad/s)

####mean.time.BodyGyroMag.std

The mean of the standard deviation of the magnitude of the orientation due to the subject's body measured with the phone's gyroscope (rad/s)

####mean.time.BodyGyroJerkMag.mean

The mean of the mean of the magnitude of the orientation due to the jerk of the subject's body measured with the phone's gyroscope (rad/s)

####mean.time.BodyGyroJerkMag.std

The mean of the standard deviation of the magnitude of the orientation due to the jerk of the subject's body measured with the phone's gyroscope (rad/s)

####mean.freq.BodyAcc.mean.X
####mean.freq.BodyAcc.mean.Y
####mean.freq.BodyAcc.mean.Z

The FFT of the mean of the mean of the acceleration due to the subject's body measured with the phone's accelerometer for each axis (s*s/m).

####mean.freq.BodyAcc.std.X
####mean.freq.BodyAcc.std.Y
####mean.freq.BodyAcc.std.Z

The FFT of the mean of the standard deviation of the acceleration due to the subject's body measured with the phone's accelerometer for each axis (s*s/m).

####mean.freq.BodyAccJerk.mean.X
####mean.freq.BodyAccJerk.mean.Y
####mean.freq.BodyAccJerk.mean.Z

The FFT of the mean of the mean of acceleration due to jerk of the subject's body measured with the phone's accelerometer for each axis (s*s/m).

####mean.freq.BodyAccJerk.std.X
####mean.freq.BodyAccJerk.std.Y
####mean.freq.BodyAccJerk.std.Z

The FFT of the mean of the standard deviation of acceleration due to jerk of the subject's body measured with the phone's accelerometer for each axis (s*s/m).

####mean.freq.BodyGyro.mean.X
####mean.freq.BodyGyro.mean.Y
####mean.freq.BodyGyro.mean.Z

The FFT of the mean of the mean of the orientation of the subject's body measured with the phone's gyroscope (s/rad)

####mean.freq.BodyGyro.std.X
####mean.freq.BodyGyro.std.Y
####mean.freq.BodyGyro.std.Z

The FFT of the mean of the standard deviation of the orientation of the subject's body measured with the phone's gyroscope (s/rad)

####mean.freq.BodyAccMag.mean

The FFT of the mean of the mean of the magnitude of the acceleration due to the subject's body measured with the phone's accelerometer (s*s/m)

####mean.freq.BodyAccMag.std

The FFT of the mean of the standard deviation of the magnitude of the acceleration due to the subject's body measured with the phone's accelerometer (s*s/m)

####mean.freq.BodyAccJerkMag.mean

The FFT of the mean of the mean of the magnitude of the jerk due to the subject's body measured with the phone's accelerometer (s*s/m)

####mean.freq.BodyAccJerkMag.std

The FFT of the mean of the standard deviation of the magnitude of the jerk due to the subject's body measured with the phone's accelerometer (s*s/m)

####mean.freq.BodyGyroMag.mean

The FFT of the mean of the mean of the magnitude of the orientation due to the subject's body measured with the phone's gyroscope (s/rad)

####mean.freq.BodyGyroMag.std

The FFT of the mean of the standard deviation of the magnitude of the orientation due to the subject's body measured with the phone's gyroscope (s/rad)

####mean.freq.BodyGyroJerkMag.mean

The FFT of the mean of the mean of the magnitude of the orientation due to the jerk of the subject's body measured with the phone's gyroscope (s/rad)

####mean.freq.BodyGyroJerkMag.std

The FFT of the mean of the standard deviation of the magnitude of the orientation due to the jerk of the subject's body measured with the phone's gyroscope (s/rad)
