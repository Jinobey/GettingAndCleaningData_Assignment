### Preparation

# clear environment
rm(list=ls())

# set working directory
setwd("C:/Users/thoma/OneDrive/Documents/300_Ausbildung/5 Coursera/1 Data_Science_Specialization_Johns_Hopkins_University/03_Getting_And_Cleaning_Data/_Assignment/")

# load packages
library(dplyr)

# loading feature
features <- read.table("features.txt")

# loading activity labels
activity_labels <- read.table("activity_labels.txt")

# loading training data
subject_train <- read.table("train/subject_train.txt")
y_train <- read.table("train/y_train.txt")
x_train <- read.table("train/X_train.txt")

# loading test data
subject_test <- read.table("test/subject_test.txt")
y_test <- read.table("test/y_test.txt")
x_test <- read.table("test/X_test.txt")

# rename columns
colnames(x_train) <- features[,2]
colnames(y_train) <- "activity"
colnames(subject_train) <- "subject_ID"

colnames(x_test) <- features[,2]
colnames(y_test) <- "activity"
colnames(subject_test) <- "subject_ID"

colnames(activity_labels) <- c("activity", "activity_Type")


### 1. Merges the training, the test sets and the subject sets to create one data set.

df_subject <- rbind(subject_train, subject_test)
df_x <- rbind(x_train, x_test)
df_y <- rbind(y_train, y_test)
df_merged <- cbind(df_subject, df_y, df_x)


### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

df_tidy <- df_merged %>% select(subject_ID, 
                                activity, 
                                contains("means"), 
                                contains("std"))


### 3. Uses descriptive activity names to name the activities in the data set

df_tidy$activity <- activity_labels[df_tidy$activity, 2]


### 4. Appropriately labels the data set with descriptive variable names. 

names(df_tidy) <- gsub("Acc", "Accelerometer", names(df_tidy))
names(df_tidy) <- gsub("angle", "Angle", names(df_tidy))
names(df_tidy) <- gsub("BodyBody", "Body", names(df_tidy))
names(df_tidy) <- gsub("gravity", "Gravity", names(df_tidy))
names(df_tidy) <- gsub("Gyro", "Gyroscope", names(df_tidy))
names(df_tidy) <- gsub("Mag", "Magnitude", names(df_tidy))
names(df_tidy) <- gsub("tBody", "TimeBody", names(df_tidy))
names(df_tidy) <- gsub("^t", "Time", names(df_tidy))
names(df_tidy) <- gsub("^f", "Frequency", names(df_tidy))
names(df_tidy) <- gsub("-mean()", "Mean", names(df_tidy), ignore.case = TRUE)
names(df_tidy) <- gsub("-std()", "STD", names(df_tidy), ignore.case = TRUE)
names(df_tidy) <- gsub("-freq()", "Frequency", names(df_tidy), ignore.case = TRUE)


### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyData <- df_tidy %>% group_by(subject_ID, activity) %>% summarise_all(funs(mean))


# save as text file in working directory
write.table(tidyData, "tidyData.txt", row.names = FALSE, col.names = TRUE)
