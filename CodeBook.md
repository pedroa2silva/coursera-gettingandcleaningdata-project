# Codebook
Pedro Silva  
2015-09-24  

## Project Description
The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit:

1) a tidy data set as described below,
2) a link to a Github repository with your script for performing the analysis, and
3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.  

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


##Study design and data processing
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.  


###Collection of the raw data
Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

###Notes on the original (raw) data 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

* tBodyAcc-XYZ
* tGravityAcc-XYZ
* tBodyAccJerk-XYZ
* tBodyGyro-XYZ
* tBodyGyroJerk-XYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAcc-XYZ
* fBodyAccJerk-XYZ
* fBodyGyro-XYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

* mean(): Mean value
* std(): Standard deviation
* mad(): Median absolute deviation
* max(): Largest value in array
* min(): Smallest value in array
* sma(): Signal magnitude area
* energy(): Energy measure. Sum of the squares divided by the number of values. 
* iqr(): Interquartile range 
* entropy(): Signal entropy
* arCoeff(): Autorregresion coefficients with Burg order equal to 4
* correlation(): correlation coefficient between two signals
* maxInds(): index of the frequency component with largest magnitude
* meanFreq(): Weighted average of the frequency components to obtain a mean frequency
* skewness(): skewness of the frequency domain signal 
* kurtosis(): kurtosis of the frequency domain signal 
* bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
* angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

* gravityMean
* tBodyAccMean
* tBodyAccJerkMean
* tBodyGyroMean
* tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'

The dataset includes the following files:

- 'README.txt'
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

For each record it is provided:

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

Notes:

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.


##Creating the tidy datafile
To create the tidy datafile, the following steps are applied:

1) Obtain the data from the source and save it uncompressed in local storage
2) Read the data in the relevant files into data frames
3) Merge the train and test sets and assign colunm names
4) Extract the Mean and Std colunms from the merged set toghethger with the activity and subjects data
5) Transform the labels to have meaningful variable names
6) Create a second tidy data frame with average of each variable by activity and subject a write it to a file


## Data transformation
The data obtained from the raw data is is processed with the script run_analysis.R in oder to create a tidy data set. The transformations of the data are processed in the following order:


###Guide to create the tidy data file

1) Obtain de data from the UCI source
2) The data file is uncompressed to a local folder
3) The following data files are read into data frames:

* train/X_train.txt - Observations train set
* train/y_train.txt - Activity train set
* train/subject_train.txt - Subjects Train set
* test/X_test.txt - Observations test set
* test/y_test.txt - Activity Test set
* test/subject_test.txt - Subjects Teset

4) The train and test sets are merged, creating a data frame that contains all the variables data, along with the activities and subjects data
5) The data lables of the variables is read from the features.txt file and are assigned to the data frame, also adding the labels for the activity and subject columns
6) A new data frame is created by selecting all the Mean and Std columns as well as the activity and subject columns
7) The tidy data set is finaly obtaind by transforming the labels names to obtain more meaningful names for the variables
8) A second tidy data set is calculed by calculating the average of each variable for each activity and subject
9) The second tidy data set is writen to a file named tidydata.txt


##Description of the variables in the tinydata.txt file

The tidy data set file will 88 variables and 10299 observations.
Two dimension variables are composed of:

* SubjectID: Identifier of the subject who carried out the experiment (1 to 30)
* ActivityID: Activity label (Activity): WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

A 86 feature vector with time and frequency domain signal variables (numeric), augmented with mean and standard deviation estimations:

