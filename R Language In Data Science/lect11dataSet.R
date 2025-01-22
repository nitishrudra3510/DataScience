1. load the dataset in the Rstudio
2. Extraxt those rows from dataset which are having outcome as 1
3. extract the column bloodprssure, Insulin, BMI from dataset
4. Extraxt those number of rows from dataset based on the outcome column
5. Find out average, max and min from Age column

getwd()
setwd("/Users/nitishkumar/Downloads")
getwd()

#ans 1:
input1<-read.csv("diabetes (1).csv")
print(input1)
View(input1)


#ans 2:

#a<subset(input1, outcome="1")
#a
library(sqldf)
sqldf('select * from input1 where outcome like "1%"');
#ans 3.

sqldf('select BloodPressure, Insulin, BMI from input1');


install.packages()
installed.packages()



