# Coursera Getting and Cleaning Data Course Project CodeBook

## Source raw data
See [University of California Irvine Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  
Features are normalized and bounded within [-1,1].

## Computed tidy data
The resulting tidy dataset contains 180 (30 volunteers * 6 activities) observations of 68 variables.

## Variables
- **subject.id**            : integer representing the volunteer ID
- **activity.label**        : factor with 6 levels representing the performed activity
- **tBodyAcc.mean.X**       : number indicating the mean of the time signal of the body acceleration in the X direction
- **tBodyAcc.mean.Y**       : number indicating the mean of the time signal of the body acceleration in the Y direction
- **tBodyAcc.mean.Z**       : number indicating the mean of the time signal of the body acceleration in the Z direction
- **tBodyAcc.std.X**        : number indicating the standard deviation of the time signal of the body acceleration in the X direction
- **tBodyAcc.std.Y**        : number indicating the standard deviation of the time signal of the body acceleration in the Y direction
- **tBodyAcc.std.Z**        : number indicating the standard deviation of the time signal of the body acceleration in the Z direction
- **tGravityAcc.mean.X**    : number indicating the mean of the time signal of the gravity acceleration in the X direction
- **tGravityAcc.mean.Y**    : number indicating the mean of the time signal of the gravity acceleration in the Y direction
- **tGravityAcc.mean.Z**    : number indicating the mean of the time signal of the gravity acceleration in the Z direction
- **tGravityAcc.std.X**     : number indicating the standard deviation of the time signal of the gravity acceleration in the X direction
- **tGravityAcc.std.Y**     : number indicating the standard deviation of the time signal of the gravity acceleration in the Y direction
- **tGravityAcc.std.Z**     : number indicating the standard deviation of the time signal of the gravity acceleration in the Z direction
- **tBodyAccJerk.mean.X**   : number indicating the mean of the Jerk time signal of the body acceleration in the X direction
- **tBodyAccJerk.mean.Y**   : number indicating the mean of the Jerk time signal of the body acceleration in the Y direction
- **tBodyAccJerk.mean.Z**   : number indicating the mean of the Jerk time signal of the body acceleration in the Z direction
- **tBodyAccJerk.std.X**    : number indicating the standard deviation of the Jerk time signal of the body acceleration in the X direction
- **tBodyAccJerk.std.Y**    : number indicating the standard deviation of the Jerk time signal of the body acceleration in the Y direction
- **tBodyAccJerk.std.Z**    : number indicating the standard deviation of the Jerk time signal of the body acceleration in the Z direction
- **tBodyGyro.mean.X**      : number indicating the mean of the time signal of the angular velocity in the X direction
- **tBodyGyro.mean.Y**      : number indicating the mean of the time signal of the angular velocity in the Y direction
- **tBodyGyro.mean.Z**      : number indicating the mean of the time signal of the angular velocity in the Z direction
- **tBodyGyro.std.X**       : number indicating the standard deviation of the time signal of the angular velocity in the X direction
- **tBodyGyro.std.Y**       : number indicating the standard deviation of the time signal of the angular velocity in the Y direction
- **tBodyGyro.std.Z**       : number indicating the standard deviation of the time signal of the angular velocity in the Z direction
- **tBodyGyroJerk.mean.X**  : number indicating the mean of the Jerk time signal of the angular velocity in the X direction
- **tBodyGyroJerk.mean.Y**  : number indicating the mean of the Jerk time signal of the angular velocity in the Y direction
- **tBodyGyroJerk.mean.Z**  : number indicating the mean of the Jerk time signal of the angular velocity in the Z direction
- **tBodyGyroJerk.std.X**   : number indicating the standard deviation of the Jerk time signal of the angular velocity in the X direction
- **tBodyGyroJerk.std.Y**   : number indicating the standard deviation of the Jerk time signal of the angular velocity in the Y direction
- **tBodyGyroJerk.std.Z**   : number indicating the standard deviation of the Jerk time signal of the angular velocity in the Z direction
- **tBodyAccMag.mean**      : number indicating the mean of the time signal of the body acceleration magnitude
- **tBodyAccMag.std**       : number indicating the standard deviation of the time signal of the body acceleration magnitude
- **tGravityAccMag.mean**   : number indicating the mean of the time signal of the gravity acceleration magnitude
- **tGravityAccMag.std**    : number indicating the standard deviation of the time signal of the gravity acceleration magnitude
- **tBodyAccJerkMag.mean**  : number indicating the mean of the Jerk time signal of the body acceleration magnitude
- **tBodyAccJerkMag.std**   : number indicating the standard deviation of the Jerk time signal of the body acceleration magnitude
- **tBodyGyroMag.mean**     : number indicating the mean of the time signal of the angular velocity magnitude
- **tBodyGyroMag.std**      : number indicating the standard deviation of the time signal of the angular velocity magnitude
- **tBodyGyroJerkMag.mean** : number indicating the mean of the Jerk time signal of the angular velocity magnitude
- **tBodyGyroJerkMag.std**  : number indicating the standard deviation of the Jerk time signal of the angular velocity magnitude
- **fBodyAcc.mean.X**       : number indicating the mean of the frequency signal of the body acceleration in the X direction
- **fBodyAcc.mean.Y**       : number indicating the mean of the frequency signal of the body acceleration in the Y direction
- **fBodyAcc.mean.Z**       : number indicating the mean of the frequency signal of the body acceleration in the Z direction
- **fBodyAcc.std.X**        : number indicating the standard deviation of the frequency signal of the body acceleration in the X direction
- **fBodyAcc.std.Y**        : number indicating the standard deviation of the frequency signal of the body acceleration in the Y direction
- **fBodyAcc.std.Z**        : number indicating the standard deviation of the frequency signal of the body acceleration in the Z direction
- **fBodyAccJerk.mean.X**   : number indicating the mean of the Jerk frequency signal of the body acceleration in the X direction
- **fBodyAccJerk.mean.Y**   : number indicating the mean of the Jerk frequency signal of the body acceleration in the Y direction
- **fBodyAccJerk.mean.Z**   : number indicating the mean of the Jerk frequency signal of the body acceleration in the Z direction
- **fBodyAccJerk.std.X**    : number indicating the standard deviation of the Jerk frequency signal of the body acceleration in the X direction
- **fBodyAccJerk.std.Y**    : number indicating the standard deviation of the Jerk frequency signal of the body acceleration in the Y direction
- **fBodyAccJerk.std.Z**    : number indicating the standard deviation of the Jerk frequency signal of the body acceleration in the Z direction
- **fBodyGyro.mean.X**      : number indicating the mean of the frequency signal of the angular velocity in the X direction
- **fBodyGyro.mean.Y**      : number indicating the mean of the frequency signal of the angular velocity in the Y direction
- **fBodyGyro.mean.Z**      : number indicating the mean of the frequency signal of the angular velocity in the Z direction
- **fBodyGyro.std.X**       : number indicating the standard deviation of the frequency signal of the angular velocity in the X direction
- **fBodyGyro.std.Y**       : number indicating the standard deviation of the frequency signal of the angular velocity in the Y direction
- **fBodyGyro.std.Z**       : number indicating the standard deviation of the frequency signal of the angular velocity in the Z direction
- **fBodyAccMag.mean**      : number indicating the mean of the frequency signal of the body acceleration magnitude
- **fBodyAccMag.std**       : number indicating the standard deviation of the frequency signal of the body acceleration magnitude
- **fBodyAccJerkMag.mean**  : number indicating the mean of the Jerk frequency signal of the body acceleration magnitude
- **fBodyAccJerkMag.std**   : number indicating the standard deviation of the Jerk frequency signal of the body acceleration magnitude
- **fBodyGyroMag.mean**     : number indicating the mean of the frequency signal of the angular velocity magnitude
- **fBodyGyroMag.std**      : number indicating the standard deviation of the frequency signal of the angular velocity magnitude
- **fBodyGyroJerkMag.mean** : number indicating the mean of the Jerk frequency signal of the angular velocity magnitude
- **fBodyGyroJerkMag.std**  : number indicating the standard deviation of the Jerk frequency signal of the angular velocity magnitude