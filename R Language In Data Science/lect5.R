# ..........1-Dimensional Array.......

#inserting the element using user input.
{
x<-as.integer(readline(prompt = "enter size of array : "))
a<-c()
print("Enter the element of array")
for(i in 1:x)
{
  a[i]=as.integer(readline())
}
print("print the array: ")
for(i in 1:x){
  cat(a[i])
}

}

------------------------------------------
  
{
b<-c(1:12)
row_name = c("D1","D2","D3","D4");
col_name = c("C1","C2","C3");

mat_name=c("Mat1","Mat2")
a<-array(b, dim = c(4,3,2), dimnames=list(row_name, col_name, mat_name))
a

}

--------------------------------------------
  
{
#adding the elements to the array.
x<-c(1,2,3,4,5,6)
x<-c(x,7)  #this will add 7 at the end.
x

x<-append(x,8)
x       #this will be add 8 at the end

len<-length(x)
x[len+1]<-9
x               # will ad 9 at  the end


x<-append(x,c(9,10,11), after=3)
x                  # add the element 9,10,11 after 3rd position of array


}




#find out column sum and row in 
#colsum, rowsums function is used to sum of all the elements.

x<-array(1:12,c(2,3,2))
colSums(x,dims=1)
colSums(x,dims=2)


rowSums(x,dims=1)



-----------------------------------
  
analyse the sales data across region and produnct
when you have multidimensional data in 3 rows and 4 columns,
values are intrested column wise: 100,150,200,120,180,220,90,130,170,110,160,190
give the rows name as: productA, productB, product C and column as Region2, REgion3 and region4.

Calculate the total sales for each product and average sales per region and dispaly that values.


#soln:
  
  a<-c(100, 150, 200, 120,
       180, 220, 90, 130,
       170, 110, 160, 190)
row_names=c("Product A", "Product B", "Product C")
col_names=c("Region1","Region2", "Region3", "Region4")

sale<-array(a,dim=c(3,4,1),dimnames = list(row_names,col_names, NULL))
sale
rowSums(sale)
colMeans(sale)


-----------------------------ANOTHER METHOD-------------------------
# Define the sales data
sales_data <- matrix(c(100, 150, 200, 120,
                       180, 220, 90, 130,
                       170, 110, 160, 190),
                     nrow = 3, byrow = TRUE,
                     dimnames = list(c("ProductA", "ProductB", "ProductC"),
                                     c("Region2", "Region3", "Region4")))

# Calculate total sales for each product
total_sales <- colSums(sales_data)

# Calculate average sales per region
average_sales_per_region <- rowMeans(sales_data)

# Display total sales for each product
cat("Total sales for each product:\n")
print(total_sales)

# Display average sales per region
cat("\nAverage sales per region:\n")
print(average_sales_per_region)



#.  soln:

a<-c(100, 150, 200, 120,
     180, 220, 90, 130,
     170, 110, 160, 190)
row_names=c("Product A", "Product B", "Product C")
col_names=c("Region1","Region2", "Region3", "Region4")
  
sale<-array(a,dim=c(3,4,1),dimnames = list(row_names,col_names, NULL))
sale
rowSums(sale)
colMeans(sale)


-------------------------------------------------------------
  
# DATA frames in r;
# heterogeneous colllection of element.
  
data_frame1<-data.frame(
  RegNO=c(1,2,3,4,5),
  Name=c("Nitish", "bb","CC","DD","EE"),
  Marks=c(66,77,99,88,89)
)

data_frame1

summary(data_frame1)

data_frame1[1]
data_frame1$RegNO
data_frame1[["RegN"]]



-------------------------------------------
  
  
  #adding the rows in data frame.
  #rbind and cbind function to add rows and column in existing data frame.
data_frame1<-data.frame(
    RegNO=c(1,2,3,4,5),
    Name=c("Nitish", "bb","CC","DD","EE"),
    Marks=c(66,77,99,88,89)
  )
new_row<-rbind(data_frame1,c(6,"FF",90))
new_row
data
new_col<-cbind(data_frame1,Address=c("Hno.232","Hno.23", "Hno.7832", "Hno298", "Hno.6"))
new_col


-------------------------------------------------------------------------
  
declare the data frames with the name "employee" and the values
of emp_id, ename, esalary. find out the average of employees and print that value.



Employee<-data.frame(
  E_id=c(1,2,3,4,5),
  E_Name=c("Nitish", "bb","CC","DD","EE"),
  E_salary=c(66,77,99,88,89)
)
Employee

avg<-mean(Employee$E_salary)
avg




# take the input from the user.
for(i in 1:5){
  E_id<-as.integer(readline(prompt = "Enter the input of emoplyee Id: "))
  E_name<-readline(prompt = "Enter the input of emoplyee name: ")
  E_salary<-as.integer(readline(prompt = "Enter the input of emoplyee salary: "))
}

Employee<-data.frame(E_id, E_name, E_salary)
Employee
avg<-mean(Employee$E_salary)
avg