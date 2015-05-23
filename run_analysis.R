## Getting and Cleaning Data: Course Project
#
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.
###################################################################################

setwd("./getdata/CourseProject")
library(plyr)
library(dplyr)

# read train & test data
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## Step1. 
## Merges the training and the test sets to create one data set.
y_data <- rbind(y_train, y_test)
X_data <- rbind(X_train, X_test)
subject_data <- rbind(subject_train, subject_test)

## Step2. 
## Extracts only the measurements on the mean and standard deviation for each measurement. 
# read features
features <- read.table("./UCI HAR Dataset/features.txt")

#grep("-(mean|std)\\(", features[,2], value=TRUE)
mean_std_feaID <- grep("-(mean|std)\\(", features[,2])
head(mean_std_feaID)
tail(mean_std_feaID)

mean_std_data <- select(X_data, mean_std_feaID)

## Step3. 
## Uses descriptive activity names to name the activities in the data set
# read activity names
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

# change IDs with activity names
y_data[, 1] <- activities[y_data[, 1], 2]

## Step4. 
## Appropriately labels the data set with descriptive variable names. 
names(mean_std_data) <- features[mean_std_feaID, 2]
names(y_data) <- "activity"
names(subject_data) <- "subject"

# merge all data set
data <- cbind(subject_data, y_data, mean_std_data)

## Step5. 
## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
tidy_data <- ddply(data, .(activity, subject), function(x) colMeans(x[,3:68]))
head(tidy_data)

