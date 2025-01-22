# 1 Ques: List Operations
Create two list 12,13,11 and "Rohan", "Smith", "George".
Convert 1st list in vector.
Merge the two lists.
Update 11 to 15 in list1.



list1 <- list(12,13,11)
list2<- list("Rohan", "Smith", "George")

vector1<-c(list1)

merge_list <- c(list1, list2)


# update the list1.
list1[[3]]=15


print("The original lists: ")
print(list1)
print(list2)

print("the vectors: ")
print(vector1)

print("The merge_Lists: ")
print(merge_list)


2 Ques: You are building a simple calculator program that performs basic arithmetic operations. The program should take two numbers and an operator as input and perform the requested operation. The supported operators are: "+"
"-","*" and "/". Write an R program that takes two numbers and an
operator as input and uses a switch case statement to perform the requested operation and display
the result.

{
num1<-as.numeric(readline(prompt = "Enter the number1: "))
num2<-as.numeric(readline(prompt = "Enter the number2: "))

operator1<- readline(prompt = "Enter an operator (+, -, *, /): ")

result<- switch (operator1,
                 "+" = num1+num2,
                 "-" = num1-num2,
                 "*" = num1*num2,
                 "/" = {
                   if(num2!=0){
                     num1/num2
                   }else{
                     "Error division"
                   }
                 },
                 "Invalid operators" = NA
)

#print the number :
if(result != "Invalid operators"){
  cat("Result : ", result, "\n")
}else{
  cat("Invalid Operators")
} 
}





# question 3:
# 
# List Operations
# a. Create two list 12,13,11 and "Rohan", "Smith", "George".
# b. Convert 1st list in vector.
# C.
# Merge the two lists.
# d. Update 11 to 15 in list1.
# 2. You are building a simple calculator program that performs basic arithmetic operations. The program should take two numbers and an 
# operator as input and perform the requested operation. The supported operators are: "+", "-", "** , and "I". Write an R program that takes two numbers and an operator as input and uses a switch case statement to perform the requested operation and display the result.
# 





lis1<-list(12, 13, 11)
lis2<- list("Rohan", "Smith", "George")

vector2<-c(lis1)

merge_list1<-c(lis1,lis2)

lis1[[3]]=15

print("original lists: ")
print(lis1)
print(lis2)

print(vector2)

print(merge_list1)





# code of ques 2:

{
  num1<-as.numeric(readline(prompt = "Enter the number1: "))
  num2<-as.numeric(readline(prompt = "Enter the number2: "))
  
  operator1<- readline(prompt = "Enter an operator (+, -, *, /): ")
  
  result<- switch (operator1,
                   "+" = num1+num2,
                   "-" = num1-num2,
                   "*" = num1*num2,
                   "/" = {
                     if(num2!=0){
                       num1/num2
                     }else{
                       "Error division"
                     }
                   },
                   "Invalid operators" = NA
  )
  
  #print the number :
  if(result != "Invalid operators"){
    cat("Result : ", result, "\n")
  }else{
    cat("Invalid Operators")
  } 
}

# 
# Q4 (1): Consider the following dataset height weight gender
# 111 58 male
# 131 69 male
# 152 67 female
# Create the 3 vectors and create the data frame, set gender as factor
# Change the order of gender
# C.
# Adding two rows in data frame
# d. Show the mean of height and median of weight




  height<- c(111, 131, 152)
  weight<- c(58, 69, 67)
  gender<- factor(c("male", "male", "female"))

data_set1<-data.frame(height, weight, gender)
print(data_set1)

data_set1$gender <- factor(data_set1$gender, levels = c("female", "male"))
data_set1$gender


# adding two rows in data frame.

new_row<-
  data.frame(height = c(140, 160), weight = c(55, 56), gender = factor(c("male", "female")))

data_set1 <- rbind(data_set1, new_row)
data_set1


mean_height<- mean(data_set1$height)
median_weight<-median(data_set1$weight)

cat("mean of height: ", mean_height, "\n")
cat("median of weight: ", median_weight, "\n")


print(data_set1)





# ques 3:

# Q2: File abc.txt / delimited) file in R.
# Alex/25/177/57/F Lilly/31/163/69/F Mark/23/190/83/M
# a) Read the file by choosing the file from pop up window.
# b) Change the names of the columns to Name, Age, Height, Weight and Gender.
# c) How many rows and columns does it have?
#   d) Watch out for the first 2 rows of Name and Height columns.


file_path<- file.choose()
data<- read.table(file_path, sep = "/", header = FALSE)


## b) Change the names of the columns to Name, Age, Height, Weight, and Gender.

