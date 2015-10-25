The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities. Subject are divided in 2 groups : Train and test. Data are available here https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### the script 'run_analysis.R'
the script 'run_analisys' does the following. 
- Merges the training and the test data.
- Keep only measurements on the mean and standard deviation. 
- add descriptive label to activity
- Create a data set with the average of each variable for each activity and each subject.


### How to run this script
1. All data are in rawdata directory
2. run RGUI : set working directory to the root of the project
3. stringr library is used in the script - Update R with stringr library if needed
4. Run the script 
>    source("run_analysis.R")
5. Result: The tidy data with means are in the txt file "tidydatamean.txt"