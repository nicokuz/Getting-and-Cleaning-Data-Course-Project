# Getting and Cleaning Data 
# Course Project
# By Nicolas E. Kuzminski

# Download and unzip Dataset
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Dataset.zip", method="curl")
unzip("Dataset.zip",overwrite = TRUE)

# Read Raw Data
activity_labels <- read.table("UCI HAR Dataset\\activity_labels.txt")
features_names <- read.table("UCI HAR Dataset\\features.txt") 

train_subjects <- read.table("UCI HAR Dataset\\train\\subject_train.txt")
train_activities <- read.table("UCI HAR Dataset\\train\\Y_train.txt")
train_features <- read.table("UCI HAR Dataset\\train\\X_train.txt")

test_subjects <- read.table("UCI HAR Dataset\\test\\subject_test.txt")
test_activities <- read.table("UCI HAR Dataset\\test\\Y_test.txt")
test_features <- read.table("UCI HAR Dataset\\test\\X_test.txt") 

# Merge Training and Test detail data  
subjects <- rbind(train_subjects, test_subjects) 
activities <- rbind(train_activities, test_activities)
origin <- c(rep("TRAIN",nrow(train_activities)),rep("TEST",nrow(test_activities)))
features <- rbind(train_features, test_features)

# Create the tidy dataset:
# Merging subject, activity 
tidy <- cbind(subjects, activities, origin)

# Assign their column names
names(tidy) <- c("subject","activity", "origin")

# Add descriptive labels to activities as a factor 
tidy$activity <- factor(tidy$activity, labels=activity_labels[,2])

# Factor origin
tidy$origin <- factor(tidy$origin)

# Assign names to features columns  
names(features) <- features_names[,2]

# Select features only on the mean and std
selected_features_names <- grep("\\-(mean|std)\\(", names(features))

# Merge selected features to the tidy dataset
tidy <- cbind(tidy, features[,selected_features_names])

# Simplify column names
names(tidy) <- gsub("[^a-z0-9]", "", tolower(names(tidy)))

# View the finished tidy dataset!
View(tidy)

# Create 2nd tidy dataset 
# grouping by activyt and subject, aggregating features by their mean
library(reshape2)
tidymelt <- melt(tidy, id = c("activity","subject","origin"))
tidymean <- dcast(tidymelt, activity + subject + origin ~ variable, mean)

# Prefix feature column names with an "m" for mean 
names(tidymean)[-(1:3)] <- paste0("m",names(tidymean)[-(1:3)])

# View the finished tidymean dataset!
View(tidymean)

# Export
write.table(tidymean, "TidyMeanDS.txt", row.name=FALSE)