col_name<- c("Name", "Age", "Height", "Weight", "gender")


# how many rows and columns to Name, Age, Height, Gender;

num_rows<- nrow(data)
data_cols<- ncol(data)


print("The row and col number are : ")
print(num_rows)

# d) Watch out for the first 2 rows of Name and Height columns.

name_height<- data[1:2, c("name", "height")]
print(name_height)





# ## Write a program to take the 5 subjects marks and find the percentage. Create a function for the same. Give the grade as per following rule:
# >=90
# >=80
# B
# ＞=70
# >=60
# <60
# Fail


{
funct<- function(marks){
  total_marks<- sum(marks)
  percentage<- (total_marks/(5*100))*100
  
  if(percentage>=90){
    grade<-"A"
  }
    
  
  else if(percentage>=80){
    grade<- "B"
  }
  
  else if(percentage>=70){
    grade <- "C"
  }
    
  
  else if(percentage>=60){
    grade <- "D"
  }
    
  
  else{
    grade<- "Fail"
  }
    
  
  return(list(percentage, grade))
}


# input 5 subjects;

marks<- numeric(5)
for (i in 1:5) {
  marks[i] <- as.numeric(readline(prompt = paste("Enter marks for subject", i, ": ")))
}

result<- funct(marks)


cat("Percentage : ", result$percentage, "\n")
cat("Grade : ", result$grade, "\n")

}






## Naming a data frame
my_data <- data.frame(
  ID = c(1, 2, 3),
  Name = c("Alice", "Bob", "Charlie"),
  Age = c(25, 30, 35)
)
# Filtering data frame based on condition
library(dplyr)
filtered_df <- filter(my_data, Age > 30)

# View the filtered data frame
print(filtered_df)


# Selecting specific columns
selected_cols <- my_data[, c("Name", "Age")]
selected_cols<- my_data[, c("Name", "Age")]

# View the selected columns
print(selected_cols)

# Selecting specific rows based on condition
selected_rows <- my_data[my_data$Age > 30, ]

# View the selected rows
print(selected_rows)







# Apply family of functions
# Example using apply() to calculate row-wise sum of a matrix
matrix_data <- matrix(1:9, nrow = 3)
row_sums <- apply(matrix_data, 1, sum)

# View the row sums
print(row_sums)



# Regular expressions
# Example using grep() to find pattern matches in a vector
words <- c("apple", "banana", "grape", "orange", "pineapple")
matching_words <- grep("an", words, value = TRUE)

# View the matching words
print(matching_words)




## # Dates and timestamps
# Example using lubridate package to work with dates
library(lubridate)

# Create a date object
date_obj <- ymd("2024-05-10")

# Extract components from date
year <- year(date_obj)
month <- month(date_obj)
day <- day(date_obj)

# Add or subtract time intervals
next_week <- date_obj + weeks(1)

# View the results
print(year)
print(month)
print(day)
print(next_week)





# # Data filters
# Example using base R to filter data
# Create a sample data frame
data <- data.frame(
  ID = 1:5,
  Name = c("John", "Alice", "Bob", "Emily", "David"),
  Age = c(25, NA, 22, 35, 28)
)

# Filter data to select rows where Age is not missing
filtered_data <- data[!is.na(data$Age), ]

# View the filtered data
print(filtered_data)





## # Handling missing data
# Example using tidyr to remove missing values
library(tidyr)

# Remove rows with missing values
cleaned_data <- drop_na(data)

# View the cleaned data
print(cleaned_data)


print(data)




# Using dplyr for data manipulation
library(dplyr)

# Filter data using dplyr
filtered_data <- data %>%
  filter(!is.na(Age))  # Remove rows where Age is missing

# Summarize data using dplyr
summary_data <- filtered_data %>%
  group_by(Name) %>%
  summarize(Avg_Age = mean(Age))

# View the summarized data
print(summary_data)



# Using tidyr for data manipulation
library(tidyr)

# Reshape data from wide to long format
long_data <- pivot_longer(data, cols = -ID, names_to = "Variable", values_to = "Value")

# View the reshaped data
print(long_data)




## loading the text data..
text_data<- readLines("/Users/nitishkumar/Documents/R Language/textmining.txt")






### # Take input from the user
num_rows <- as.integer(readline(prompt = "Enter the number of rows for the pyramid: "))

# Loop through each row
for (i in 1:num_rows) {
  # Print spaces
  for (j in 1:(num_rows - i)) {
    cat(" ")
  }
  
  # Print asterisks
  for (k in 1:(2 * i - 1)) {
    cat("*")
  }
  
  # Move to the next line
  cat("\n")
}


