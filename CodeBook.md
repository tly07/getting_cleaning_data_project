---
title: "CodeBook for Getting and Cleaning Data Course Project"
output: html_document
---

# CodeBook for Getting and Cleaning Data Course Project

This CodeBook summarises how the run_analysis.R script transformed the original dataset and the variables contained in the tidy data set.  

## Original Dataset
For detailed information on the original data and variables, please refer to:  

* [UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  
* README.txt file found in the UCI HAR Dataset folder

## Tidy Dataset

### Brief Description
The run_analysis.R script transforms the raw data into a tidy data set named *tidydataset.txt*.

The script combines test and training datasets into one and extracts all the measurements on the mean and standard deviation for each variable. The average of each variable for each activity and each subject are then computed and presented in a tidy wide format.

The tidy data set contains 180 observations (30 subjects x 6 activities) of 68 variables (2 identifiers and 66 measurements).

### Variables

#### 1.Identifiers

* **subject**: The volunteer that performed the activities. There are a total of 30 volunteers.

* **activity**: The six activities performed by each volunteer wearing a smartphone on the waist (walking, walking upstairs, walking downstairs, sitting, standing, laying)
  
#### 2. Measurements

The measurements in the tidy dataset are the computed average of the measurements in the original dataset for each activity and each subject. The table below list the measurements in the tidy dataset and the corresponding measurement in the original dataset that it is an average for. For more information on what the measurement in the original dataset is, please check out the references in the above section **Original Dataset**.

Measurement in tidy dataset = | (Average per subject per activity of) Measurement in Original dataset  
---------------------------  | ---------------------------------
tBodyAccMean(Y) | tBodyAcc-mean()-Y
tBodyAccStd(Y)  | tBodyAcc-std()-Y  
tGravityAccMean(Y)  | tGravityAcc-mean()-Y  
tGravityAccStd(Y) | tGravityAcc-std()-Y  
tBodyAccJerkMean(Y) | tBodyAccJerk-mean()-Y  
tBodyAccJerkStd(Y)  | tBodyAccJerk-std()-Y  
tBodyGyroMean(Y)  | tBodyGyro-mean()-Y  
tBodyGyroStd(Y) | tBodyGyro-std()-Y  
tBodyGyroJerkMean(Y) | tBodyGyroJerk-mean()-Y
tBodyGyroJerkStd(Y)	| tBodyGyroJerk-std()-Y
tBodyAccMagStd | tBodyAccMag-std()
tBodyAccJerkMagMean |	tBodyAccJerkMag-mean()
tBodyGyroMagStd |	tBodyGyroMag-std()
fBodyAccMean(X)	| fBodyAcc-mean()-X
fBodyAccStd(X) |	fBodyAcc-std()-X
fBodyAccJerkMean(X)	| fBodyAccJerk-mean()-X
fBodyAccJerkStd(X) |	fBodyAccJerk-std()-X
fBodyGyroMean(X) |	fBodyGyro-mean()-X
fBodyGyroStd(X)	| fBodyGyro-std()-X
fBodyAccMagMean |	fBodyAccMag-mean()
fBodyAccJerkMagStd  |	fBodyAccJerkMag-std()
fBodyGyroJerkMagMean |	fBodyGyroJerkMag-mean()
tBodyAccMean(Z)	| tBodyAcc-mean()-Z
tBodyAccStd(Z) |	tBodyAcc-std()-Z
tGravityAccMean(Z) |	tGravityAcc-mean()-Z
tGravityAccStd(Z)	| tGravityAcc-std()-Z
tBodyAccJerkMean(Z)	| tBodyAccJerk-mean()-Z
tBodyAccJerkStd(Z) |	tBodyAccJerk-std()-Z
tBodyGyroMean(Z) |	tBodyGyro-mean()-Z
tBodyGyroStd(Z) |	tBodyGyro-std()-Z
tBodyGyroJerkMean(Z) |	tBodyGyroJerk-mean()-Z
tBodyGyroJerkStd(Z)	| tBodyGyroJerk-std()-Z
tGravityAccMagMean |	tGravityAccMag-mean()
tBodyAccJerkMagStd | tBodyAccJerkMag-std()
tBodyGyroJerkMagMean |	tBodyGyroJerkMag-mean()
fBodyAccMean(Y) |	fBodyAcc-mean()-Y
fBodyAccStd(Y) |	fBodyAcc-std()-Y
fBodyAccJerkMean(Y)	| fBodyAccJerk-mean()-Y
fBodyAccJerkStd(Y)	| fBodyAccJerk-std()-Y
fBodyGyroMean(Y)	| fBodyGyro-mean()-Y
fBodyGyroStd(Y)	| fBodyGyro-std()-Y
fBodyAccMagStd	| fBodyAccMag-std()
fBodyGyroMagMean	| fBodyGyroMag-mean()
fBodyGyroJerkMagStd	| fBodyGyroJerkMag-std()
tBodyAccMean(X) | tBodyAcc-mean()-X
tBodyAccStd(X)	| tBodyAcc-std()-X
tGravityAccMean(X)	| tGravityAcc-mean()-X
tGravityAccStd(X)	| tGravityAcc-std()-X
tBodyAccJerkMean(X)	| tBodyAccJerk-mean()-X
tBodyAccJerkStd(X) |	tBodyAccJerk-std()-X
tBodyGyroMean(X)	| tBodyGyro-mean()-X
tBodyGyroStd(X)	| tBodyGyro-std()-X
tBodyGyroJerkMean(X) |	tBodyGyroJerk-mean()-X
tBodyGyroJerkStd(X)	| tBodyGyroJerk-std()-X
tBodyAccMagMean	| tBodyAccMag-mean()
tGravityAccMagStd	| tGravityAccMag-std()
tBodyGyroMagMean  |	tBodyGyroMag-mean()
tBodyGyroJerkMagStd |	tBodyGyroJerkMag-std()
fBodyAccMean(Z) |	fBodyAcc-mean()-Z
fBodyAccStd(Z)  |	fBodyAcc-std()-Z
fBodyAccJerkMean(Z)	| fBodyAccJerk-mean()-Z
fBodyAccJerkStd(Z)	| fBodyAccJerk-std()-Z
fBodyGyroMean(Z)	| fBodyGyro-mean()-Z
fBodyGyroStd(Z)	  | fBodyGyro-std()-Z
fBodyAccJerkMagMean	| fBodyAccJerkMag-mean()
fBodyGyroMagStd	| fBodyGyroMag-std()

*Note: all features from which the measurements in the original dataset are derived had been normalised into a range of -1 to 1. 

 

