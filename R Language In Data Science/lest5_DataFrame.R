# data frame in r

# create a data frame with "employee" with three colums-> ID, name and department. 
#take all the entries fromuser and print those values ID
{
E_ID=c();
E_name=c();
E_depart=c();
for(i in 1:5){
E_ID[i]= as.integer(readline(prompt = "Enter ID : "));
E_name[i] = readline(prompt = "Enter name : ");
E_depart[i] = readline(prompt = "Enter depart name : ");

Employee<-data.frame(id = E_ID, Name = E_name, Department = E_depart)
}

Employee
}

{
x<- data.frame(ID = integer(), Name = character(), Departmenmt = character())
for(i in 1:5){
  x$ID <- as.integer(readline(prompt = "Enter the ID number ",i,"i : ")),
  x$Name<-readline(prompt = "Enter the name ",i," : "),
  x$Department <- readline(prompt = "Enter the Departnment name : ",i, " : ")
}
}




-------------------------------------------------------------
{
x<-data.frame(ID=integer(), Name = character(0), Department = character(0));

for(i in 1:3){
  E_ID= as.integer(readline(prompt = "Enter ID : "));
  E_name = readline(prompt = "Enter name : ");
  E_depart = readline(prompt = "Enter depart name : ");
  y<-data.frame(id = E_ID, Name = E_name, Department = E_depart)
  x<-rbind(z,y)
}
x



# find out sum and averAGE OF ID column
avg<-mean(y$E_ID)
avg


Sum<-sum(y$E_ID)
Sum
}


# coorect code.
{
# Initialize an empty dataframe
x <- data.frame(ID = integer(), Name = character(0), Department = character(0))

for (i in 1:3) {
  # Take user inputs
  E_ID <- as.integer(readline(prompt = "Enter ID : "))
  E_name <- readline(prompt = "Enter name : ")
  E_depart <- readline(prompt = "Enter depart name : ")
  
  # Create a temporary dataframe for each iteration
  y <- data.frame(ID = E_ID, Name = E_name, Department = E_depart)
  
  # Bind the temporary dataframe to x
  x <- rbind(x, y)
}

# Print the resulting dataframe x
print(x)

# Find out sum and average of the ID column
avg <- mean(x$ID)
Sum <- sum(x$ID)

# Print the sum and average
print(paste("Average ID:", avg))
print(paste("Sum of IDs:", Sum))
}




-----------------------------------------------------------
  Suppose your work for a retail company, you have sale data for various products over the past
months. your task is to analysis the sales data, calculate the total sale and average sale per product 
and identify the top selling product also.

PRODUCT | sale
 A      | 500

 
{
Sales<-data.frame( 
 E_PRODUCT=c("A","B", "C","D","E"),
 E_SALE = c(2309, 2893, 329, 2893, 2398)
 
)
TOATL_SALE <- sum(Sales$E_SALE);
cat("Total Sales:", TOATL_SALE, "\n")

average_sale_per_product <- mean(Sales$E_SALE);
cat("Average Sale : ", average_sale_per_product,"\n")

top_selling_product <- Sales[which.max(Sales$E_SALE), ];

cat("Top Selling Product:", top_selling_product)
}
 
#another code:
 -------------------------------------------------------------
   {
     x<-data.frame(PRODUCT=character(), SALE=integer());
     
     for(i in 1:2){
       pro = readline(prompt = "Enter product name : ");
       sale1= as.integer(readline(prompt = "Enter sale : "));

       y<-data.frame(PRODUCT=pro, SALE=sale1)
       x<-rbind(x,y)
     }
     avg<-mean(x$SALE)
     cat("average sale : ", avg, "\n")
     
     
     Sum<-sum(x$SALE)
      cat("Toatl Sum : ", Sum ,"\n")
     
    
     #MAX<-max(PRODUCT$SALE)
    
   }
 
# chatgpt code:
 
 # Create a dataframe with product sales data
 sales_data <- data.frame(
   Product = c("A", "B", "C", "D", "E"),
   Sale = c(500, 700, 300, 450, 600)
 )
 
 # Calculate total sales
 total_sales <- sum(sales_data$Sale)
 
 # Calculate average sale per product
 average_sale_per_product <- mean(sales_data$Sale)
 
 # Identify the top-selling product
 top_selling_product <- sales_data[which.max(sales_data$Sale), ]
 
 # Print results
 cat("Total Sales:", total_sales, "\n")
 cat("Average Sale per Product:", average_sale_per_product, "\n")
 cat("Top Selling Product:", top_selling_product$Product, "with sales:", top_selling_product$Sale, "\n")
 
 
 
 -------------------------------------------------------------------------------
   
# factors in r
   
student_detail<-factor(c("CSE", "ECE", "ME", "CE", "ME", "CSE","HH"))
student_detail
levels(student_detail)
length(student_detail)
student_detail[2]
 

--------------------------------------------------------------------------------
  
  declare a data frame "fitness_data" with three columns-> class type(yoga, )
                                                                instructor("A", "B")
                                                                class_durations(48, 69)
                                                                attendence()
                                                                
Display the data frame (fitness_data)
analyse the factors influence(ing class)



--------------------------------------------------------------------------------
# value must be the equal or multiple.
  data1<-data.frame(name=c("shjd", "dbckscn", "cnslnclsc"),
                  Rollno=c(1,2,3),   
                  subject=c("R", "python", "C")
    )
data1
data1[2]. # access  the 2 index element of data1. ans: Rollno;

data2<-rbind(data1, c("xyz", 4, "DSA"))
data2. # add the values in rows

data3<-cbind(data2,Marks=c(100,200,300,400))
data3

combind_frame<-cbind((data1, data2))

data1[data1$Rollno>2,].  #here the acees the greater. than 2 means of all the data of this rows.
subset(data1, data1$Rollno>2)

subset(data1, data1$Rollno>2, select = -Rollno)
subset(data1, data1$Rollno>2, select=c("name", "subject"))
# Display the structure of the dataframe 'data1'
str(data1)

# Load the help documentation for datasets available in R
library(help="datasets")

# Load the documentation for the 'matrix' function
?matrix

# Display the structure of the built-in dataset 'trees'
str(trees)

# Display the names of the variables in the 'trees' dataset
names(trees)

# Display the first few rows of the 'trees' dataset
head(trees)

# Display the last few rows of the 'trees' dataset
tail(trees)

#we have to remove row no 2 5 10 15 20 22 and column 2
trees[c(-2,-5,-10, -15, -22), -2]





