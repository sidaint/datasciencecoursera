# CODEBOOK

Getting and Cleaning Data Project

Additional information about the variables, data and transformations used in the project.

# Source Data
Data + Description can be found here [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)


# Variables 
->  `subject`  - This is an integer datatype. With 30 different sets recorded

->  `activity` - This is a string datatype. And this describes the activity that they were performing while the measurements were being                    recorded
               1. LAYING
               2. SITTING
               3. STANDING
               4. WALKING
               5. WALKING DOWNSTAIRS
               6. WALKING UPSTAIRS
               
               
->Data Set Information
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.


# Measurements
These variables are the mean values for the measurements based on the subject and the activity.

"tBodyAccmeanX" 

"tBodyAccmeanY"

"tBodyAccmeanZ"

"tBodyAccstdX" 

"tBodyAccstdY"

"tBodyAccstdZ"

"tGravityAccmeanX"

"tGravityAccmeanY" 

"tGravityAccmeanZ"

"tGravityAccstdX" 

"tGravityAccstdY"

"tGravityAccstdZ"

"tBodyAccJerkmeanX"

"tBodyAccJerkmeanY" 

"tBodyAccJerkmeanZ"

"tBodyAccJerkstdX"

"tBodyAccJerkstdY"

"tBodyAccJerkstdZ"

"tBodyGyromeanX"

"tBodyGyromeanY"

"tBodyGyromeanZ"

"tBodyGyrostdX"

"tBodyGyrostdY"

"tBodyGyrostdZ"

"tBodyGyroJerkmeanX" 

"tBodyGyroJerkmeanY" 

"tBodyGyroJerkmeanZ"

"tBodyGyroJerkstdX"

"tBodyGyroJerkstdY"

"tBodyGyroJerkstdZ"

"tBodyAccMagmean"

"tBodyAccMagstd"

"tGravityAccMagmean"

"tGravityAccMagstd" 

"tBodyAccJerkMagmean"

"tBodyAccJerkMagstd" 

"tBodyGyroMagmean"

"tBodyGyroMagstd"

"tBodyGyroJerkMagmean"

"tBodyGyroJerkMagstd"

"fBodyAccmeanX"

"fBodyAccmeanY" 

"fBodyAccmeanZ" 

"fBodyAccstdX"

"fBodyAccstdY"

"fBodyAccstdZ"

"fBodyAccJerkmeanX"

"fBodyAccJerkmeanY" 

"fBodyAccJerkmeanZ"

"fBodyAccJerkstdX"

"fBodyAccJerkstdY"

"fBodyAccJerkstdZ"

"fBodyGyromeanX" 

"fBodyGyromeanY"

"fBodyGyromeanZ" 

"fBodyGyrostdX"

"fBodyGyrostdY"

"fBodyGyrostdZ"

"fBodyAccMagmean"

"fBodyAccMagstd"

"fBodyBodyAccJerkMagmean"

"fBodyBodyAccJerkMagstd"

"fBodyBodyGyroMagmean" 

"fBodyBodyGyroMagstd"

"fBodyBodyGyroJerkMagmean"

"fBodyBodyGyroJerkMagstd"
               
