# lists -> storing the different types of elements;
# create the lsit fucntion-> use the list()


# Create vectors
vec <- c(8, 9, 10, 4)
char_v <- c("ram", "shayam", "gun", "son")
logic_vec <- c(TRUE, FALSE, TRUE, TRUE)

# Create a list using the list() function
LIST1 <- list(vec, char_v, logic_vec)
LIST1

# Create another list with various data types
list2 <- list("ram", "sohan", c(1, 2, 3, 4, 5), TRUE, FALSE, 52L, 56, 43)
list2

# Naming elements of the list
list3 <- list(c("ram", "mohan", "sohan", c(32, 43, 54), list("b.tech", "bca", "BA")))

# Assign names to elements in the list
names(list3) <- c("students", "marks", "courses")
list3



# Accessing elements of the list


print(list3[[2]])  # Accessing the second element of list3
print(list3[["marks"]])  # Accessing the element named "marks" in list3
print(list3$marks)  # Another way to access the element named "marks" in list3




#Accessing elements using index

# Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Arpita","Nishka"), matrix(c(40,80,60,70,90,80), nrow = 2),  
                  list("BCA","MCA","B.tech"))  
# Accessing the first element of the list.  
print(list_data[1])  

# Accessing the third element. The third element is also a list, so all its elements will be printed.  
print(list_data[3])  



#Accessing elements using names

# Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Arpita","Nishka"), matrix(c(40,80,60,70,90,80), nrow = 2),list("BCA","MCA","B.tech"))  
# Giving names to the elements in the list.  
names(list_data) <- c("Student", "Marks", "Course")  
# Accessing the first element of the list.  
print(list_data["Student"])  
print(list_data$Marks)  
print(list_data)  





#Creating the list with different data type

list_data<-list("Shubham","Arpita",c(1,2,3,4,5),TRUE,FALSE,22.5,12L)  
print(list_data)



# giving a name to list elements;
1. create a list
2. Assign a name to the lists element with the helps of names() functions.
3. print the list data.


## Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Nishka","Gunjan"), matrix(c(40,80,60,70,90,80), nrow = 2),  
                  list("BCA","MCA","B.tech"))  

# Giving names to the elements in the list.  
names(list_data) <- c("Students", "Marks", "Course")  

# Show the list.  
print(list_data)  







#Manipulation of list elements
R allows us to add, delete, or update elements in the list. We can update an element of a list from anywhere,
but elements can add or delete only at the end of the list. To remove an element from a specified index, we will
assign it a null value. We can update the element of a list by overriding it from the new value. 


# Creating a list containing a vector, a matrix and a list.  
list_data <- list(c("Shubham","Arpita","Nishka"), matrix(c(40,80,60,70,90,80), nrow = 2),  
                  list("BCA","MCA","B.tech"))  

# Giving names to the elements in the list.  
names(list_data) <- c("Student", "Marks", "Course") 
print(names(list_data))

# Adding element at the end of the list.  
list_data[4] <- "Moradabad"  
print(list_data[4])


# Removing the last element.  
list_data[4] <- NULL  

# Printing the 4th Element.  
print(list_data[4])  


# deleting the last element
lsit_data<- list_data[-length(list_data)]

#print the 4th element (Which is now deleted)
print(list_data[4]) # NULL

# Updating the 3rd Element.  
list_data[3] <- "Masters of computer applications"  
print(list_data[3])  





# Converting list into vectors;

# There is a drawback with the list, i.e., we cannot perform all the arithmetic operations on list elements. To remove this, drawback R provides unlist() function. This function converts the list into vectors. In some cases,

#The unlist() function takes the list as a parameter and change into a vector.



# Creating lists.  
list1 <- list(10:20)  
print(list1)  

list2 <-list(5:15)  
print(list2)  

# Converting the lists to vectors.  
v1 <- unlist(list1)  
v2 <- unlist(list2)  

print(v1)  
print(v2)  

# adding the vectors  
result <- v1+v2  
print(result)  





# unlist() : converts the list into vectors;

list3<-list(5:9)
list3
list4<-list(14:19)
list4

v1<-unlist(list3)
v2<-unlist(list4)
class(v1)
typeof(v1)
class(v2)
typeof(v2)



# merging the two lists; 
list3<-list(5:9)
list4<-list(14:19)

mer<-list(list3, list4)
mer






## from the syllbous topics:

#Naming Components:
You can name the components of a list using the names() function or directly by assigning names with the <- operator. For example:

my_list <- list(a = 1, b = 2, c = 3)
names(my_list) <- c("first", "second", "third")



#Extracting Components:
#To extract components from a list, you can use either numeric indices or names. You can use single or double brackets for extraction. For example:

my_list <- list(a = 1, b = 2, c = 3)
my_list[[2]]   # Extracts the second component using numeric index
my_list[["b"]] # Extracts the component named "b"



#Adding Components:
#You can add components to a list using the assignment operator 

my_list <- list(a = 1, b = 2)
my_list$c <- 3   # Adds a new component named "c" with value 3
my_list


#Deleting Components:
You can delete components from a list using the NULL keyword or negative indexing

my_list <- list(a = 1, b = 2, c = 3)
my_list$c <- NULL   # Deletes the component named "c"
my_list <- my_list[-2]  # Deletes the second component using negative indexing



#Subsetting a List:
#You can subset a list to create a new list containing selected components. This can be done using numeric indices, names, or logical conditions

my_list <- list(a = 1, b = 2, c = 3, d = 4)
subset_list <- my_list[c(1, 3)]   # Subsets to include first and third components
subset_list <- my_list[c("a", "c")]   # Subsets to include components named "a" and "c"
subset_list <- my_list[my_list > 2]   # Subsets based on a logical condition
print(subset_list)

