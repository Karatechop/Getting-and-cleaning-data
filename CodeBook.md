## Experiments

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

##Files

### For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

### The original dataset includes the following files:

- 'UCI HAR Dataset/README.txt'

- 'UCI HAR Dataset/features_info.txt': Shows information about the variables used on the feature vector.

- 'UCI HAR Dataset/features.txt': List of all features.

- 'UCI HAR Dataset/activity_labels.txt': Links the class labels with their activity name.

- 'UCI HAR Dataset/train/X_train.txt': Training set.

- 'UCI HAR Dataset/train/y_train.txt': Training labels.

- 'UCI HAR Dataset/test/X_test.txt': Test set.

- 'UCI HAR Dataset/test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'UCI HAR Dataset/train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'UCI HAR Dataset/train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'UCI HAR Dataset/train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'UCI HAR Dataset/train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

#### Notes: 
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about original dataset contact: activityrecognition@smartlab.ws

### "run_analysis.R" script related files

- 'run_analysis.R': script that outputs tiny_data_set.txt
- 'README.md': information on "run_analysis.R" script
- 'CodeBook.md': information about the updated data set and variable it includes its various files
- 'tidy_data_set.txt': output of "run_analysis.R" script, contains average of each mean value or standard deviation estimation variable for each activity and each subject present in original data set.

### 'tidy_data_set.txt' variables

1.	Subject	- test subject ID
2.	Activity.index	- activity identification as provided in 'UCI HAR Dataset/activity_labels.txt'
3.	Activity.label	- descriptive activity label
4.	tBodyAcc-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
5.	tBodyAcc-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
6.	tBodyAcc-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
7.	tBodyAcc-std()-X	- estimatred average for this original dataset feature for each activity and each subject
8.	tBodyAcc-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
9.	tBodyAcc-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
10.	tGravityAcc-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
11.	tGravityAcc-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
12.	tGravityAcc-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
13.	tGravityAcc-std()-X	- estimatred average for this original dataset feature for each activity and each subject
14.	tGravityAcc-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
15.	tGravityAcc-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
16.	tBodyAccJerk-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
17.	tBodyAccJerk-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
18.	tBodyAccJerk-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
19.	tBodyAccJerk-std()-X	- estimatred average for this original dataset feature for each activity and each subject
20.	tBodyAccJerk-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
21.	tBodyAccJerk-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
22.	tBodyGyro-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
23.	tBodyGyro-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
24.	tBodyGyro-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
25.	tBodyGyro-std()-X	- estimatred average for this original dataset feature for each activity and each subject
26.	tBodyGyro-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
27.	tBodyGyro-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
28.	tBodyGyroJerk-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
29.	tBodyGyroJerk-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
30.	tBodyGyroJerk-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
31.	tBodyGyroJerk-std()-X	- estimatred average for this original dataset feature for each activity and each subject
32.	tBodyGyroJerk-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
33.	tBodyGyroJerk-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
34.	tBodyAccMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
35.	tBodyAccMag-std()	- estimatred average for this original dataset feature for each activity and each subject
36.	tGravityAccMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
37.	tGravityAccMag-std()	- estimatred average for this original dataset feature for each activity and each subject
38.	tBodyAccJerkMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
39.	tBodyAccJerkMag-std()	- estimatred average for this original dataset feature for each activity and each subject
40.	tBodyGyroMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
41.	tBodyGyroMag-std()	- estimatred average for this original dataset feature for each activity and each subject
42.	tBodyGyroJerkMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
43.	tBodyGyroJerkMag-std()	- estimatred average for this original dataset feature for each activity and each subject
44.	fBodyAcc-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
45.	fBodyAcc-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
46.	fBodyAcc-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
47.	fBodyAcc-std()-X	- estimatred average for this original dataset feature for each activity and each subject
48.	fBodyAcc-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
49.	fBodyAcc-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
50.	fBodyAccJerk-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
51.	fBodyAccJerk-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
52.	fBodyAccJerk-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
53.	fBodyAccJerk-std()-X	- estimatred average for this original dataset feature for each activity and each subject
54.	fBodyAccJerk-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
55.	fBodyAccJerk-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
56.	fBodyGyro-mean()-X	- estimatred average for this original dataset feature for each activity and each subject
57.	fBodyGyro-mean()-Y	- estimatred average for this original dataset feature for each activity and each subject
58.	fBodyGyro-mean()-Z	- estimatred average for this original dataset feature for each activity and each subject
59.	fBodyGyro-std()-X	- estimatred average for this original dataset feature for each activity and each subject
60.	fBodyGyro-std()-Y	- estimatred average for this original dataset feature for each activity and each subject
61.	fBodyGyro-std()-Z	- estimatred average for this original dataset feature for each activity and each subject
62.	fBodyAccMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
63.	fBodyAccMag-std()	- estimatred average for this original dataset feature for each activity and each subject
64.	fBodyBodyAccJerkMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
65.	fBodyBodyAccJerkMag-std()	- estimatred average for this original dataset feature for each activity and each subject
66.	fBodyBodyGyroMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
67.	fBodyBodyGyroMag-std()	- estimatred average for this original dataset feature for each activity and each subject
68.	fBodyBodyGyroJerkMag-mean()	- estimatred average for this original dataset feature for each activity and each subject
69.	fBodyBodyGyroJerkMag-std()	- estimatred average for this original dataset feature for each activity and each subject


The features in original dataset come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation


### License:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
