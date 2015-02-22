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
    col.names = c("activity_id", "activity_label"))
feature_ids_labels <- read.table(
    file = "UCI HAR Dataset/features.txt",
    col.names = c("feature_id", "feature_label"))

# Prepare training and test datasets
prepare_data <- function(part){
    
    # Read data tables
    set_subject_ids <- read.table(
        file = paste0("UCI HAR Dataset/", part, "/subject_", part, ".txt"),
        col.names = "subject_id")
    set_activity_ids <- read.table(
        file = paste0("UCI HAR Dataset/", part, "/y_", part, ".txt"),
        col.names = "activity_id")
    set_data <- read.table(
        file = paste0("UCI HAR Dataset/", part, "/X_", part, ".txt"),
        col.names = feature_ids_labels$feature_label)
    
    # Select mean and standard deviation columns
    mean_std_set <-
        set_data[,grepl(pattern = "(mean|std)",x = colnames(set_data))]
    
    # Add subject and activity ids to the dataset
    subject_activity_mean_std_set <-
        cbind(set_subject_ids, set_activity_ids, mean_std_set)
    
    # Add activity labels to the dataset
    merge(subject_activity_mean_std_set, activity_ids_labels)
}

# Combine training and test datasets in a single dataset
training_set <- prepare_data("train")
test_set <- prepare_data("test")
complete_set <- data.table(rbind(training_set, test_set))

# Compute mean of each variable for each subject and activity
average_set <-complete_set[, lapply(x = .SD, fun = mean),
                           by = c("subject_id", "activity_label")]

# Clean dataset
cleaned_set <- average_set[, activity_id := NULL]
ordered_set <-
    cleaned_set[order(cleaned_set$subject_id, cleaned_set$activity_label),]

# Output dataset and print it to a text file
ordered_set
write.table(x = ordered_set, file = "tidy_dataset.txt", row.names = FALSE)