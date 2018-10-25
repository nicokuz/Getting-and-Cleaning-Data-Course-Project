*Course Project for the  
*Getting and Cleaning Data Course 
*by the John Hopkins University
*on Coursera
*by Nicolas E. Kuzminski
*Created on 2018-10-25

This is the Code Book corresponding to the file "TidyMeanDS.txt" produced by the 'run_analysis.R' script, as described on the 'README.md' file, from this Git Hub respository: https://github.com/nicokuz/Getting-and-Cleaning-Data-Course-Project

The file "TidyMeanDS.txt" is a text formatted file with space separated values, mainly numeric decimal values, and some strings values, which are double quoted. It has a header containing the column labels as its first row.

Each row is an aggregation by activity and subject, averaging the original input features on the mean and standard deviations measured. 

The study was carried out with 6 activities over 30 subjects, so the files has 180 aggregated rows (6*30). 
For each of these activity-subjects pairs, the features aggregated (averaged) are 66.

So, the columns in this file are as follows:

 1 activity                  : string identifing the measured activity (LAYING,SITTING,STANDING,WALKING,WALKING_DOWNSTAIRS, WALKING_UPSTAIRS)
 2 subject                   : numeric integer identifing the subject observed (1 to 30)
 3 origin                    : string identifing to which dataset the subject was original assigned (TEST or TRAIN)

 And the feature columns each as a numerical decimal mean of the original feature dataset, averaged for each activity-subject pair:
 
 4 mtbodyaccmeanx            : Mean of tBodyAcc-mean()-X          
 5 mtbodyaccmeany            : Mean of tBodyAcc-mean()-Y          
 6 mtbodyaccmeanz            : Mean of tBodyAcc-mean()-Z          
 7 mtbodyaccstdx             : Mean of tBodyAcc-std()-X           
 8 mtbodyaccstdy             : Mean of tBodyAcc-std()-Y           
 9 mtbodyaccstdz             : Mean of tBodyAcc-std()-Z           
10 mtgravityaccmeanx         : Mean of tGravityAcc-mean()-X       
11 mtgravityaccmeany         : Mean of tGravityAcc-mean()-Y       
12 mtgravityaccmeanz         : Mean of tGravityAcc-mean()-Z       
13 mtgravityaccstdx          : Mean of tGravityAcc-std()-X        
14 mtgravityaccstdy          : Mean of tGravityAcc-std()-Y        
15 mtgravityaccstdz          : Mean of tGravityAcc-std()-Z        
16 mtbodyaccjerkmeanx        : Mean of tBodyAccJerk-mean()-X      
17 mtbodyaccjerkmeany        : Mean of tBodyAccJerk-mean()-Y      
18 mtbodyaccjerkmeanz        : Mean of tBodyAccJerk-mean()-Z      
19 mtbodyaccjerkstdx         : Mean of tBodyAccJerk-std()-X       
20 mtbodyaccjerkstdy         : Mean of tBodyAccJerk-std()-Y       
21 mtbodyaccjerkstdz         : Mean of tBodyAccJerk-std()-Z       
22 mtbodygyromeanx           : Mean of tBodyGyro-mean()-X         
23 mtbodygyromeany           : Mean of tBodyGyro-mean()-Y         
24 mtbodygyromeanz           : Mean of tBodyGyro-mean()-Z         
25 mtbodygyrostdx            : Mean of tBodyGyro-std()-X          
26 mtbodygyrostdy            : Mean of tBodyGyro-std()-Y          
27 mtbodygyrostdz            : Mean of tBodyGyro-std()-Z          
28 mtbodygyrojerkmeanx       : Mean of tBodyGyroJerk-mean()-X     
29 mtbodygyrojerkmeany       : Mean of tBodyGyroJerk-mean()-Y     
30 mtbodygyrojerkmeanz       : Mean of tBodyGyroJerk-mean()-Z     
31 mtbodygyrojerkstdx        : Mean of tBodyGyroJerk-std()-X      
32 mtbodygyrojerkstdy        : Mean of tBodyGyroJerk-std()-Y      
33 mtbodygyrojerkstdz        : Mean of tBodyGyroJerk-std()-Z      
34 mtbodyaccmagmean          : Mean of tBodyAccMag-mean()         
35 mtbodyaccmagstd           : Mean of tBodyAccMag-std()          
36 mtgravityaccmagmean       : Mean of tGravityAccMag-mean()      
37 mtgravityaccmagstd        : Mean of tGravityAccMag-std()       
38 mtbodyaccjerkmagmean      : Mean of tBodyAccJerkMag-mean()     
39 mtbodyaccjerkmagstd       : Mean of tBodyAccJerkMag-std()      
40 mtbodygyromagmean         : Mean of tBodyGyroMag-mean()        
41 mtbodygyromagstd          : Mean of tBodyGyroMag-std()         
42 mtbodygyrojerkmagmean     : Mean of tBodyGyroJerkMag-mean()    
43 mtbodygyrojerkmagstd      : Mean of tBodyGyroJerkMag-std()     
44 mfbodyaccmeanx            : Mean of fBodyAcc-mean()-X          
45 mfbodyaccmeany            : Mean of fBodyAcc-mean()-Y          
46 mfbodyaccmeanz            : Mean of fBodyAcc-mean()-Z          
47 mfbodyaccstdx             : Mean of fBodyAcc-std()-X           
48 mfbodyaccstdy             : Mean of fBodyAcc-std()-Y           
49 mfbodyaccstdz             : Mean of fBodyAcc-std()-Z           
50 mfbodyaccjerkmeanx        : Mean of fBodyAccJerk-mean()-X      
51 mfbodyaccjerkmeany        : Mean of fBodyAccJerk-mean()-Y      
52 mfbodyaccjerkmeanz        : Mean of fBodyAccJerk-mean()-Z      
53 mfbodyaccjerkstdx         : Mean of fBodyAccJerk-std()-X       
54 mfbodyaccjerkstdy         : Mean of fBodyAccJerk-std()-Y       
55 mfbodyaccjerkstdz         : Mean of fBodyAccJerk-std()-Z       
56 mfbodygyromeanx           : Mean of fBodyGyro-mean()-X         
57 mfbodygyromeany           : Mean of fBodyGyro-mean()-Y         
58 mfbodygyromeanz           : Mean of fBodyGyro-mean()-Z         
59 mfbodygyrostdx            : Mean of fBodyGyro-std()-X          
60 mfbodygyrostdy            : Mean of fBodyGyro-std()-Y          
61 mfbodygyrostdz            : Mean of fBodyGyro-std()-Z          
62 mfbodyaccmagmean          : Mean of fBodyAccMag-mean()         
63 mfbodyaccmagstd           : Mean of fBodyAccMag-std()          
64 mfbodybodyaccjerkmagmean  : Mean of fBodyBodyAccJerkMag-mean() 
65 mfbodybodyaccjerkmagstd   : Mean of fBodyBodyAccJerkMag-std()  
66 mfbodybodygyromagmean     : Mean of fBodyBodyGyroMag-mean()    
67 mfbodybodygyromagstd      : Mean of fBodyBodyGyroMag-std()     
68 mfbodybodygyrojerkmagmean : Mean of fBodyBodyGyroJerkMag-mean()
69 mfbodybodygyrojerkmagstd  : Mean of fBodyBodyGyroJerkMag-std()