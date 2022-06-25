## General Information

Title: GettingAndCleaningData_Assignment

Programming language: R

Author: Thomas Erhard

Date: 25.06.2022

Code: run_analysis.R

Output: tidyData.txt

# Code Book

The final data set "tidyData.txt" contains the average of each variable for each activity and each subject from the Human Activity Recognition Using Smartphones Data Set.

## Description

Dataset contains 180 rows and 68 columns for the mean and the standard deviation.
The data is grouped into subjects (subject_ID) and activities (activity_ID):

### Identifiers

- subject: ID of the test subject
- activity: Type of activity performed

### Activity

The 30 subjects are numbered from 1 to 30 and performed six types of activities listed below:

- walking
- walking upstairs
- walking downstairs
- sitting
- standing
- laying

### Variables


subject_ID

activity

TimeBodyAccelerometerSTD()-X

TimeBodyAccelerometerSTD()-Y

TimeBodyAccelerometerSTD()-Z

TimeGravityAccelerometerSTD()-X

TimeGravityAccelerometerSTD()-Y

TimeGravityAccelerometerSTD()-Z

TimeBodyAccelerometerJerkSTD()-X

TimeBodyAccelerometerJerkSTD()-Y

TimeBodyAccelerometerJerkSTD()-Z

TimeBodyGyroscopeSTD()-X

TimeBodyGyroscopeSTD()-Y

TimeBodyGyroscopeSTD()-Z

TimeBodyGyroscopeJerkSTD()-X

TimeBodyGyroscopeJerkSTD()-Y

TimeBodyGyroscopeJerkSTD()-Z

TimeBodyAccelerometerMagnitudeSTD()

TimeGravityAccelerometerMagnitudeSTD()

TimeBodyAccelerometerJerkMagnitudeSTD()

TimeBodyGyroscopeMagnitudeSTD()

TimeBodyGyroscopeJerkMagnitudeSTD()

FrequencyBodyAccelerometerSTD()-X

FrequencyBodyAccelerometerSTD()-Y

FrequencyBodyAccelerometerSTD()-Z

FrequencyBodyAccelerometerJerkSTD()-X

FrequencyBodyAccelerometerJerkSTD()-Y

FrequencyBodyAccelerometerJerkSTD()-Z

FrequencyBodyGyroscopeSTD()-X

FrequencyBodyGyroscopeSTD()-Y

FrequencyBodyGyroscopeSTD()-Z

FrequencyBodyAccelerometerMagnitudeSTD()

FrequencyBodyAccelerometerJerkMagnitudeSTD()

FrequencyBodyGyroscopeMagnitudeSTD()

FrequencyBodyGyroscopeJerkMagnitudeSTD()
