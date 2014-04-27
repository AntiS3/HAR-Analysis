HAR-Analysis
============

### A HAR project analysis for G&C Data course peer assessment
### HAR (Human Activity Recognition Using Smartphones Dataset)
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

The dataset includes the following files:
=========================================

- 'README.md'

- 'run_analysis.R': The function to perform a tidy data analysis

- 'codebook.md' : Codebook of extracted variables described in detail

- 'tidydata.txt' : The output data of the analysis following tidy data rules 

To run the analysis, the dataset must include the following data 
in the working directory as it has been described by [1] - License Reference

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 




---------------------------------------------------------------------------------
License Reference

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
