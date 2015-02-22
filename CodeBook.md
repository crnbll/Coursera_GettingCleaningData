# Coursera Getting and Cleaning Data Course Project CodeBook

## Source raw data
See [University of California Irvine Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  

## Computed tidy data
The resulting tidy dataset contains 180 (30 volunteers * 6 activities) observations of 68 variables.  
Units: features are normalized and bounded within [-1,1].

## Variables
- **subjectid** : integer representing the volunteer ID
- **activitylabel** : factor with 6 levels representing the performed activity
- **timebodyaccelerationmeanx** : number indicating the mean of the time signal of the body acceleration in the X direction
- **timebodyaccelerationmeany** : number indicating the mean of the time signal of the body acceleration in the Y direction
- **timebodyaccelerationmeanz** : number indicating the mean of the time signal of the body acceleration in the Z direction
- **timebodyaccelerationstandarddeviationx** : number indicating the standard deviation of the time signal of the body acceleration in the X direction
- **timebodyaccelerationstandarddeviationy** : number indicating the standard deviation of the time signal of the body acceleration in the Y direction
- **timebodyaccelerationstandarddeviationz** : number indicating the standard deviation of the time signal of the body acceleration in the Z direction
- **timegravityaccelerationmeanx** : number indicating the mean of the time signal of the gravity acceleration in the X direction
- **timegravityaccelerationmeany** : number indicating the mean of the time signal of the gravity acceleration in the Y direction
- **timegravityaccelerationmeanz** : number indicating the mean of the time signal of the gravity acceleration in the Z direction
- **timegravityaccelerationstandarddeviationx** : number indicating the standard deviation of the time signal of the gravity acceleration in the X direction
- **timegravityaccelerationstandarddeviationy** : number indicating the standard deviation of the time signal of the gravity acceleration in the Y direction
- **timegravityaccelerationstandarddeviationz** : number indicating the standard deviation of the time signal of the gravity acceleration in the Z direction
- **timebodyaccelerationjerkmeanx** : number indicating the mean of the Jerk time signal of the body acceleration in the X direction
- **timebodyaccelerationjerkmeany** : number indicating the mean of the Jerk time signal of the body acceleration in the Y direction
- **timebodyaccelerationjerkmeanz** : number indicating the mean of the Jerk time signal of the body acceleration in the Z direction
- **timebodyaccelerationjerkstandarddeviationx** : number indicating the standard deviation of the Jerk time signal of the body acceleration in the X direction
- **timebodyaccelerationjerkstandarddeviationy** : number indicating the standard deviation of the Jerk time signal of the body acceleration in the Y direction
- **timebodyaccelerationjerkstandarddeviationz** : number indicating the standard deviation of the Jerk time signal of the body acceleration in the Z direction
- **timebodygyromeanx** : number indicating the mean of the time signal of the body angular velocity in the X direction
- **timebodygyromeany** : number indicating the mean of the time signal of the body angular velocity in the Y direction
- **timebodygyromeanz** : number indicating the mean of the time signal of the body angular velocity in the Z direction
- **timebodygyrostandarddeviationx** : number indicating the standard deviation of the time signal of the body angular velocity in the X direction
- **timebodygyrostandarddeviationy** : number indicating the standard deviation of the time signal of the body angular velocity in the Y direction
- **timebodygyrostandarddeviationz** : number indicating the standard deviation of the time signal of the body angular velocity in the Z direction
- **timebodygyrojerkmeanx** : number indicating the mean of the Jerk time signal of the body angular velocity in the X direction
- **timebodygyrojerkmeany** : number indicating the mean of the Jerk time signal of the body angular velocity in the Y direction
- **timebodygyrojerkmeanz** : number indicating the mean of the Jerk time signal of the body angular velocity in the Z direction
- **timebodygyrojerkstandarddeviationx** : number indicating the standard deviation of the Jerk time signal of the body angular velocity in the X direction
- **timebodygyrojerkstandarddeviationy** : number indicating the standard deviation of the Jerk time signal of the body angular velocity in the Y direction
- **timebodygyrojerkstandarddeviationz** : number indicating the standard deviation of the Jerk time signal of the body angular velocity in the Z direction
- **timebodyaccelerationmagnitudemean** : number indicating the mean of the time signal of the body acceleration magnitude
- **timebodyaccelerationmagnitudestandarddeviation** : number indicating the standard deviation of the time signal of the body acceleration magnitude
- **timegravityaccelerationmagnitudemean** : number indicating the mean of the time signal of the gravity acceleration magnitude
- **timegravityaccelerationmagnitudestandarddeviation** : number indicating the standard deviation of the time signal of the gravity acceleration magnitude
- **timebodyaccelerationjerkmagnitudemean** : number indicating the mean of the Jerk time signal of the body acceleration magnitude
- **timebodyaccelerationjerkmagnitudestandarddeviation** : number indicating the standard deviation of the Jerk time signal of the body acceleration magnitude
- **timebodygyromagnitudemean** : number indicating the mean of the time signal of the body angular velocity magnitude
- **timebodygyromagnitudestandarddeviation** : number indicating the standard deviation of the time signal of the body angular velocity magnitude
- **timebodygyrojerkmagnitudemean** : number indicating the mean of the Jerk time signal of the body angular velocity magnitude
- **timebodygyrojerkmagnitudestandarddeviation** : number indicating the standard deviation of the Jerk time signal of the body angular velocity magnitude
- **frequencybodyaccelerationmeanx** : number indicating the mean of the frequency signal of the body acceleration in the X direction
- **frequencybodyaccelerationmeany** : number indicating the mean of the frequency signal of the body acceleration in the Y direction
- **frequencybodyaccelerationmeanz** : number indicating the mean of the frequency signal of the body acceleration in the Z direction
- **frequencybodyaccelerationstandarddeviationx** : number indicating the standard deviation of the frequency signal of the body acceleration in the X direction
- **frequencybodyaccelerationstandarddeviationy** : number indicating the standard deviation of the frequency signal of the body acceleration in the Y direction
- **frequencybodyaccelerationstandarddeviationz** : number indicating the standard deviation of the frequency signal of the body acceleration in the Z direction
- **frequencybodyaccelerationjerkmeanx** : number indicating the mean of the Jerk frequency signal of the body acceleration in the X direction
- **frequencybodyaccelerationjerkmeany** : number indicating the mean of the Jerk frequency signal of the body acceleration in the Y direction
- **frequencybodyaccelerationjerkmeanz** : number indicating the mean of the Jerk frequency signal of the body acceleration in the Z direction
- **frequencybodyaccelerationjerkstandarddeviationx** : number indicating the standard deviation of the Jerk frequency signal of the body acceleration in the X direction
- **frequencybodyaccelerationjerkstandarddeviationy** : number indicating the standard deviation of the Jerk frequency signal of the body acceleration in the Y direction
- **frequencybodyaccelerationjerkstandarddeviationz** : number indicating the standard deviation of the Jerk frequency signal of the body acceleration in the Z direction
- **frequencybodygyromeanx** : number indicating the mean of the frequency signal of the body angular velocity in the X direction
- **frequencybodygyromeany** : number indicating the mean of the frequency signal of the body angular velocity in the Y direction
- **frequencybodygyromeanz** : number indicating the mean of the frequency signal of the body angular velocity in the Z direction
- **frequencybodygyrostandarddeviationx** : number indicating the standard deviation of the frequency signal of the body angular velocity in the X direction
- **frequencybodygyrostandarddeviationy** : number indicating the standard deviation of the frequency signal of the body angular velocity in the Y direction
- **frequencybodygyrostandarddeviationz** : number indicating the standard deviation of the frequency signal of the body angular velocity in the Z direction
- **frequencybodyaccelerationmagnitudemean** : number indicating the mean of the frequency signal of the body acceleration magnitude
- **frequencybodyaccelerationmagnitudestandarddeviation** : number indicating the standard deviation of the frequency signal of the body acceleration magnitude
- **frequencybodyaccelerationjerkmagnitudemean** : number indicating the mean of the Jerk frequency signal of the body acceleration magnitude
- **frequencybodyaccelerationjerkmagnitudestandarddeviation** : number indicating the standard deviation of the Jerk frequency signal of the body acceleration magnitude
- **frequencybodygyromagnitudemean** : number indicating the mean of the frequency signal of the body angular velocity magnitude
- **frequencybodygyromagnitudestandarddeviation** : number indicating the standard deviation of the frequency signal of the body angular velocity magnitude
- **frequencybodygyrojerkmagnitudemean** : number indicating the mean of the Jerk frequency signal of the body angular velocity magnitude
- **frequencybodygyrojerkmagnitudestandarddeviation** : number indicating the standard deviation of the Jerk frequency signal of the body angular velocity magnitude