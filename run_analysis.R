library(stringr)

# load test subject and add a column type with test as value
subject_test <- read.csv(file="rowdata/test/subject_test.txt", header=FALSE, sep="",col.names="subject")
subject_test$type="test"
# load train subject and add a column type with train as value
subject_train <- read.csv(file="rowdata/train/subject_train.txt", header=FALSE, sep="",col.names="subject")
subject_train$type="train"
# merge test and train subject 
subject <- rbind(subject_test,subject_train)

# load test activity 
y_test <- read.csv(file="rowdata/test/y_test.txt", header=FALSE, sep="",col.names="activity")
# load train activity 
y_train <- read.csv(file="rowdata/train/y_train.txt", header=FALSE, sep="",col.names="activity")
# merge test and train subject 
y_all <- rbind(y_test,y_train)
# add label activity 
labels<-read.csv(file="rowdata/activity_labels.txt", header=FALSE, sep="",col.names=c("id","actLabel"))
activity <- merge(y_all,labels,by.x="activity",by.y="id")


# load feature columns name and clean names 
features <- read.csv(file="rowdata/features.txt", header=FALSE, sep="")
cols<-str_replace_all(features[,"V2"],"\\(","")
cols<-str_replace_all(cols,"\\)","")
cols<-str_replace_all(cols,"-","")
cols<-str_replace_all(cols,",","")
cols<-str_replace_all(cols,"fBody","fB")
cols<-str_replace_all(cols,"tBody","tB")

# load test features 
x_test <- read.csv(file="rowdata/test/X_test.txt", header=FALSE, sep="",col.names=cols)
# load train features 
x_train <- read.csv(file="rowdata/train/X_train.txt", header=FALSE, sep="",col.names=cols)
# merge test and train features 
x_all <- rbind(x_test,x_train)
# keep conly mean and std measures
measures<-x_all[,c(grep("std",cols,ignore.case=TRUE),grep("mean",cols,ignore.case=TRUE))]

# bind all data
tidydata<-cbind(subject,activity,measures)
#calculate mean by subject and activity
tidydatamean<-aggregate(tidydata[5:90], by=c(tidydata[1:4]), FUN=mean, na.rm=TRUE)
write.table(tidydatamean,"tidydatamean.txt",row.name=FALSE)
