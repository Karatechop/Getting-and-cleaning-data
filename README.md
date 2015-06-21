# Getting and Cleaning Data Course Project
One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Here are the data for the project: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

You should create one R script called run_analysis.R that does the following. 
* Merges the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names. 
* From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Running the script
1. Download raw data using this link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
2. Unzip data in your prefered folder
3. Use setwd() to make this folder your RStudio working directory
4. Copy the script ("run_analysis.R" file) into same directory
5. Type ```source("run_analysis.R")``` in RStudio console
6. Script output ("tiny_data_set.txt") will be saved in you working directory

## Script details
In order to achieve the project tasks, this script performs following operations on the raw data:
* Load data
  Load activity labels
  Load train and test subjects index
  Load variable names
  Load train data
  Load test data
* Merge y_test and y_train; provide descriptive column names
  Bind train and test activity data
  Convert 2nd clumn of activity_labels data frame into factor vector that will allow activity labeling based on activity index (y data)
  Create a column with descriptive activity names
  Discriptivly label activity data
* Merge X_test and X_train; provide descriptive column names
  Bind train and test measurements data
  Provide column names for measurements data
* Extract only the measurements on the mean and standard deviation for each measurement
* Bind subject_train and subject_test data; provide descriptive column names
  Bind train and test subject data
  Provide column name for subject data
* Merge all data
  Bind the columns of bound subject, activity and measurements data
* Create tidy data set with the average of each variable for each activity and each subject
  Convert variables in Activity.label and Subject columns into factors to introduce levels that will allow aggregation base on them
  Calculate the average of each variable for each activity and each subject
  Remove introduced NA columns
  Save tidy data set in a file


## Warnings
Upon execution this script writes out following message: "There were 50 or more warnings (use warnings() to see the first 50)"
This is due to introduction of NAs at the step of calculation of average of each variable for each activity and each subject using aggregate() function.
NAs are introduced when this function tries to calculate means of non numeric variables.
Columns containing NAs are removed in the next step and are not part of tidy data set.

## R dependencies
Execution of this script does not require additional R packages