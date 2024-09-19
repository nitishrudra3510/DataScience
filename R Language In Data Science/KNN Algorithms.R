{
getwd()  
# Returns the current working directory of the R environment. 

wbcd <- read.csv(file.choose(), stringsAsFactors = FALSE)  
# Reads a CSV file chosen interactively by the user and stores it in the 'wbcd' data frame. 
# The 'stringsAsFactors = FALSE' parameter prevents automatic conversion of string data to factors.

View(wbcd)  
# Opens the data frame 'wbcd' in a tabular view window for easy inspection of the data.

str(wbcd)  
# Displays the structure of the 'wbcd' data frame, including the type of each column (e.g., numeric, character) and provides a summary of its content.

wbcd <- wbcd[-1]  
# Removes the first column of the 'wbcd' data frame, assuming it is unnecessary (possibly an ID column).

table(wbcd$diagnosis)  
# Creates a frequency table of the 'diagnosis' column, showing the count of each category in this column.

wbcd$diagnosis <- factor(wbcd$diagnosis, levels = c("B", "M"),  
                         labels = c("Benign", "Malignant"))  
# Converts the 'diagnosis' column into a factor (categorical variable) with the levels "B" (Benign) and "M" (Malignant), and renames them for clarity.

round(prop.table(table(wbcd$diagnosis)) * 100, digits = 1)  
# Calculates the proportion of each diagnosis in the dataset as a percentage and rounds it to one decimal place.

summary(wbcd[c("radius_mean", "area_mean", "smoothness_mean")])  
# Provides summary statistics (min, max, mean, median, quartiles) for the three selected variables: 'radius_mean', 'area_mean', and 'smoothness_mean'.

normalize <- function(x) {  
  return((x - min(x)) / (max(x) - min(x)))  
}  
# Defines a normalization function that rescales values of a numeric variable to a range between 0 and 1. 
# This helps to ensure that the features have equal weight when applying certain machine learning models.

wbcd_n <- as.data.frame(lapply(wbcd[2:31], normalize))  
# Applies the normalization function to each column in the dataset, from column 2 to 31 (excluding 'diagnosis'), and converts it back to a data frame.

summary(wbcd_n$radius_mean)  
# Provides summary statistics for the normalized 'radius_mean' variable.

wbcd_train <- wbcd_n[1:469, ]  
# Splits the normalized dataset into training data, containing the first 469 rows (roughly 82% of the data).

wbcd_test <- wbcd_n[470:569, ]  
# Splits the normalized dataset into test data, containing the last 100 rows (roughly 18% of the data).

wbcd_train_labels <- wbcd[1:469, 1]  
# Extracts the labels (diagnosis) corresponding to the training data from the original dataset.

wbcd_test_labels <- wbcd[470:569, 1]  
# Extracts the labels (diagnosis) corresponding to the test data from the original dataset.

# install.packages("class")  
# Installs the 'class' package, which provides functions for classification, including the k-nearest neighbors (k-NN) algorithm.

library(class)  
# Loads the 'class' package into the R session.

wbcd_test_pred <- knn(train = wbcd_train, test = wbcd_test,  
                      cl = wbcd_train_labels, k = 20)  
# Applies the k-nearest neighbors (k-NN) algorithm to classify the test data. 
# The 'train' argument uses the training dataset, the 'test' argument uses the test dataset, 
# 'cl' contains the training labels (diagnosis), and 'k = 21' specifies the number of neighbors to consider when classifying each test observation.


# install.packages("gmodels")
library(gmodels)
CrossTable(x = wbcd_test_labels, y = wbcd_test_pred, prop.chisq=FALSE)


aa<-table(wbcd_test_labels, wbcd_test_pred)
install.packages("caret")
library(caret)
confusionMatrix(aa)
}



# to apply the KNN algorithms;

data("iris")
View(iris)
str(iris)

a<-iris[-1]
table(a$Species)
a$Species<-factor(a$Species, labels = c("S", "V","V"), 
                     levels = c("setosa", "versicolor", "virginica"))
round(prop.table(table(a$Species))*100,digits=1)
summary(a[c("Sepal.Width", "Petal.Length","Petal.Width")])
iris_n <- as.data.frame(lapply(a[, c("Sepal.Width", "Petal.Length", "Petal.Width")], scale))

summary(a$Sepal.Width)
iris_train <- iris_n[1:110, ]
iris_test <- iris_n[110-120, ]  
iris_train_labels <- a[1:120, 1]  
iris_test_labels <- a[120:150, 1] 
library(class)  
iris_test_pred <- knn(train = iris_train, test = iris_test,  
                      cl = iris_train_labels, k = 55) 
library(gmodels)

CrossTable(x = iris_test_labels, y = iris_test_pred, prop.chisq=FALSE)


aa<-table(iris_test_labels, iris_test_pred)

library(caret)
confusionMatrix(aa)
}