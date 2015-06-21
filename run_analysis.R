## Create one R script called run_analysis.R that does the following:
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive activity names.
## 5. Creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Load data

print("Loading data...")

##Load activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

## Load train and test subjects index
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

## Load variable names
features <- read.table("./UCI HAR Dataset/features.txt")

## Load train data
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

## Load test data
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")

print("Loading data...Complete")

## Merge y_test and y_train; provide descriptive column names

print("Processing activity data...")

## Bind train and test activity data
activity<-rbind(y_train, y_test)

## Convert 2nd clumn of activity_labels data frame into factor vector
## that will allow activity labeling based on activity index (y data)
activity_labels<-activity_labels[,2]

## Create a column with descriptive activity names
activity[,2]<-activity_labels[activity[,1]]

## Discriptivly label activity data
names(activity) = c("Activity.index", "Activity.label")

print("Processing activity data...Complete")

## Merge X_test and X_train; provide descriptive column names

print("Processing measurements data...")

## Bind train and test measurements data
measurements<-rbind(X_train, X_test)

## Provide column names for measurements data
features.names<-features[,2]
names(measurements)<-features.names

## Extract only the measurements on the mean and standard deviation for each measurement
measurements<-measurements[,grep("mean|std", features.names)]

print("Processing measurements data...Complete")

## Bind subject_train and subject_test data; provide descriptive column names

print("Processing subject data...")

## Bind train and test subject data
subject<-rbind(subject_train,subject_test)

## Provide column name for subject data
names(subject)<- c("Subject")

print("Processing subject data...Complete")

## Merge all data

print("Binding data...")

## Bind the columns of bound subject, activity and measurements data
data<-cbind(subject, activity, measurements)

print("Binding data...Complete")

## Create tidy data set with the average of each variable for each activity and each subject

print("Creating tidy data set with the average of each variable for each activity and each subject...")

## Convert variables in Activity.label and Subject columns into factors
## to introduce levels that will allow aggregation base on them
data$Activity.label <- as.factor(data$Activity.label)
data$Subject <- as.factor(data$Subject)

## Calculate the average of each variable for each activity and each subject
tidy.set = aggregate(data, by=list(Subject = data$Subject, Activity.label = data$Activity.label), mean)

## Remove introduced NA columns
tidy.set<-tidy.set[, colSums(is.na(tidy.set)) != nrow(tidy.set)]

## Save tidy data set in a file
write.table(tidy.set, file = "./tidy_data_set.txt", row.name=FALSE)

print("Creating tidy data set with the average of each variable for each activity and each subject...Complete")
print("Tidy data set saved in ./tidy_data_set.txt")

print("Script executed successfully")