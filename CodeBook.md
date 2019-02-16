# Code Book
#### Transformations
The script run_analysis.R performs the 5 steps described in the course project's definition.

1. Merges the training and the test sets to create one data set.
    * I read the data files that I need for the assignment and I bind them first by columns (cbind), so that the rows fit and keep them to keep them from becoming disordered.
    * When I have the two groups of data (train & test) ready then I bind them by rows (rbind) to form an unique data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
    * For this step, I read the feature´s file and use it to change the names of my data set´s variables, keeping the first two variables for subject and activity.
    * Then, I use de grep function to select only those variables that contain "mean()" or "std()", and I subset only those variables in my data set.
1. Uses descriptive activity names to name the activities in the data set
    * For this step I read the acivity_labels´s file and use it to rename the content of the activity´s variable according to the data. I also convert the content to lowercase to clarify the data.
1. 4 Appropriately labels the data set with descriptive variable names.
    * For this step I convert the variables´s names leaving only the alpha numeric characters and converting them to lowercase as the tidy data´s rules say with the gsub function.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
    * For the last step and after call the dplyr package, I group the data (group_by) set by subject and activity to then get the average of each, activity and subject, with the sumarise_all function.
