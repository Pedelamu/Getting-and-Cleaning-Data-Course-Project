# Getting-and-Cleaning-Data-Course-Project

#### The scripts included in this repository are:
#### CodeBook.md
In this script you can find an introduction of the proyect and the link to the original data, all the transformationes performed to the data, the data and the variables that form it.
description of the variables, the data, and any transformations or work that was performed to clean up the data.
**Important**:
    * As meanFreq is defined as Weighted average of the frequency components to obtain a mean frequency so I think I shouldn´t add them as variables.
    * prefix 't' to denote time
    * Note the 'f' to indicate frequency domain signals
#### run_analysis.R
It contains all the code to perform the analyses described in the 5 steps of the assigment. It can be launched in RStudio.
#### tidy_data.txt
It is the output of the 5th step is called averages_data.txt, and uploaded in the course project's form. It can be read into R with read.table(header=TRUE) 
