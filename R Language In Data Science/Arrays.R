## Arrays:

# Arrays are the data objects which allows us to store data in more than two dimensions. and defined or a fixed numbers of dimensions.
# array() (2,3,4) = array(row, col, matrix_no.)
#This array() function takes a vector as an input and to create an array it uses vectors values in the dim parameter.

# Uni-directionsal arrays are caled vectors with the length being their only dimension. Two-dimensional arrays are called matrices, consisting of fixed numbers of rows and columns. R Arrays consist of all elements of the same data type.


#For example- if we will create an array of dimension (2, 3, 4) then it will create 4 rectangular matrices of 2 row and 3 columns.

#syntax
Syntax:
  
  array(data, dim = (nrow, ncol, nmat), dimnames=names)

where

nrow: Number of rows

ncol : Number of columns

nmat: Number of matrices of dimensions nrow * ncol

dimnames : Default value/names of rows and column = NULL.




# Create vectors
v1 <- c(1, 3, 4, 2)
v2 <- c(10, 2, 32, 34, 3, 43)

# Create an array by combining v1 and v2
v3 <- array(c(v1, v2), dim = c(3, 3, 2))
print(v3)

# Initializing names for rows, columns, and matrices
col_names <- c("c1", "c2", "c3")
row_names <- c("r1", "r2", "r3")
mat_names <- c("mat1", "mat2", "mat3", "mat4")

# Create an array with dimensions and names
v3 <- array(c(v1, v2), dim = c(3, 3, 4), dimnames = list(row_names, col_names, mat_names))
v3



# Manipulation of elements
print(v3[3, , 2])   # Print the third row of the second matrix
print(v3[3, 2, 2])  # Print the value at the third row and second column of the second matrix
print(v3[3, 2, 1])  # Print the value at the third row and second column of the first matrix
print(v3[, 2, 1])   # Print the second column of the first matrix
print(v3[, , 1])    # Print the first matrix



# Merging arrays of matrices
v1 <- c(1, 3, 4, 2)
v2 <- c(10, 2, 32, 34, 3, 43)
v3 <- array(c(v1, v2), dim = c(3, 3, 2))
print(v3)

v4 <- c(1, 5, 8, 3)
v5 <- c(10, 92, 32, 34, 39, 73)
v6 <- array(c(v4, v5), dim = c(3, 3, 2))
print(v6)

v7 <- v3 + v6  # Add corresponding elements of v3 and v6
print(v7)




# Calculations across array elements


# For calculation purpose, r provides apply() function. This apply function contains three parameters i.e., x, margin, and function.

#apply(x, margin, fun)  = Here, x is an array, and a margin is the name of the dataset which is used and fun is the function which is to be applied to the elements of the array.



##Creating two vectors of different lengths  
vec1 <-c(1,3,5)  
vec2 <-c(10,11,12,13,14,15)  

#Taking the vectors as input to the array1   
res1 <- array(c(vec1,vec2),dim=c(3,3,2))  
print(res1)  

#using apply function   
result <- apply(res1,c(1),sum)  
print(result)  




