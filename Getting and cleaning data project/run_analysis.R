x_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")

x_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
sub_test <- read.table("./UCI HAR Dataset/test/sub_test.txt")

x_total <- rbind(x_train, x_test)
y_total <- rbind(y_train, y_test)
sub_total <- rbind(sub_train, sub_test)

data <- cbind(sub_total, y_total, x_total)

features <- read.table("./UCI HAR Dataset/features.txt")

reqfeatures <- features[grep('-(mean|std)\\(\\)', features[,2]), 2]
data <- data[, c(1, 2, reqfeatures)]

activity_labels <- read.table("./UCI HAR Dataset/activity_labels.txt")

data[, 2] <- activity_labels[data[, 2], 2]

colnames(data) <- c('sub', 'act', gsub('\\-|\\(|||)', '', as.character(reqfeatures)))
data[ ,2] <- as.character(data[, 2])

final.melt <- melt(data, id = c('sub', 'act'))

final.cast <- dcast(final.melt, subject + activity ~ variable, mean)

write.table(final.cast, file = file.path("avgdata.txt"), row.names = FALSE)
