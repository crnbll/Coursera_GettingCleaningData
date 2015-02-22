# Coursera Getting and Cleaning Data Course Project README

## Presentation

### Introduction
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying) wearing a smartphone (Samsung Galaxy SII) on the waist. Using its embedded accelerometer and gyroscope, the researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained *raw* dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  
  
**The purpose of the current project is to prepare a *tidy* dataset with the average of each mean and standard deviation for each measurement, each activity and each subject (volunteer).**

### References
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz.  
*Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine.*  
International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012.  
[University of California Irvine Machine Learning Repository] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

### Contents
**The repository contains 3 files:**  
**- README.md explains how the script works and the transformations performed to clean up the data;**  
**- CodeBook.md describes the data and the variables;**  
**- run_analysis.R contains the code able to output the desired tidy dataset.**

## How the script works

### R package requirements
[data.table] (http://cran.r-project.org/web/packages/data.table/)

### Data file requirements
[UCI HAR Dataset.zip] (https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

If the folder 'UCI HAR Dataset' does not exist yet in the working directory, the script first downloads and extracts the ZIP file from the above URL.  
  
It then makes use of the following extracted TXT files:  
- 'UCI HAR Dataset/activity_labels.txt' to retrieve the IDs and labels of the activities;  
- 'UCI HAR Dataset/features.txt' to retrieve the IDs and labels of the features;  
- 'UCI HAR Dataset/train/subject_train.txt' to retrieve the IDs of the volunteers corresponding to the training data;  
- 'UCI HAR Dataset/test/subject_test.txt' to retrieve the IDs of the volunteers corresponding to the test data;  
- 'UCI HAR Dataset/train/y_train.txt' to retrieve the IDs of the activities corresponding to the training data;  
- 'UCI HAR Dataset/test/y_test.txt' to retrieve the IDs of the activities corresponding to the test data;  
- 'UCI HAR Dataset/train/X_train.txt' to retrieve the measurements corresponding to the training data;  
- 'UCI HAR Dataset/test/X_test.txt' to retrieve the measurements corresponding to the test data.

### What the script does
- Creates a dataframe named 'activity_ids_labels' with the IDs and labels of the activities, replacing the underscores with spaces and translating the uppercase characters to lowercase;
- Creates a dataframe named 'feature_ids_labels' with the IDs and labels of the features;
- For both training and test data:
    - Creates a dataframe named 'set_subject_ids' with the IDs of the volunteers corresponding to the partition of the data;
    - Creates a dataframe named 'set_activity_ids' with the IDs of the activities corresponding to the partition of the data;
    - Creates a dataframe named 'set_data' with the measurements corresponding to the partition of the data;
    - Sets descriptive column names in this dataframe, by using the labels contained in the dataframe 'feature_ids_labels', and cleaning them by removing the parenthesis and the dots, removing the typos (replacing "BodyBody" with "body"), replacing the abbreviations with the corresponding complete words (replacing the starting "t" with "time", the starting "f" with "frequency", "std" with "standarddeviation", "Acc" with "acceleration" and "Mag" with "magnitude") and translating the uppercase characters to lowercase;
    - Extracts the measurements on the mean and standard deviation, by selecting from the dataframe only the columns which name ends with "mean" or contains either "mean." or "std";
    - Adds the corresponding IDs of volunteers and IDs of activities to the dataframe;
    - Finally, in order to add descriptive activity names to the dataframe, merges it with the dataframe 'activity_ids_labels';
- Combines the training and test dataframes in a single datatable named 'complete_set';
- Creates another datatable named 'average_set' with the average of each variable for each subject and activity;
- Removes from this datatable the now useless 'activityid' column;
- Orders the datatable by subjectid then by activitylabel;
- Outputs the datatable to the console;
- Prints the datatable to the file 'tidy_dataset.txt' created at the root of the working directory.