##Getting and Cleaning Data - Final Assignment (Mahesh S Kumar)
run_analysis <- function ()  {
##Get activity labels
activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")
##
feature_labels <- read.table("./UCI HAR Dataset/features.txt")
##get necessary features
meanStdFeatures <- grep(".*mean.*|.*std.*", feature_labels[,2])

##load test subjects
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
colnames(subject_test) <- c("subjects")
##load test activity typy
activity_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
colnames(activity_test) <- c("activitycode")
##load the test observations
obs_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
colnames(obs_test) <- feature_labels[,2]
## filter test data to only the columns we need
obs_test <- obs_test[,meanStdFeatures]
##add test data..

test_data <- cbind(subject_test, activity_test, obs_test)


##load train subjects
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
colnames(subject_train) <- c("subjects")
##load test activity typy
activity_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
colnames(activity_train) <- c("activitycode")

##load the test observations
obs_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
colnames(obs_train) <- feature_labels[,2]
## filter train data to only the columns we need
obs_train <- obs_train[,meanStdFeatures]

train_data <- cbind(subject_train, activity_train, obs_train)

##combine test and train data
alldata <- rbind(test_data, train_data)

## change activitycode from numeral to human readable string.
alldata$activitycode <- activity_labels[alldata$activitycode, 2]  

library(reshape2)
alldataMelt <- melt(alldata, id = c("subjects", "activitycode"))
alldataMean <- dcast(alldataMelt, subjects + activitycode ~ variable, mean)
#write clean data to disk
dput(alldataMean, "./UCI HAR Dataset/tidyUCI_HAR")

return (alldataMean)

}
