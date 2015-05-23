# codebook
a code book that describes the variables, the data, and any transformations or work that 
you performed to clean up the data.

# Source Data: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Data Set Information of "tidy_data.txt"

The feature list:
[1] "subject"                     "activity"                    "tBodyAcc-mean()-X"           "tBodyAcc-mean()-Y"          
[5] "tBodyAcc-mean()-Z"           "tBodyAcc-std()-X"            "tBodyAcc-std()-Y"            "tBodyAcc-std()-Z"           
[9] "tGravityAcc-mean()-X"        "tGravityAcc-mean()-Y"        "tGravityAcc-mean()-Z"        "tGravityAcc-std()-X"        
[13] "tGravityAcc-std()-Y"         "tGravityAcc-std()-Z"         "tBodyAccJerk-mean()-X"       "tBodyAccJerk-mean()-Y"      
[17] "tBodyAccJerk-mean()-Z"       "tBodyAccJerk-std()-X"        "tBodyAccJerk-std()-Y"        "tBodyAccJerk-std()-Z"       
[21] "tBodyGyro-mean()-X"          "tBodyGyro-mean()-Y"          "tBodyGyro-mean()-Z"          "tBodyGyro-std()-X"          
[25] "tBodyGyro-std()-Y"           "tBodyGyro-std()-Z"           "tBodyGyroJerk-mean()-X"      "tBodyGyroJerk-mean()-Y"     
[29] "tBodyGyroJerk-mean()-Z"      "tBodyGyroJerk-std()-X"       "tBodyGyroJerk-std()-Y"       "tBodyGyroJerk-std()-Z"      
[33] "tBodyAccMag-mean()"          "tBodyAccMag-std()"           "tGravityAccMag-mean()"       "tGravityAccMag-std()"       
[37] "tBodyAccJerkMag-mean()"      "tBodyAccJerkMag-std()"       "tBodyGyroMag-mean()"         "tBodyGyroMag-std()"         
[41] "tBodyGyroJerkMag-mean()"     "tBodyGyroJerkMag-std()"      "fBodyAcc-mean()-X"           "fBodyAcc-mean()-Y"          
[45] "fBodyAcc-mean()-Z"           "fBodyAcc-std()-X"            "fBodyAcc-std()-Y"            "fBodyAcc-std()-Z"           
[49] "fBodyAccJerk-mean()-X"       "fBodyAccJerk-mean()-Y"       "fBodyAccJerk-mean()-Z"       "fBodyAccJerk-std()-X"       
[53] "fBodyAccJerk-std()-Y"        "fBodyAccJerk-std()-Z"        "fBodyGyro-mean()-X"          "fBodyGyro-mean()-Y"         
[57] "fBodyGyro-mean()-Z"          "fBodyGyro-std()-X"           "fBodyGyro-std()-Y"           "fBodyGyro-std()-Z"          
[61] "fBodyAccMag-mean()"          "fBodyAccMag-std()"           "fBodyBodyAccJerkMag-mean()"  "fBodyBodyAccJerkMag-std()"  
[65] "fBodyBodyGyroMag-mean()"     "fBodyBodyGyroMag-std()"      "fBodyBodyGyroJerkMag-mean()" "fBodyBodyGyroJerkMag-std()" 

# The Process of Data Transformation (to generate tidy_data)

Step1. Merges the training and the test sets 
- rbind(y_train.txt, y_test.txt)
- rbind(X_train.txt, X_test.txt)
- rbind(subject_train.txt, subject_test.txt)

Step2. Extracts the mean and standard deviation 
- select variables with labels with "mean(" or "std(" (use select, grep function)

Step3. Uses descriptive activity names 
- read activity_labels.txt and assign the names

Step4. Labels the data set with descriptive variable names
- use names() function
- merge all data set; subject, activity, features (use cbind() function)

Step5. Creates a tidy data set for each activity and each subject.





