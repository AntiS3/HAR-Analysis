HAR-Analysis
============


A HAR project analysis for G&C Data course peer assessment


This is a function that
1. Executes a data procurement routine by which
    - Project files (activity labels and features) are read into R
    - Variables of interest values (mean and standard deviation measurements) 
    are extracted from training and test data sets.
    - Merge in total.data the values extracted from training and test sets  
2. Gives proper labels to measurements and activities
3. Shapes data with the average of each variable for each activity and each
   subject using 'melt' and 'dcast' functions from 'reshape2' package
4. Writes casted data as tidy data by providing the file 'tidydata.txt'