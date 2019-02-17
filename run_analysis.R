


## Step 1.
## Merges the training and the test sets to create one data set.

## I read the data files that I need for the assignment and I bind
## them first by columns, so that the rows fit and keep them to 
## keep them from becoming disordered.

## For test data

subject_test <- read.table("./test/subject_test.txt")
Y_test <- read.table("./test/Y_test.txt")
X_test <- read.table("./test/X_test.txt")
testData <- cbind(subject_test, Y_test, X_test)

## For train data

subject_train <- read.table("./train/subject_train.txt")
Y_train <- read.table("./train/Y_train.txt")
X_train <- read.table("./train/X_train.txt")
trainData <- cbind(subject_train, Y_train, X_train)

## When I have the two groups of data (train & test) ready then I
## bind them by rows to form an unique data set.

data <- rbind(trainData, testData)

## Step 2.
## Extracts only the measurements on the mean and standard deviation
## for each measurement.

## For this step, I read the feature´s file and use it to change the
## names of my data set´s variables, keeping the first two variables
## for subject and activity.

features <- read.table("./features.txt")
features <- as.character(features$V2)
newnames <- c("subject", "activity", features)
names(data) = newnames

## Then, I use de grep function to select only those variables that
## contain "mean()" or "std()", and I subset only those variables
## in my data set. As meanFreq is defined as Weighted average of the
## frequency components to obtain a mean frequency so I think I 
## shouldn´t add them as variables.

names_mean_std <- features[grep("(mean|std)\\(\\)", features)]
data <- data[, c("subject", "activity", names_mean_std)]

## Step 3.
## Uses descriptive activity names to name the activities in the 
## data set

## For this step I read the acivity_labels´s file and use it to
## rename the content of the activity´s variable according to the data.
## I also convert the content to lowercase to clarify the data.

activities <- read.table("./activity_labels.txt")
activities <- tolower(as.character(activities$V2))
data$activity <- activities[data$activity]

## Step 4.
## Appropriately labels the data set with descriptive variable names.

## For this step I convert the variables´s names leaving only the 
## alpha numeric characters and converting them to lowercase as the
## tidy data´s rules say with the gsub function.

appropiatenames <- tolower(gsub("[[:punct:]]", "", names(data)))
names(data) <- appropiatenames

## Step 5.
## From the data set in step 4, creates a second, independent tidy data
## set with the average of each variable for each activity and each 
## subject.

## For the last step and after call the dplyr package, I group the data
## set by subject and activity to then get the average of each, activity
## and subject, with the sumarise_all function.

library(dplyr)
groupedactsub <- group_by(data, activity, subject)
tidydata <- summarise_all(groupedactsub,funs(mean))
        
write.table(tidydata, "tidy_data.txt", row.names = FALSE)


