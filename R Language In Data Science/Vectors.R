# data structure in R :- to store data in memory..

# vectors;
# matrix;
# list
# array
# data frames


# vectors: it is sequence of elements which is the amazing share the same data types

#A vector supports logical, integer, double, character, complex, or raw data type.
The elements which are contained in vector known as components of the vector.
We can check the type of vector with the help of the typeof() function.


## elements of vectors are knoen as components

# length() : no. of elements in vectors
# types vectors: atomic vectors and list;



# atomic vectors : 
# how we create the vector:- use the c functions
a<- c(3,4,45,43,543,54)
a

b<- -3:5
b

sq<-seq(1,5, by=0.5) # gap 0.5 in every no.
sq



sq <- seq(1,5, length.out = 5)
sq



# types of atomic vectors:
# 1. numeric vectors;

numv <- c(12.4, 234.4, 45, 23, 89.145)
numv
class(numv)


intv<-c(3,4,5,3,24)
intv<as.integer(intv) # convert in integer;
class(intv)

intv<-c(3L,4L,5L,3L,24L)
class(intv) # integer vector


# character vectors:
charv <- c(1,5,8,7,9)
charv<-as.character(charv)
class(charv)

charvv <- c("ram", "syam", "sun")
class(charvv)



# logical vector;
TRUE, FALSE



# Creating logical vector
# using c() function
v1<- c(TRUE, FALSE, TRUE, NA)

# Displaying type of vector
typeof(v1)
class(v1)


# LENGTH OF THE R VECTORS

# Create a numeric vector
x <- c(1, 2, 3, 4, 5)

# Find the length of the vector
length(x)
# Create a character vector
y <- c("apple", "banana", "cherry")

# Find the length of the vector
length(y)
# Create a logical vector
z <- c(TRUE, FALSE, TRUE, TRUE)

# Find the length of the vector
length(z)







# accessing elements of vectors;
# by indexing [] 
# in R :-> starts indexing from 1 not 0.

char_vec <- c("ram"=123, "shayam"=32, "mohan"=31)
char_vec["shayam"]
char_vec[32] # it is not workings



a1<- c(1,2,34,5,4,6)
a1[c(TRUE, FALSE, TRUE, FALSE, TRUE, TRUE, FALSE, FALSE, TRUE)]



# VECTORS OPERATIONS;

a4<-c(4,3,2,3,5,5)
a1<- c(1,2,3,5,4,6)

a4+a1
a4-a1
a4/a1
a1/a4
a1*a4
charvv <- c("ram", "syam", "sun")
a3<-c(a1, charvv)
a3


a2 <- c("ram", "syam", "sun", "sohan")
a2[3]
a2[7]
a2[-2] # agar negative number hai to us indexing ko skip kar dega or baki ko print kar dega

a2[c(2:4)]

a2[c(2,3,2)]


# nameing of vectors;
z<-c("ram", "mohan", "sohan")
z
names(z)=c("y1", "y2", "y3")
z

z["y1"]




# R program to create Character Vectors

# by default numeric values 
# are converted into characters
v1<- c('geeks', '2', 'hello', 57) 

# Displaying type of vector
typeof(v1)




#In R programming, both typeof() and class() are functions used to examine objects, but they serve different purposes:
  
# typeof() Function:

  The typeof() function returns the type of an object is storage mode.
It provides information about how the data is stored in memory.
The possible values returned by typeof() include "integer", "double", "character", "logical", "raw", "complex", "list", "NULL", and "closure", among others.
This function is primarily used for internal R programming and to understand the fundamental data types of objects.


x <- 10
typeof(x)  # Output: "double"

y <- "Hello"
typeof(y)  # Output: "character"



# class() Function:
The class() function returns the class of an object, which describes its data type or structure.
It provides information about how the object should behave with respect to various operations and functions.
Objects in R can belong to multiple classes, as R supports multiple inheritance.
The class of an object is typically determined by its attributes or how it behaves with respect to certain functions and methods.
This function is commonly used in object-oriented programming in R and for understanding the high-level structure of objects.


x <- 10
class(x)  # Output: "numeric"

y <- "Hello"
class(y)  # Output: "character"






# vector functions = youtube videos KA HAI

# rep 
rep(c(2,3,4), time=4) # the vectors elements repeat 4 times
rep(c(1,4,8), each=2) # the vectors each elements repeat 2 times
rep(c(0,8), time=c(3,4)) # the vectors 0 elements and 8 elemetns repeat 0-3 times and 8-4 times repeats 

rep(1:4, length.out=8) # print upto 8;

# seq()
seq(from=3.5, to= 1.5, by=-.5)
seq(from=2.7, to=1.5, length.out = 8)



# any and al() functions

x<-1:10
any(x>5) # give the true = only one values should be greater than 5
any(x>15) # give the false

all(x>5) ## give the false = all the elements shoulb be greate than 5 then it will print true

all(x>0). # true








