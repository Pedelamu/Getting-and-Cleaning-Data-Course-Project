# Code Book
### Transformations
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

### Data
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (**prefix 't' to denote time**) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (**Note the 'f' to indicate frequency domain signals**). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

### Variables
"activity"                 
"subject"                 
"tbodyaccmeanx"         
"tbodyaccmeany"           
"tbodyaccmeanz"        
"tbodyaccstdx"            
"tbodyaccstdy"          
"tbodyaccstdz"            
"tgravityaccmeanx"      
"tgravityaccmeany"        
"tgravityaccmeanz"        
"tgravityaccstdx"         
"tgravityaccstdy"         
"tgravityaccstdz"         
"tbodyaccjerkmeanx"       
"tbodyaccjerkmeany"       
"tbodyaccjerkmeanz"       
"tbodyaccjerkstdx"        
"tbodyaccjerkstdy"        
"tbodyaccjerkstdz"        
"tbodygyromeanx"          
"tbodygyromeany"          
"tbodygyromeanz"          
"tbodygyrostdx"           
"tbodygyrostdy"           
"tbodygyrostdz"           
"tbodygyrojerkmeanx"      
"tbodygyrojerkmeany"      
"tbodygyrojerkmeanz"      
"tbodygyrojerkstdx"       
"tbodygyrojerkstdy"       
"tbodygyrojerkstdz"       
"tbodyaccmagmean"         
"tbodyaccmagstd"          
"tgravityaccmagmean"      
"tgravityaccmagstd"       
"tbodyaccjerkmagmean"     
"tbodyaccjerkmagstd"      
"tbodygyromagmean"        
"tbodygyromagstd"         
"tbodygyrojerkmagmean"    
"tbodygyrojerkmagstd"     
"fbodyaccmeanx"           
"fbodyaccmeany"           
"fbodyaccmeanz"           
"fbodyaccstdx"            
"fbodyaccstdy"            
"fbodyaccstdz"            
"fbodyaccjerkmeanx"       
"fbodyaccjerkmeany"       
"fbodyaccjerkmeanz"       
"fbodyaccjerkstdx"        
"fbodyaccjerkstdy"        
"fbodyaccjerkstdz"        
"fbodygyromeanx"          
"fbodygyromeany"          
"fbodygyromeanz"          
"fbodygyrostdx"           
"fbodygyrostdy"           
"fbodygyrostdz"           
"fbodyaccmagmean"         
"fbodyaccmagstd"
"fbodybodyaccjerkmagmean" 
"fbodybodyaccjerkmagstd"  
"fbodybodygyromagmean"    
"fbodybodygyromagstd"     
"fbodybodygyrojerkmagmean"
"fbodybodygyrojerkmagstd" 

