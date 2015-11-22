## Getting & Cleaning Data Course Project

## Load dplyr and tidyr packages 
library(dplyr, tidyr)

## Load all relevant files into R as data tables
test_subject <- tbl_df(read.table("./UCI HAR Dataset/test/subject_test.txt"))
test_set <- tbl_df(read.table("./UCI HAR Dataset/test/x_test.txt"))
test_labels <- tbl_df(read.table("./UCI HAR Dataset/test/y_test.txt"))
train_subject <- tbl_df(read.table("./UCI HAR Dataset/train/subject_train.txt"))
train_set <- tbl_df(read.table("./UCI HAR Dataset/train/x_train.txt"))
train_labels <- tbl_df(read.table("./UCI HAR Dataset/train/y_train.txt"))
activity_label <- tbl_df(read.table("./UCI HAR Dataset/activity_labels.txt"))
features <- tbl_df(read.table("./UCI HAR Dataset/features.txt"))

## Merges the training and the test sets to create one data set:
## (a) rename variable names, merge subject, activity and measurements data for test and train data respectively

var_names <- t(features$V2)
names(test_set) <- var_names
names(test_subject) <- "subject"
names(test_labels) <- "activity"
test <- bind_cols(list(test_subject, test_labels, test_set))

names(train_set) <- var_names
names(train_subject) <- "subject"
names(train_labels) <- "activity"
train <- bind_cols(list(train_subject, train_labels, train_set))

## (b) Combining test and train data into one dataframe

all_data <- rbind(test, train)

## Extracts only the measurements on the mean and standard deviation for each measurement: 
## i.e. select only variables with names containing "mean()" and "std()"

meanstdcols <- grep("mean\\(\\)|std\\(\\)", names(all_data), value = FALSE)
selected_data <- all_data[ , c(1,2,meanstdcols)]

## Replace activity codes (factor levels of 1:6) in dataset with descriptive activity names from activity_label file

selected_data$activity <- as.factor(selected_data$activity)
levels(selected_data$activity) <- activity_label$V2

## Appropriately labels the data set with descriptive variable names.
## Corrected the names that differs from the features_info i.e. those that have "BodyBody" instead of just one "Body" 
## Relabelling the variables to minimize use of symbols
## e.g. tBodyAccMean(X) instead of tBodyACC-mean()-X to refer to the mean of body acceleration at time t in direction X
## [Note: The difference in name also allows for differentiation between the raw data variables and the processed ones in step 5]

var_names2 <- names(selected_data) 
var_names2 <- gsub("BodyBody", replacement = "Body" , var_names2, fixed = TRUE)
var_names2 <- gsub("-mean()", replacement = "Mean" , var_names2, fixed = TRUE)
var_names2 <- gsub("-std()", replacement = "Std" , var_names2, fixed = TRUE)
var_names2 <- gsub("-X", replacement = "(X)" , var_names2, fixed = TRUE)
var_names2 <- gsub("-Y", replacement = "(Y)" , var_names2, fixed = TRUE)
var_names2 <- gsub("-Z", replacement = "(Z)" , var_names2, fixed = TRUE)
names(selected_data) <- var_names2

## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject

avg_data <- selected_data %>%
       group_by(subject, activity) %>%
       summarise_each(funs(mean))

## Saving the tidy data set as a text file

write.table(avg_data, file = "tidydataset.txt", row.names = FALSE)

## End