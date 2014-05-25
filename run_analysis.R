

#Merges the training and the test sets to create one data set.
##getting the train data set

complete <- function(directory, ids = 1:332) {
  
  path <- paste(getwd(), directory, sep="/")
  idi<-paste(path,list.files(path)[ids], sep="/")
  todo<-data.frame()
  for (i in idi) {
    tempdata<- read.csv(i, header = TRUE,sep=",")
    vec<-c(tempdata[2,4],NROW(tempdata[complete.cases(tempdata),]))
    todo<-rbind(todo,vec)


#Extracts only the measurements on the mean and standard deviation for each measurement. 
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive activity names. 
#Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 