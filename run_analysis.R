################################################################################
# run_analysis.R
#   Pedro Silva
#   2015-09-25
#  
################################################################################

# Required libraries
library(plyr);

################################################################################
# 0. Set base folder and filenames of source data and exported dataset file
################################################################################
baseFolder <- "./data"
destFileName <- "Dataset.zip"
dataFolder <- file.path(baseFolder , "UCI HAR Dataset")

destFileNameAndPath <- file.path(dataFolder , destFileName)
dataActivityTestFile  <- file.path(dataFolder, "test" , "Y_test.txt" )
dataActivityTrainFile <- file.path(dataFolder, "train", "Y_train.txt")
dataSubjectTrainFile <- file.path(dataFolder, "train", "subject_train.txt")
dataSubjectTestFile  <- file.path(dataFolder, "test" , "subject_test.txt")
dataFeaturesTestFile  <- file.path(dataFolder, "test" , "X_test.txt" )
dataFeaturesTrainFile <- file.path(dataFolder, "train", "X_train.txt")
dataFeaturesNamesFile <- file.path(dataFolder, "features.txt")
activityLabelsFile <- file.path(dataFolder, "activity_labels.txt")
secTidyDataFile <- "tidydata.txt"

################################################################################
# 1. Create a directory to store the data and get the data file from the source
#   If you're running on a Mac machine uncomment the line
#        download.file(fileUrl,destfile=destFileNameAndPath, method = "curl")
#    and comment the line
#        download.file(fileUrl,destfile=destFileNameAndPath)
###############################################################################
if(!file.exists(baseFolder)){dir.create(baseFolder)}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile=destFileNameAndPath)
##download.file(fileUrl,destfile=destFileNameAndPath, method = "curl")

################################################################################
# 2. Uncompress the source data file into the same folder
################################################################################
unzip(zipfile=destFileNameAndPath,exdir=baseFolder)

################################################################################
# 3. Read the source data files
################################################################################
dataActivityTest  <- read.table(dataActivityTestFile,header = FALSE)
dataActivityTrain <- read.table(dataActivityTrainFile,header = FALSE)
dataSubjectTrain <- read.table(dataSubjectTrainFile,header = FALSE)
dataSubjectTest  <- read.table(dataSubjectTestFile,header = FALSE)
dataFeaturesTest  <- read.table(dataFeaturesTestFile,header = FALSE)
dataFeaturesTrain <- read.table(dataFeaturesTrainFile,header = FALSE)
dataFeaturesNames <- read.table(dataFeaturesNamesFile,head=FALSE)

################################################################################
# 4. Join the Train and Test data sets
################################################################################
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)

################################################################################
# 5. Assign names to the columns
################################################################################
names(dataSubject)<-c("SubjectID")
names(dataActivity)<- c("ActivityID")
names(dataFeatures)<- dataFeaturesNames$V2

################################################################################
# 6. Join the feature data sets with the subjects and activity data
################################################################################
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)

subdataFeaturesNames<-dataFeaturesNames$V2[grep("[Mm]ean|[Ss]td", dataFeaturesNames$V2)]
selectedNames<-c(as.character(subdataFeaturesNames), "SubjectID", "ActivityID" )
Data<-subset(Data,select=selectedNames)

activityLabels <- read.table(activityLabelsFile,header = FALSE)

################################################################################
# 7. Transform the label names into meaningful names
################################################################################
newNames <- names(Data)
newNames <- gsub("\\()","",newNames)
newNames <- gsub("-[Ss]td","StdDev",newNames)
newNames <- gsub("-[Mm]ean","Mean",newNames)
newNames <- gsub("^(t)","Time",newNames)
newNames <- gsub("^(f)","Freq",newNames)
newNames <- gsub("([Gg]ravity)","Gravity",newNames)
newNames <- gsub("([Bb]ody[Bb]ody|[Bb]ody)","Body",newNames)
newNames <- gsub("[Gg]yro","Gyro",newNames)
newNames <- gsub("AccMag","AccMagnitude",newNames)
newNames <- gsub("([Bb]odyaccjerkmag)","BodyAccJerkMagnitude",newNames)
newNames <- gsub("JerkMag","JerkMagnitude",newNames)
newNames <- gsub("GyroMag","GyroMagnitude",newNames)
newNames <- gsub("[Aa]ngle","Angle",newNames)
names(Data) <- newNames

################################################################################
# 8. Create the second tidy data set by calculating the average of 
#     each variable for each activity and subject
################################################################################
secTidyData<-aggregate(. ~SubjectID + ActivityID, Data, mean)
secTidyData<-secTidyData[order(secTidyData$SubjectID,secTidyData$ActivityID),]

################################################################################
# 9. Write the second tidy data set to a local file
################################################################################
write.table(secTidyData, file = secTidyDataFile, row.names=FALSE)
