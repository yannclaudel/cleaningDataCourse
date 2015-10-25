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
- tBAccstdX                     : num
- tBAccstdY : num  
- tBAccstdZ                     : num  
- tGravityAccstdX               : num  
- tGravityAccstdY               : num  
- tGravityAccstdZ               : num  
- tBAccJerkstdX                 : num  
- tBAccJerkstdY                 : num  
- tBAccJerkstdZ                 : num  
- tBGyrostdX                    : num  
- tBGyrostdY                    : num  
- tBGyrostdZ                    : num  
- tBGyroJerkstdX                : num  
- tBGyroJerkstdY                : num  
- tBGyroJerkstdZ                : num  
- tBAccMagstd                   : num  
- tGravityAccMagstd             : num  
- tBAccJerkMagstd               : num  
- tBGyroMagstd                  : num  
- tBGyroJerkMagstd              : num  
- fBAccstdX                     : num  
- fBAccstdY                     : num  
- fBAccstdZ                     : num  
- fBAccJerkstdX                 : num  
- fBAccJerkstdY                 : num  
- fBAccJerkstdZ                 : num  
- fBGyrostdX                    : num  
- fBGyrostdY                    : num  
- fBGyrostdZ                    : num  
- fBAccMagstd                   : num  
- fBBodyAccJerkMagstd           : num  
- fBBodyGyroMagstd              : num  
- fBBodyGyroJerkMagstd          : num  
- tBAccmeanX                    : num  
- tBAccmeanY                    : num  
- tBAccmeanZ                    : num  
- tGravityAccmeanX              : num  
- tGravityAccmeanY              : num  
- tGravityAccmeanZ              : num  
- tBAccJerkmeanX                : num  
- tBAccJerkmeanY                : num  
- tBAccJerkmeanZ                : num  
- tBGyromeanX                   : num  
- tBGyromeanY                   : num  
- tBGyromeanZ                   : num  
- tBGyroJerkmeanX               : num  
- tBGyroJerkmeanY               : num  
- tBGyroJerkmeanZ               : num  
- tBAccMagmean                  : num  
- tGravityAccMagmean            : num  
- tBAccJerkMagmean              : num  
- tBGyroMagmean                 : num  
- tBGyroJerkMagmean             : num  
- fBAccmeanX                    : num  
- fBAccmeanY                    : num  
- fBAccmeanZ                    : num  
- fBAccmeanFreqX                : num  
- fBAccmeanFreqY                : num  
- fBAccmeanFreqZ                : num  
- fBAccJerkmeanX                : num  
- fBAccJerkmeanY                : num  
- fBAccJerkmeanZ                : num  
- fBAccJerkmeanFreqX            : num  
- fBAccJerkmeanFreqY            : num  
- fBAccJerkmeanFreqZ            : num  
- fBGyromeanX                   : num  
- fBGyromeanY                   : num  
- fBGyromeanZ                   : num  
- fBGyromeanFreqX               : num  
- fBGyromeanFreqY               : num  
- fBGyromeanFreqZ               : num  
- fBAccMagmean                  : num  
- fBAccMagmeanFreq              : num  
- fBBodyAccJerkMagmean          : num  
- fBBodyAccJerkMagmeanFreq      : num  
- fBBodyGyroMagmean             : num  
- fBBodyGyroMagmeanFreq         : num  
- fBBodyGyroJerkMagmean         : num  
- fBBodyGyroJerkMagmeanFreq     : num  
- angletBAccMeangravity         : num  
- angletBAccJerkMeangravityMean : num  
- angletBGyroMeangravityMean    : num  
- angletBGyroJerkMeangravityMean: num  
- angleXgravityMean             : num  
- angleYgravityMean             : num  
- angleZgravityMean             : num 

##### EOF 