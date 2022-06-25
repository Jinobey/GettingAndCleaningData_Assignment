# GettingAndCleaningData_Assignment

This repository contains data for the assignment of the "Getting and Cleaning Data" course from coursera. 
The original data must be downloaded and put into the working directory. Afterwards, the R code can be downloaded into the working directory and executed to generate a tidy data file called "tidyData.txt".

# Data description

The data contains several sensor signals of 30 subjects. These data were gathered using an accelerometers from a Samsung Galaxy S smartphone. The smartphone tracked six different activites, walking, walking upstairs, walking downstairs, sitting, standing and laying.


# Code explanation

First, all data is loaded into R and labeld accordingly. Afterwards, the data got merged into one data set with the averages of each variable for each activity and for each subject.

# Tidy data set

The new generated tidy data set contains variables calculated based on the mean and standard deviation. Each row of the data set is an average of each activity type for all subjects.
