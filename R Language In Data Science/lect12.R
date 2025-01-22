# Set the working directory to the location where your dataset is stored
setwd("/Users/nitishkumar/Downloads")

# Read the CSV file named "breastcancer.csv" into a dataframe called input
input <- read.csv("breastcancer.csv")

# Print the contents of the dataframe to the console
print(input)

# Open a viewer window to visualize the dataframe
View(input)

# Install the 'visdat' package if not already installed
install.packages("visdat")

# Load the 'visdat' package into the current R session
library(visdat)

# Visualize missing values in the dataframe using 'vis_miss' function
vis_miss(input)


# Check if there are any missing values in the dataframe (returns a logical matrix)
is.na(input)

# Omit rows with missing values and create a new dataframe without NAs
na.omit(input)

# Exclude rows with missing values without removing them, for use in statistical functions
na.exclude(input)

# Calculate the total number of NA values in the dataframe
sum(is.na(input))

# Calculate the number of NA values in each column of the dataframe
colSums(is.na(input))


#position of misising values.
which(is.na(input))



#NaN value

b<-0/0
b

# find teh NaN values. which is true value for NaN.
a<-c(NA, 100, 241, 0/0, 101)
is.nan(a)

#find out the average of radius_mean column of dataset.
input$radius_mean
mean(input$radius_mean)
mean(input$radius_mean, na.rm = TRUE)

#find median with NA value in column

median(input$radius_mean, na.rm = TRUE)

#find mode
mode(input$radius_mean)

# Sort the 'radius_mean' column in ascending order
sorted_radius_mean <- sort(input$radius_mean, na.last = TRUE)

# Print the sorted values
print(sorted_radius_mean)

# Sort the 'radius_mean' column in descending order
sorted_radius_mean_desc <- sort(input$radius_mean, decreasing=TRUE, na.last = TRUE);
#print the sort values
print(sorted_radius_mean_desc)

# To calculate the mode.
#fequency
freq <- table(input$radius_mean)
print(freq)
#sort
sorted_table <- sort(freq, frequency=TRUE)

print(sorted_table)

#extract first value
mode_value<- as.numeric(names(sorted_table)[1])

#deal with missing values
#- replace NA with means
input$radius_mean[is.na(input$radius_mean)]<-mean(input$radius_mean, na.rm = TRUE)
#- replace NA with median
input$radius_mean[is.na(input$radius_mean)] <- median(input$radius_mean, na.rm = TRUE)

#- replace NA with Mode
# Define the Mode function
Mode <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

# Calculate the mode
mode_radius_mean <- Mode(input$radius_mean)

# Replace NA values with the mode
input$radius_mean[is.na(input$radius_mean)] <- mode_radius_mean
print(mode_radius_mean)print(Mode)


install.packages("package_name")

