HAR-Analysis
============

A HAR project analysis for G&C Data course peer assessment
================================================================================

HAR-Analysis is formed by the function 'run_analysis.R'

This is a function that ...

1. Executes a data procurement routine by which:
1.1. HAR project files (activity labels and features) are read into R.
1.2. Variables of interest (mean and standard deviation mesurements) are
extracted from training and test data sets.
1.3. The values extracted from both data sets are merged in one single data
frame (total.data)

2. Gives proper labels to measurements and activities.

3. Shapes data with the average of each variable for each activity and 
subject using 'melt' and 'dcast' functions from 'reshape2' package.

4. Writes casted data as tidy data by providing the file 'tidydata.txt'.


