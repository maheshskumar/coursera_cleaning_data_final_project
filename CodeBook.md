---
title: "codebook.md"
author: "Mahesh Kumar"
date: "2/6/2018"
output: html_document
---


## Getting and Cleaning Data - Final Project CodeBook

This document describes the data variables used in the project and any transformations that were completed on those. 


## Primary Variables

     Subjects - An identifier for each of the 30 subjects that participated in the study.  Subjects      are numbered 1 through 30.
     ActivityCode - An identifier for the type of activity.  
          ActivityCode factor values are:
          WALKING
          WALKING_UPSTAIRS
          WALKING_DOWNSTAIRS
          SITTING
          STANDING
          LAYING

## Metrics

A summary of the average metrics that were obtained in the final dataset.  For 

     tBodyAcc-mean()-X                 tBodyAcc-mean()-Y               
     tBodyAcc-mean()-Z                 tBodyAcc-std()-X                
     tBodyAcc-std()-Y                  tBodyAcc-std()-Z                
     tGravityAcc-mean()-X              tGravityAcc-mean()-Y            
     tGravityAcc-mean()-Z              tGravityAcc-std()-X             
     tGravityAcc-std()-Y               tGravityAcc-std()-Z             
     tBodyAccJerk-mean()-X             tBodyAccJerk-mean()-Y           
     tBodyAccJerk-mean()-Z             tBodyAccJerk-std()-X            
     tBodyAccJerk-std()-Y              tBodyAccJerk-std()-Z            
     tBodyGyro-mean()-X                tBodyGyro-mean()-Y              
     tBodyGyro-mean()-Z                tBodyGyro-std()-X               
     tBodyGyro-std()-Y                 tBodyGyro-std()-Z               
     tBodyGyroJerk-mean()-X            tBodyGyroJerk-mean()-Y          
     tBodyGyroJerk-mean()-Z            tBodyGyroJerk-std()-X           
     tBodyGyroJerk-std()-Y             tBodyGyroJerk-std()-Z           
     tBodyAccMag-mean()                tBodyAccMag-std()               
     tGravityAccMag-mean()             tGravityAccMag-std()            
     tBodyAccJerkMag-mean()            tBodyAccJerkMag-std()           
     tBodyGyroMag-mean()               tBodyGyroMag-std()              
     tBodyGyroJerkMag-mean()           tBodyGyroJerkMag-std()          
     fBodyAcc-mean()-X                 fBodyAcc-mean()-Y               
     fBodyAcc-mean()-Z                 fBodyAcc-std()-X                
     fBodyAcc-std()-Y                  fBodyAcc-std()-Z                
     fBodyAcc-meanFreq()-X             fBodyAcc-meanFreq()-Y           
     fBodyAcc-meanFreq()-Z             fBodyAccJerk-mean()-X           
     fBodyAccJerk-mean()-Y             fBodyAccJerk-mean()-Z           
     fBodyAccJerk-std()-X              fBodyAccJerk-std()-Y            
     fBodyAccJerk-std()-Z              fBodyAccJerk-meanFreq()-X       
     fBodyAccJerk-meanFreq()-Y         fBodyAccJerk-meanFreq()-Z       
     fBodyGyro-mean()-X                fBodyGyro-mean()-Y              
     fBodyGyro-mean()-Z                fBodyGyro-std()-X               
     fBodyGyro-std()-Y                 fBodyGyro-std()-Z               
     fBodyGyro-meanFreq()-X            fBodyGyro-meanFreq()-Y          
     fBodyGyro-meanFreq()-Z            fBodyAccMag-mean()              
     fBodyAccMag-std()                 fBodyAccMag-meanFreq()          
     fBodyBodyAccJerkMag-mean()        fBodyBodyAccJerkMag-std()       
     fBodyBodyAccJerkMag-meanFreq()    fBodyBodyGyroMag-mean()         
     fBodyBodyGyroMag-std()            fBodyBodyGyroMag-meanFreq()     
     fBodyBodyGyroJerkMag-mean()       fBodyBodyGyroJerkMag-std()      
     fBodyBodyGyroJerkMag-meanFreq() 

## Transformations
     The key transformations that were done for this dataset were as follows:

1. All ActivityCodes were changed from their numeric values to their human readable text      representation.  These were retained as factor variables for easy processing downstream.
2. Measurements that were not related to mean or standard deviation were removed.  Mean and Standard deviation columns were identified through the use of RegEx after examining the column names.
3. Melted data - in order to summarize the data per subject and per activity type the resultant merged dataset was melted using Subjects and ActivityCode as paramenters.  
4. Average on Melted data - using dcast, we computed an average for each subject, each activity type and each metric of data.