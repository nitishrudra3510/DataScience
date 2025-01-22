'''
Problem:
  You are tasked with analyzing a dataset containing information about students' health attributes and their academic performance. The dataset consists of the following attributes:

Age
Gender
Body Mass Index (BMI)
Resting Heart Rate
Blood Pressure (Systolic and Diastolic)
Cholesterol Level
Smoking Status
Presence of Diabetes
Family History of Heart Disease..
Academic Performance Score (a numeric value representing students' academic achievement)

Your goal is to preprocess the dataset to ensure its quality and prepare it for further analysis. Write an R script to perform the following tasks using the apply family of functions:
  
  a) Calculate the mean age of the students.
b) Determine the maximum and minimum BMI among male students.
c) Compute the average resting heart rate for students who are smokers.
d) Find the percentage of students with diabetes.
e) Check if any student has both high systolic blood pressure (above 140) and high diastolic blood pressure (above 90). If so, mark them as "At Risk".
f) Create a new variable indicating whether a student has a family history of heart disease or not.
g) Calculate the correlation coefficient between BMI and academic performance score.
'''

install.packages("openxlsx")
library(openxlsx)

# Creating a sample dataset
students <- data.frame(
  Age = sample(18:25, 20, replace = TRUE),
  Gender = sample(c("Male", "Female"), 20, replace = TRUE),
  BMI = runif(20, min = 18, max = 30),
  Resting_Heart_Rate = sample(60:100, 20, replace = TRUE),
  Systolic_BP = sample(100:160, 20, replace = TRUE),
  Diastolic_BP = sample(60:100, 20, replace = TRUE),
  Cholesterol_Level = sample(120:220, 20, replace = TRUE),
  Smoking_Status = sample(c("Smoker", "Non-Smoker"), 20, replace = TRUE),
  Presence_of_Diabetes = sample(c("Yes", "No"), 20, replace = TRUE),
  Family_History_of_Heart_Disease = sample(c("Yes", "No"), 20, replace = TRUE),
  Academic_Performance_Score = sample(60:100, 20, replace = TRUE)
)

# Create a new Excel workbook
wb <- createWorkbook()

# Add a worksheet to the workbook
addWorksheet(wb, "Students Data")

# Write the dataset to the worksheet
writeData(wb, sheet = "Students Data", x = students)

# Save the workbook to a file
saveWorkbook(wb, "students_data.xlsx")

# Inform the user
cat("The dataset has been saved to students_data.xlsx file.\n")

getwd()



# Load the openxlsx package
library(openxlsx)

# Read the Excel file
students_data <- read.xlsx("students_data.xlsx", sheet = "Students Data")

# Display the first few rows of the dataset
head(students_data)





Ques: 
  You are the data analysist working for a healthcare organisation that manages patient records. The organisation has collected a larger dataset conating information about parients, 
includeing their demographics, medical conditions and treatment history. your task is to perform various data manipuation and analyis tasks using the pdlyr package
in R drive insights and help improve patients care and resource allocation.

Perform the following data manupulation tasks using the dplyr package in R based on the given dataset;

a) Filter the dataset to include only female patients aged between 18 and 65.
b) create a new column called BMI_category based on the BMI (body mass index) values of patients.
Classified patients as "UnderWeight" (BMI<18.5), 'Normal Weight' (18.5 <= BMI < 25), 'Overweight' (25<= BMI < 30), and 'Obsee' (BMI >= 30).

c) group the dataset by Insurance_type and Calculate the average age and  average EMI  of patients within each insurance category.

d) Arrage the dataset indescending order of the Number_of_Visits column..

e) Select the top 10 patients with the highest number of vists.










# create data frame of first 6 columns by excluding NA values.





# count the number of passenger survived below the the age of 15 years.





#subset without dplyr
# show the passengerID and Name of the females having age between 50-60;
# show the 3rd and 5th rows of data frame in decreasing order.
# Setting working directory

