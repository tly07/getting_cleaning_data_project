---
title: "Getting and Cleaning Data Course Project"
output: html_document
---

# Getting and Cleaning Data Course Project

## Overview
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.   
This project involves data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description of the data can be obtained from [UCI Machine Learning Repository: Human Activity Recognition Using Smartphones Data Set](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).  

## Getting Started

The data used specifically for this project can be found [here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).  

After downloading and unzipping the file folder, save the entire UCI HAR Dataset folder to your woriking directory, without renaming the folder. Set your working directory in R before running the run_analysis.R script.  

Please also ensure that you have the dplyr and tidyr packages installed.

## What run_analysis.R script does
1. Merges the training and the test sets to create one data set.
2. Extracts the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  

The output is a text file named "tidydataset.txt".   

## Additional Information  
See CodeBook for more information on variables, data and transformations.
