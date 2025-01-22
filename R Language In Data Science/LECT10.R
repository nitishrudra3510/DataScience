# Get the current working directory
getwd()

# Set the working directory to "/Users/nitishkumar/Downloads"
setwd("/Users/nitishkumar/Downloads")

# Check if the working directory has been changed successfully
getwd()
print(getwd())

# Load the CSV file into 'input' dataframe
input <- read.csv("breast-cancer.csv")

# Print the content of 'input' dataframe
print(input)
   
# View the first few rows of the 'input' dataframe
head(input)

# Check if the 'sqldf' package is installed, if not, install it
if (!require("sqldf")) {
  install.packages("sqldf")
}

# Load the 'sqldf' package
library(sqldf)

# Execute SQL queries on the 'input' dataframe
sqldf('select * from input')
sqldf('select id, diagnosis from input order by id asc')
sqldf('select id, diagnosis from input order by id desc')

#between and in operator

sqldf('select id, diagnosis from input where id between 842302 and 843786')
sqldf('select id, diagnosis from input where ')



input1<-data.frame(
  id=c(1,2,3,4,5),
  name=c("alice", "BOB", "emily", "John");
)

input1

input2<data.frame(
  id=c(1,2,3,6,7)
  salary = c(5000,1000,6000,7000,6000)
  dept=c("HR", "finance", "IT", "finance", "operations");
)


sqldf('selelct * from input1 inner join input2 on input1.id=input2.id');

sqldf('selelct * from input1 left join input2 on input1.id=input2.id');
sqldf('selelct * from input1 right join input2 on input1.id=input2.id');
sqldf('selelct * from input1 full join input2 on input1.id=input2.id');



#extract the id, age, salary and do the innner
sqldf('select input.id, input.age, input.salary from input1 inner join input2 on input1.id=input2.id')


getwd()
setwe("/Users/nitishkumar/Downloads")
print(getwd())

1. load the dataset in the RStudio.
2. Extract those rows from dataset which are having outcome as 1
3. extract the column blood pressure, insulion, BMI from datasets

4. extract 