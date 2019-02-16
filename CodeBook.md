# Code Book
#### Transformations
The script run_analysis.R performs the 5 steps described in the course project's definition.

1. Merges the training and the test sets to create one data set.
  * I read the data files that I need for the assignment and I bind them first by columns (cbind), so that the rows fit and keep them to keep them from becoming disordered.
    * When I have the two groups of data (train & test) ready then I bind them by rows (rbind) to form an unique data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. 4 Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
