run_analysis <- function() {
	
	# This is a function that performs an analysis over the data collected
    # by the HAR project's machine learning training and testing. 
    #
    # The function selects from the total data, the measurements that provides 
    # means and standard deviations, values that are aggregated by the mean
    # function for each subject and each activity.
    #
    # The outcome is finally provided by a tidy data file named 'tidydata.txt'
    
	## Libraries and sources
	require(reshape2)
	
	## Data Procurement
	# Project HAR
		dirpath <- "./UCI HAR Dataset"
	
		destfile <- paste(dirpath, "/activity_labels.txt", sep="")
		activity.labels <- read.table(destfile, sep=" ", header= FALSE, quote="")
	
		destfile <- paste(dirpath, "/features.txt", sep="")
		features <- read.table(destfile, sep=" ", header= FALSE, quote="")
		
		varsOfinterest <- c(".*mean\\(\\).*", ".*std\\(\\).*")
		measurements <- unique(grep(paste(varsOfinterest, collapse="|"), 
								features[,2], value=TRUE))
		measure.index <- unique(grep(paste(varsOfinterest, collapse="|"),
								features[,2], value=FALSE))
	
	# Train
		dirpath <- "./UCI HAR Dataset/train"
		
		destfile <- paste(dirpath, "/X_train.txt", sep="")
		train.data <- read.table(destfile, header= FALSE, quote="")[,measure.index]
		
		destfile <- paste(dirpath, "/y_train.txt", sep="")
		activity.data <- read.table(destfile, header= FALSE, quote="")
	
		destfile <- paste(dirpath, "/subject_train.txt", sep="")
		subject.data <- read.table(destfile, header= FALSE, quote="")
		
		train.data <- cbind(train.data, activity.data, subject.data)
		
    	cat("There are", nrow(train.data), "rows in trainning set","\n")
    	cat("There are", ncol(train.data), "columns in trainning set","\n")
	
	# Test
		dirpath <- "./UCI HAR Dataset/test"
		
		destfile <- paste(dirpath, "/X_test.txt", sep="")
		test.data <- read.table(destfile, header= FALSE, quote="")[,measure.index]
		
		destfile <- paste(dirpath, "/y_test.txt", sep="")
		activity.data <- read.table(destfile, header= FALSE, quote="")
	
		destfile <- paste(dirpath, "/subject_test.txt", sep="")
		subject.data <- read.table(destfile, header= FALSE, quote="")
		
		test.data <- cbind(test.data, activity.data, subject.data)
	
    	cat("There are", nrow(test.data), "rows in test set","\n")
    	cat("There are", ncol(test.data), "columns in test set","\n")
	
	# Total Data > total.data <- train.data + test.data
	
		total.data <- rbind(train.data, test.data)
	
    	cat("There are", nrow(total.data), "rows in total","\n")
    	cat("There are", ncol(total.data), "columns in total","\n")
	
	## Giving labels to measurements and activities
		colnames(total.data) <- c(measurements,"Activity","Subject")
		total.data$Activity <- activity.labels[total.data$Activity,2]
	
	## Data Shaping ##
	# Melting Data to give it the form of IDs ~ Single_Value
		molten.data <- melt(total.data, id.vars = c("Activity", "Subject"), 
						   measure.vars = measurements, na.rm = TRUE)
	
    	cat("There are", nrow(molten.data), "rows in molten data","\n")
    	cat("There are", ncol(molten.data), "columns in molten data","\n")
	
	# Casting Data tranforms Molten Data to Df aggregating values by the aggregate function
	
		casted.data <- dcast(molten.data, Subject + Activity ~ variable,
						    fun.aggregate = mean)
	
    	cat("There are", nrow(casted.data), "rows in casted data","\n")
    	cat("There are", ncol(casted.data), "columns in casted data","\n")
	
	## Writing casted.data as tidy data for reporting
	
    	write.table(casted.data, file="./tidydata.txt", sep="\t", row.names=FALSE)
	
}