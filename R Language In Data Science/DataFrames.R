# R data frames 

#Creating Data Frames in R
Definition: A data frame is a two-dimensional array-like structure in R, resembling a table, where each column contains values of one variable,
and rows contain one set of values from each column.

# Characteristics:
  
  Columns must have non-empty names.
Row names must be unique.
Data can be of different types such as numeric, character, or factor.
Each column must have the same number of data items.
How to Create a Data Frame:
  In R, data frames are created using the data.frame() function. This function accepts vectors of any type 
(numeric, character, or integer) and combines them into a data frame.

# examples:

# Creating a data frame
employee_data <- data.frame(
  employee_id = c(1, 2, 3, 4),
  employee_name = c("John", "Alice", "Bob", "Emma"),
  salary = c(50000, 60000, 55000, 65000),
  start_date = as.Date(c("2022-01-01", "2021-06-15", "2020-11-30", "2023-03-10"))
)
print(employee_data)

##exaplnation
# 
# employee_id, employee_name, salary, and start_date are vectors containing employee data.
# These vectors are passed to the data.frame() function, creating a data frame named employee_data




# Getting the structure of R Data Frame

# we find the the structure of our data frame. R provides an in-build function called str() which returns the data with its complete structure.


# Creating the data frame.  

emp.data<-data.frame(
  employee_id = c(1:5),
  employee_name = c("shubham", "shayam", "nitish", "rohit", "piyush"),
  sal = c(343.3, 515.3, 232.32, 3232.2, 23.2),
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")), 
  stringsAsFactors = FALSE
) 

#printing the structure of data frame;
str(emp.data)





# Extracting data from Data Frame
The data of the data frame is very crucial for us. To manipulate the data of the data frame, it is essential to extract it from the data frame. We can extract the data in three ways which are as follows:
  
  We can extract the specific columns from a data frame using the column name.
We can extract the specific rows also from a data frame.
We can extract the specific rows corresponding to specific columns.




# ex: Extracting the specific columns from a data frame
# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name= c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
  sal = c(623.3,515.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  


# extractng the specific columns from a data frames.
final<-data.frame(emp.data$employee_id, emp.data$sal)
print(final)


extarct_data<- data.frame(emp.data$employee_id, emp.data$sal)
extarct_data


#Extracting the specific rows from a data frame

#-> 1.# Extracting first row from a data frame      
first_row<-  emp.data[1,]
print(first_row)

# Extracting last two row from a data frame       
final <- emp.data[4:5,]  
print(final) 



# Extracting specific rows corresponding to specific columns


# Extracting 2nd and 3rd row corresponding to the 1st and 4th column      

final<-emp.data[c(2,3),c(1,4)]
print(
  final
)
final1<-emp.data[c(2,3), c(1,4)]

final1


# Modification in Data frame;

R allows us to do modification in our data frame. Like matrices modification, we can modify our data frame through re-assignment. We cannot only add rows and columns, but also we can delete them.


We can 
1. Add a column by adding a column vector with the help of a new column namae using cbind() `functionBody<-`()
2. Add rows by adding new rows in the same structure as the existing data frame and using rbind() function
3. Delete the columns by assigning a NULL value to them.
4. Delete the rows by re-assignment to them.


# Example: Adding rows and columns

# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name = c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
  sal = c(623.3,515.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  
print(emp.data)  


# Adding row in the data frame..

x<- list(6, "Vaishali", 547, "2015-09-01")
rbind(emp.data,x)



# Adding the column in the data frame..
y<-c("Moradabad", "Luncknow", "Etah", "Sambhal", "Khurja")
cbind(emp.data, Address=y) # add the new column and name is "Address"

# deleting the rows from the data frame..
emp.data<-emp.data[-1,]
print(emp.data)


# delete the column from the data frame.
emp.data$starting_date<-NULL
print(emp.data)








_____________________________________________________

#Summary of data in Data Frames
# In R, you can use the `summary()` function to extract statistical summaries and understand the nature of the data in a data frame. Simply pass the data frame as a parameter to the `summary()`
# function to obtain statistical information. This function provides a concise overview of the data's distribution, including measures like mean, median, minimum, maximum, and quartiles.




# Creating the data frame.  
emp.data<- data.frame(  
  employee_id = c (1:5),   
  employee_name = c("Shubham","Arpita","Nishka","Gunjan","Sumit"),  
  sal = c(623.3,515.2,611.0,729.0,843.25),   
  
  starting_date = as.Date(c("2012-01-01", "2013-09-23", "2014-11-15", "2014-05-11",  
                            "2015-03-27")),  
  stringsAsFactors = FALSE  
)  
print(emp.data)  

#Printing the summary  
print(summary(emp.data))  
