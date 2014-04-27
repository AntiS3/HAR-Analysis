### Codebook 
============

As it has been described by [1] - License Reference - the features selected for this database come from samples taken from 30 Subjects using smartphones while experiencing 6 activities:

##### Activities
================
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

##### Conventions
================
Features conventions works as follows:

1. The accelerometer(Acc)
2. The gyroscope (Gyro)
 
A sufix '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 

The prefix 't' denote time
The prefix 'f' denote frequency domain signals (calculated by using a FFT - Fast Fourier Transform -).

The acceleration signal were separated into body and gravity acceleration signals (tBodyAcc and tGravityAcc)

The body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)

The variables of interest considered are:

1. The mean -mean()
2. The standard Deviation -std()

The following are the 66 features (in alphabetical order) reported by the file 'tidydata.txt', ordered by Subjects and Activities:

"fBodyAcc-mean()-X"

"fBodyAcc-mean()-Y"

"fBodyAcc-mean()-Z"

"fBodyAcc-std()-X"

"fBodyAcc-std()-Y"

"fBodyAcc-std()-Z"

"fBodyAccJerk-mean()-X"

"fBodyAccJerk-mean()-Y"

"fBodyAccJerk-mean()-Z"

"fBodyAccJerk-std()-X"

"fBodyAccJerk-std()-Y"

"fBodyAccJerk-std()-Z"

"fBodyAccMag-mean()"

"fBodyAccMag-std()"

"fBodyBodyAccJerkMag-mean()"

"fBodyBodyAccJerkMag-std()"

"fBodyBodyGyroJerkMag-mean()"

"fBodyBodyGyroJerkMag-std()"

"fBodyBodyGyroMag-mean()"

"fBodyBodyGyroMag-std()"

"fBodyGyro-mean()-X"

"fBodyGyro-mean()-Y"

"fBodyGyro-mean()-Z"

"fBodyGyro-std()-X"

"fBodyGyro-std()-Y"

"fBodyGyro-std()-Z"

"tBodyAcc-mean()-X"

"tBodyAcc-mean()-Y"

"tBodyAcc-mean()-Z"

"tBodyAcc-std()-X"

"tBodyAcc-std()-Y"

"tBodyAcc-std()-Z"

"tBodyAccJerk-mean()-X"

"tBodyAccJerk-mean()-Y"

"tBodyAccJerk-mean()-Z"

"tBodyAccJerk-std()-X"

"tBodyAccJerk-std()-Y"

"tBodyAccJerk-std()-Z"

"tBodyAccJerkMag-mean()"

"tBodyAccJerkMag-std()"

"tBodyAccMag-mean()"

"tBodyAccMag-std()"

"tBodyGyro-mean()-X"

"tBodyGyro-mean()-Y"

"tBodyGyro-mean()-Z"

"tBodyGyro-std()-X"

"tBodyGyro-std()-Y"

"tBodyGyro-std()-Z"

"tBodyGyroJerk-mean()-X"

"tBodyGyroJerk-mean()-Y"

"tBodyGyroJerk-mean()-Z"

"tBodyGyroJerk-std()-X"

"tBodyGyroJerk-std()-Y"

"tBodyGyroJerk-std()-Z"

"tBodyGyroJerkMag-mean()"

"tBodyGyroJerkMag-std()"

"tBodyGyroMag-mean()"

"tBodyGyroMag-std()"

"tGravityAcc-mean()-X"

"tGravityAcc-mean()-Y"

"tGravityAcc-mean()-Z"

"tGravityAcc-std()-X"

"tGravityAcc-std()-Y"

"tGravityAcc-std()-Z"

"tGravityAccMag-mean()"

"tGravityAccMag-std()"

---------------------------------------------------------------------------------
License Reference

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
