library(data.table)

# Download and extract ZIP file
if (!file.exists("UCI HAR Dataset")) {
    zip_file = "dataset.zip"
    download.file(
        url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
        destfile = zip_file)
    unzip(zipfile = zip_file)
}

# Read labels tables
activity_ids_labels <- read.table(
    file = "UCI HAR Dataset/activity_labels.txt",
    col.names = c("activity.id", "activity.label"))
feature_ids_labels <- read.table(
    file = "UCI HAR Dataset/features.txt",
    col.names = c("feature.id", "feature.label"))

# Prepare training and test datasets
prepare_data <- function(part){
    
    # Read data tables
    set_subject_ids <- read.table(
        file = paste0("UCI HAR Dataset/", part, "/subject_", part, ".txt"),
        col.names = "subject.id")
    set_activity_ids <- read.table(
        file = paste0("UCI HAR Dataset/", part, "/y_", part, ".txt"),
        col.names = "activity.id")
    set_data <- read.table(
        file = paste0("UCI HAR Dataset/", part, "/X_", part, ".txt"),
        col.names = gsub(pattern = "\\(\\)", replacement = "",
                         x = feature_ids_labels$feature.label))
    colnames(set_data) <- gsub(pattern = "BodyBody", replacement = "Body",
                               x = colnames(set_data))
    
    # Select mean and standard deviation columns
    mean_std_set <-
        set_data[, grepl(pattern = "(mean\\.|mean$|std)",
                         x = colnames(set_data))]
    
    # Add subject and activity IDs columns to the dataset
    subject_activity_mean_std_set <-
        cbind(set_subject_ids, set_activity_ids, mean_std_set)
    
    # Add activity labels column to the dataset
    merge(subject_activity_mean_std_set, activity_ids_labels)
}

# Combine training and test datasets in a single dataset
training_set <- prepare_data("train")
test_set <- prepare_data("test")
complete_set <- data.table(rbind(training_set, test_set))

# Compute mean of each variable for each subject and activity
average_set <- complete_set[, lapply(x = .SD, fun = mean),
                           by = c("subject.id", "activity.label")]

# Remove activity IDs column from the dataset
cleaned_set <- average_set[, activity.id := NULL]

# Order dataset
ordered_set <-
    cleaned_set[order(cleaned_set$subject.id, cleaned_set$activity.label),]

# Output dataset and print it to a text file (with space separated values)
ordered_set
write.table(x = ordered_set, file = "tidy_dataset.txt", row.names = FALSE)