### Preparation

# clear environment
rm(list=ls())

# set working directory
setwd("C:/Users/thoma/OneDrive/Documents/300_Ausbildung/5 Coursera/1 Data_Science_Specialization_Johns_Hopkins_University/03_Getting_And_Cleaning_Data/")

# loading feature
features <- read.table("_Assignment/features.txt")

# loading activity labels
activity_labels <- read.table("_Assignment/activity_labels.txt")

# loading training data
subject_train <- read.table("_Assignment/train/subject_train.txt")
y_train <- read.table("_Assignment/train/y_train.txt")
x_train <- read.table("_Assignment/train/X_train.txt")

# loading test data
subject_test <- read.table("_Assignment/test/subject_test.txt")
y_test <- read.table("_Assignment/test/y_test.txt")
x_test <- read.table("_Assignment/test/X_test.txt")

# rename columns
colnames(x_train) <- features[,2]
colnames(y_train) <- "activity_ID"
colnames(subject_train) <- "subject_ID"

colnames(x_test) <- features[,2]
colnames(y_test) <- "activity_ID"
colnames(subject_test) <- "subject_ID"

colnames(activity_labels) <- c("activity_ID", "activity_Type")


### 1. Merges the training and the test sets to create one data set.

df_train <- cbind(y_train, subject_train, x_train)
df_test <- cbind(y_test, subject_test, x_test)
df_merged <- rbind(df_train, df_test)


### 2. Extracts only the measurements on the mean and standard deviation for each measurement. 

# reading column names
colNames <- colnames(df_merged)

# create vector for defining ID, mean, and sd
mean_std <- (grepl("activity_ID", colNames) |
                     grepl("subject_ID", colNames) |
                     grepl("mean...", colNames) |
                     grepl("std...", colNames)
)

# create subset
df_Mean_Std <- df_merged[ , mean_std == TRUE]


### 3. Uses descriptive activity names to name the activities in the data set

df_Activity_Names <- merge(df_Mean_Std, activity_labels,
                              by = "activity_ID",
                              all.x = TRUE)


### 4. Appropriately labels the data set with descriptive variable names. 

# see above


### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

tidyData <-aggregate(. ~subject_ID + activity_ID, df_merged, mean)


# save as text file in working directory
write.table(tidyData, "tidyData.txt", row.names = FALSE)