* TimeBodyAccMean-X: Time - Body Acceleration Mean - X Axis
* TimeBodyAccMean-Y: Time - Body Acceleration Mean - Y Axis
* TimeBodyAccMean-Z: Time - Body Acceleration Mean - Z Axis
* TimeBodyAccStdDev-X: Time - Body Acceleration Standard Deviation - X Axis
* TimeBodyAccStdDev-Y: Time - Body Acceleration Standard Deviation - Y Axis
* TimeBodyAccStdDev-Z: Time - Body Acceleration Standard Deviation - Z Axis
* TimeGravityAccMean-X: Time - Body Gravity Mean - X Axis
* TimeGravityAccMean-Y: Time - Body Gravity Mean - Y Axis
* TimeGravityAccMean-Z: Time - Body Gravity Mean - Z Axis
* TimeGravityAccStdDev-X: Time - Body Gravity Standard Deviation - X Axis
* TimeGravityAccStdDev-Y: Time - Body Gravity Standard Deviation - Y Axis
* TimeGravityAccStdDev-Z: Time - Body Gravity Standard Deviation - Z Axis
* TimeBodyAccJerkMean-X: Time - Body Acceleration Jerk Mean - X Axis
* TimeBodyAccJerkMean-Y: Time - Body Acceleration Jerk Mean - Y Axis
* TimeBodyAccJerkMean-Z: Time - Body Acceleration Jerk Mean - Z Axis
* TimeBodyAccJerkStdDev-X: Time - Body Acceleration Jerk Standard Deviation - X Axis
* TimeBodyAccJerkStdDev-Y: Time - Body Acceleration Jerk Standard Deviation - Y Axis
* TimeBodyAccJerkStdDev-Z: Time - Body Acceleration Jerk Standard Deviation - Z Axis
* TimeBodyGyroMean-X: Time - Body Gyroscope Mean - X Axis
* TimeBodyGyroMean-Y: Time - Body Gyroscope Mean - Y Axis
* TimeBodyGyroMean-Z: Time - Body Gyroscope Mean - Z Axis
* TimeBodyGyroStdDev-X: Time - Body Gyroscope Standard Deviation - X Axis
* TimeBodyGyroStdDev-Y: Time - Body Gyroscope Standard Deviation - Y Axis
* TimeBodyGyroStdDev-Z: Time - Body Gyroscope Standard Deviation - Z Axis
* TimeBodyGyroJerkMean-X: Time - Body Gyroscope Jerk Mean - X Axis
* TimeBodyGyroJerkMean-Y: Time - Body Gyroscope Jerk Mean - Y Axis
* TimeBodyGyroJerkMean-Z: Time - Body Gyroscope Jerk Mean - Z Axis
* TimeBodyGyroJerkStdDev-X: Time - Body Gyroscope Jerk Standard Deviation - X Axis
* TimeBodyGyroJerkStdDev-Y: Time - Body Gyroscope Jerk Standard Deviation - Y Axis
* TimeBodyGyroJerkStdDev-Z: Time - Body Gyroscope Jerk Standard Deviation - Z Axis
* TimeBodyAccMagnitudeMean: Time - Body Acceleration Magnitude Mean - Z Axis
* TimeBodyAccMagnitudeStdDev: Time - Body Acceleration Magnitude Standard Deviation - Z Axis
* TimeGravityAccMagnitudeMean: Time - Body Acceleration Magnitude Mean - Z Axis
* TimeGravityAccMagnitudeStdDev: Time - Body Acceleration Magnitude Standard Deviation - Z Axis
* TimeBodyAccJerkMagnitudeMean: Time - Body Acceleration Jerk Magnitude Mean - Z Axis
* TimeBodyAccJerkMagnitudeStdDev: Time - Body Acceleration Jerk Magnitude Standard Deviation - Z Axis
* TimeBodyGyroMagnitudeMean: Time - Body Gyroscope Magnitude Mean - Z Axis
* TimeBodyGyroMagnitudeStdDev: Time - Body Gyroscope Magnitude Standard Deviation - Z Axis
* TimeBodyGyroJerkMagnitudeMean: Time - Body Gyroscope Jerk Magnitude Mean - Z Axis
* TimeBodyGyroJerkMagnitudeStdDev: Time - Body Gyroscope Jerk Magnitude Standard Deviation - Z Axis
* FreqBodyAccMean-X: Frequency - Body Acceleration Mean - X Axis
* FreqBodyAccMean-Y: Frequency - Body Acceleration Mean - Y Axis
* FreqBodyAccMean-Z: Frequency - Body Acceleration Mean - Z Axis
* FreqBodyAccStdDev-X: Frequency - Body Acceleration Standard Deviation - X Axis
* FreqBodyAccStdDev-Y: Frequency - Body Acceleration Standard Deviation - Y Axis
* FreqBodyAccStdDev-Z: Frequency - Body Acceleration Standard Deviation - Z Axis
* FreqBodyAccMeanFreq-X: Frequency - Body Acceleration Mean Frequency - X Axis
* FreqBodyAccMeanFreq-Y: Frequency - Body Acceleration Mean Frequency - Y Axis
* FreqBodyAccMeanFreq-Z: Frequency - Body Acceleration Mean Frequency - Z Axis
* FreqBodyAccJerkMean-X: Frequency - Body Acceleration Jerk Mean - X Axis
* FreqBodyAccJerkMean-Y: Frequency - Body Acceleration Jerk Mean - Y Axis
* FreqBodyAccJerkMean-Z: Frequency - Body Acceleration Jerk Mean - Z Axis
* FreqBodyAccJerkStdDev-X: Frequency - Body Acceleration Jerk Standard Deviation - X Axis
* FreqBodyAccJerkStdDev-Y: Frequency - Body Acceleration Jerk Standard Deviation - Y Axis
* FreqBodyAccJerkStdDev-Z: Frequency - Body Acceleration Jerk Standard Deviation - Z Axis
* FreqBodyAccJerkMeanFreq-X: Frequency - Body Acceleration Jerk Mean Frequency - X Axis
* FreqBodyAccJerkMeanFreq-Y: Frequency - Body Acceleration Jerk Mean Frequency - Y Axis
* FreqBodyAccJerkMeanFreq-Z: Frequency - Body Acceleration Jerk Mean Frequency - Z Axis
* FreqBodyGyroMean-X: Frequency - Body Gyroscope Mean - X Axis
* FreqBodyGyroMean-Y: Frequency - Body Gyroscope Mean - Y Axis
* FreqBodyGyroMean-Z: Frequency - Body Gyroscope Mean - Z Axis
* FreqBodyGyroStdDev-X: Frequency - Body Gyroscope Standard Deviation - X Axis
* FreqBodyGyroStdDev-Y: Frequency - Body Gyroscope Standard Deviation - Y Axis
* FreqBodyGyroStdDev-Z: Frequency - Body Gyroscope Standard Deviation - Z Axis
* FreqBodyGyroMeanFreq-X: Frequency - Body Gyroscope Mean Frequency - X Axis
* FreqBodyGyroMeanFreq-Y: Frequency - Body Gyroscope Mean Frequency - Y Axis
* FreqBodyGyroMeanFreq-Z: Frequency - Body Gyroscope Mean Frequency - Z Axis
* FreqBodyAccMagnitudeMean: Frequency - Body Acceleration Magnitude Mean 
* FreqBodyAccMagnitudeStdDev: Frequency - Body Acceleration Magnitude Standard Deviation 
* FreqBodyAccMagnitudeMeanFreq: Frequency - Body Acceleration Magnitude Mean Frequency
* FreqBodyAccJerkMagnitudeMean: Frequency - Body Acceleration Magnitude Mean 
* FreqBodyAccJerkMagnitudeStdDev: Frequency - Body Acceleration Jerk Magnitude Standard Deviation 
* FreqBodyAccJerkMagnitudeMeanFreq: Frequency - Body Acceleration Jerk Magnitude Mean Frequency
* FreqBodyGyroMagnitudeMean: Frequency - Body Gyroscope Magnitude Mean 
* FreqBodyGyroMagnitudeStdDev: Frequency - Body Gyroscope Magnitude Standard Deviation 
* FreqBodyGyroMagnitudeMeanFreq: Frequency - Body Gyroscope Magnitude Mean Frequency
* FreqBodyGyroJerkMagnitudeMean: Frequency - Body Gyroscope Jerk Magnitude Mean 
* FreqBodyGyroJerkMagnitudeStdDev: Frequency - Body Gyroscope Jerk Magnitude Standard Deviation 
* FreqBodyGyroJerkMagnitudeMeanFreq: Frequency - Body Gyroscope Jerk Magnitude Mean Frequency
* Angle(tBodyAccMean,Gravity): Angle - Body Acceleration Gravity Mean
* Angle(tBodyAccJerkMean),GravityMean): Angle - Body Acceleration/Jerk Gravity Gravity Mean
* Angle(tBodyGyroMean,GravityMean): Angle - Body Gyroscope Gravity/Gravity Mean
* Angle(tBodyGyroJerkMean,GravityMean): Angle - Body Gyroscope Jerk/Gravity Mean
* Angle(X,GravityMean): Angle - X Axis/Gravity Mean 
* Angle(Y,GravityMean): Angle - Y Axis/Gravity Mean 
* Angle(Z,GravityMean): Angle - Z Axis/Gravity Mean 


##Sources
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

[2] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012 

[3] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra, Jorge L. Reyes-Ortiz. Energy Efficient Smartphone-Based Activity Recognition using Fixed-Point Arithmetic. Journal of Universal Computer Science. Special Issue in Ambient Assisted Living: Home Care. Volume 19, Issue 9. May 2013

[4] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. 4th International Workshop of Ambient Assited Living, IWAAL 2012, Vitoria-Gasteiz, Spain, December 3-5, 2012. Proceedings. Lecture Notes in Computer Science 2012, pp 216-223. 

[5] Jorge Luis Reyes-Ortiz, Alessandro Ghio, Xavier Parra-Llanas, Davide Anguita, Joan Cabestany, Andreu Català. Human Activity and Motion Disorder Recognition: Towards Smarter Interactive Cognitive Environments. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.
