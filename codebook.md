The code book
===========

### Initial data 

from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.
- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. 
   Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

### Data process

##### Subject : Merge the subject data from test and train sub directory 
'subject_test.txt' and 'subject_train.txt' are loaded and merge
##### Activity : Merge the activity data from test and train sub directory & add label
'y_test.txt' and 'x_train.txt' are loaded and merge
list of label is load from 'activity_labels.txt'
A new column is added to the merged data to have the right label for the activity
##### Feature : Merge the feature data from test and train sub directory with appropriate column names
The list of column names are extrated from 'rowdata/features.txt'
'X_test.txt' and 'X_train.txt' are loaded and merge with the extrated column names
##### Tidydata
Subjects, activities and features are binded
The mean by subject and activity is calulated
The result is written in a file 'tidydatamean.txt'

### Tidy data description
This data frame gives for each subject and its activities the mean of all initial measures.
Only the measurements on the mean and standard deviation for each measurement has been kept.
#####  Category 
- subject                       : int - 	id of the subject 
- type                          : chr -		train or test
- activity                      : int - 	Activity id : 1 to 6
- actLabel                      : Factor -	Activity label  
1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING

#####  Measures 'features_info.txt': Shows information about the variables used on the feature vector.
- tBAccstdX                     : num - time - mean(standard deviation) 
- tBAccstdY                     : num   - time - mean(standard deviation)
- tBAccstdZ                     : num   - time - mean(standard deviation)
- tGravityAccstdX               : num   - time - mean(standard deviation)
- tGravityAccstdY               : num   - time - mean(standard deviation)
- tGravityAccstdZ               : num   - time - mean(standard deviation)
- tBAccJerkstdX                 : num   - time - mean(standard deviation)
- tBAccJerkstdY                 : num   - time - mean(standard deviation)
- tBAccJerkstdZ                 : num   - time - mean(standard deviation)
- tBGyrostdX                    : num   - time - mean(standard deviation)
- tBGyrostdY                    : num   - time - mean(standard deviation)
- tBGyrostdZ                    : num   - time - mean(standard deviation)
- tBGyroJerkstdX                : num   - time - mean(standard deviation)
- tBGyroJerkstdY                : num   - time - mean(standard deviation)
- tBGyroJerkstdZ                : num   - time - mean(standard deviation)
- tBAccMagstd                   : num   - time - mean(standard deviation)
- tGravityAccMagstd             : num   - time - mean(standard deviation)
- tBAccJerkMagstd               : num   - time - mean(standard deviation)
- tBGyroMagstd                  : num   - time - mean(standard deviation)
- tBGyroJerkMagstd              : num   - time - mean(standard deviation)
- fBAccstdX                     : num   - frequency - mean(standard deviation)
- fBAccstdY                     : num   - frequency - mean(standard deviation)
- fBAccstdZ                     : num   - frequency - mean(standard deviation)
- fBAccJerkstdX                 : num   - frequency - mean(standard deviation)
- fBAccJerkstdY                 : num   - frequency - mean(standard deviation)
- fBAccJerkstdZ                 : num   - frequency - mean(standard deviation)
- fBGyrostdX                    : num   - frequency - mean(standard deviation)
- fBGyrostdY                    : num   - frequency - mean(standard deviation)
- fBGyrostdZ                    : num   - frequency - mean(standard deviation)
- fBAccMagstd                   : num   - frequency - mean(standard deviation)
- fBBodyAccJerkMagstd           : num   - frequency - mean(standard deviation)
- fBBodyGyroMagstd              : num   - frequency - mean(standard deviation)
- fBBodyGyroJerkMagstd          : num   - frequency - mean(standard deviation)
- tBAccmeanX                    : num   - frequency - mean(standard deviation)
- tBAccmeanY                    : num   - frequency - mean(standard deviation)
- tBAccmeanZ                    : num   - frequency - mean(standard deviation)
- tGravityAccmeanX              : num   - time - mean(mean)
- tGravityAccmeanY              : num   - time - mean(mean)
- tGravityAccmeanZ              : num   - time - mean(mean)
- tBAccJerkmeanX                : num   - time - mean(mean)
- tBAccJerkmeanY                : num   - time - mean(mean)
- tBAccJerkmeanZ                : num   - time - mean(mean)
- tBGyromeanX                   : num   - time - mean(mean)
- tBGyromeanY                   : num   - time - mean(mean)
- tBGyromeanZ                   : num   - time - mean(mean)
- tBGyroJerkmeanX               : num   - time - mean(mean)
- tBGyroJerkmeanY               : num   - time - mean(mean)
- tBGyroJerkmeanZ               : num   - time - mean(mean)
- tBAccMagmean                  : num   - time - mean(mean)
- tGravityAccMagmean            : num   - time - mean(mean)
- tBAccJerkMagmean              : num   - time - mean(mean)
- tBGyroMagmean                 : num   - time - mean(mean)
- tBGyroJerkMagmean             : num   - time - mean(mean)
- fBAccmeanX                    : num   - frequency - mean(mean)
- fBAccmeanY                    : num   - frequency - mean(mean)
- fBAccmeanZ                    : num   - frequency - mean(mean)
- fBAccmeanFreqX                : num   - frequency - mean(mean)
- fBAccmeanFreqY                : num   - frequency - mean(mean)
- fBAccmeanFreqZ                : num   - frequency - mean(mean)
- fBAccJerkmeanX                : num   - frequency - mean(mean)
- fBAccJerkmeanY                : num   - frequency - mean(mean)
- fBAccJerkmeanZ                : num   - frequency - mean(mean)
- fBAccJerkmeanFreqX            : num   - frequency - mean(mean)
- fBAccJerkmeanFreqY            : num   - frequency - mean(mean)
- fBAccJerkmeanFreqZ            : num   - frequency - mean(mean)
- fBGyromeanX                   : num   - frequency - mean(mean)
- fBGyromeanY                   : num   - frequency - mean(mean)
- fBGyromeanZ                   : num   - frequency - mean(mean)
- fBGyromeanFreqX               : num   - frequency - mean(mean)
- fBGyromeanFreqY               : num   - frequency - mean(mean)
- fBGyromeanFreqZ               : num   - frequency - mean(mean)
- fBAccMagmean                  : num   - frequency - mean(mean)
- fBAccMagmeanFreq              : num   - frequency - mean(mean)
- fBBodyAccJerkMagmean          : num   - frequency - mean(mean)
- fBBodyAccJerkMagmeanFreq      : num   - frequency - mean(mean)
- fBBodyGyroMagmean             : num   - frequency - mean(mean)
- fBBodyGyroMagmeanFreq         : num   - frequency - mean(mean)
- fBBodyGyroJerkMagmean         : num   - frequency - mean(mean)
- fBBodyGyroJerkMagmeanFreq     : num   - frequency - mean(mean)
- angletBAccMeangravity         : num   - angle - mean(mean)
- angletBAccJerkMeangravityMean : num   - angle - mean(mean)
- angletBGyroMeangravityMean    : num   - angle - mean(mean)
- angletBGyroJerkMeangravityMean: num   - angle - mean(mean)
- angleXgravityMean             : num   - angle - mean(mean)
- angleYgravityMean             : num   - angle - mean(mean)
- angleZgravityMean             : num   - angle - mean(mean)

##### EOF 