# R matrix = R-matrix is a two-dimensional arrangement of data in rows and columns.

**R – Matrices**
  
  **Introduction:**
  A matrix in R is a two-dimensional arrangement of data organized in rows and columns. In R programming,
matrices are considered as two-dimensional homogeneous data structures. This means that all elements in a
matrix must be of the same data type. Matrices play a crucial role in various mathematical and statistical operations.


**Creating a Matrix in R:**
  To create a matrix in R, the `matrix()` function is used. This function requires several arguments to specify the dimensions and content of the matrix.


**Syntax:**
  ```R
matrix(data, nrow, ncol, byrow, dimnames)
```

**Parameters:**
  - `data`: The values you want to enter into the matrix. This can be a vector or a set of values.
- `nrow`: The number of rows in the matrix.
- `ncol`: The number of columns in the matrix.
- `byrow`: A logical value indicating whether the values should be filled by rows (`TRUE`) or by columns (`FALSE`). The default is `FALSE`, meaning values are filled by columns.
- `dimnames`: Optional. Names for rows and columns of the matrix.

**Notes:**
  1. Matrices are two-dimensional arrays, with rows running horizontally and columns running vertically.
2. All elements within a matrix must be of the same data type.
3. The `matrix()` function is used to create a matrix in R, and it requires specifying the data, number of rows, and number of columns.
4. By default, matrices are filled column-wise, meaning elements are populated by columns. This behavior can be changed by setting the `byrow` parameter to `TRUE`.
5. Optionally, you can provide names for rows and columns using the `dimnames` parameter.

Matrices are fundamental data structures in R, extensively used in various mathematical operations, statistical analysis, and data manipulation tasks. Understanding how to
create and manipulate matrices is essential for proficient R programming.


------------------------------------------------

#diaginal matrix; A diagonal matrix is a matrix in which the entries outside the main diagonal are all zero. T

# Syntax: diag(k, m, n)

Parameters: 
  k: the constants/array 
m: no of rows 
n: no of columns  


# Diagonal matrix having 3 rows and 3 columns
# filled by array of elements (5, 3, 3)

print(diag(c(5,3,4),3,3))

------------------------------------------------
 # 3. Identity matrix: 
 # An identity matrix in which all the elements of the principal diagonal are ones and all other elements are zeros. To create such a R matrix the syntax is given below:
  
  Syntax: diag(k, m, n)
Parameters: 
  k: 1 
m: no of rows 
n: no of columns 


# Identity matrix having
# 3 rows and 3 columns
print(diag(1, 3, 3))   
  
  
------------------------------------------------
  
#  4. Matrix Metrics
# Matrix metrics tell you about the Matrix you created. You might want to know the number of rows, number of columns, dimensions of a Matrix.

Below Example will help you in answering following questions:
  
  How can you know the dimension of the matrix?
  How can you know how many rows are there in the matrix?
  How many columns are in the matrix?
  How many elements are there in the matrix?
  
# Example: 
  # R program to illustrate
  # matrix metrics
  
  # Create a 3x3 matrix
  A = matrix(
    c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
    nrow = 3,			 
    ncol = 3,			 
    byrow = TRUE		
  )
cat("The 3x3 matrix:\n")
print(A)

cat("Dimension of the matrix:\n")
print(dim(A))

cat("Number of rows:\n")
print(nrow(A))

cat("Number of columns:\n")
print(ncol(A))

cat("Number of elements:\n")
print(length(A))
# OR
print(prod(dim(A)))

  
  
  
mat2<- matrix(c(1,2,3,4,4,9,5,5,6,7), nrow = 2, ncol = 5, byrow = FALSE)
mat2
mat1<- matrix(c(2,93,32,32,56,3,4,3,4,4), nrow = 4, ncol = 2, byrow =FALSE)
mat1

x<-matrix(c(5:15), nrow = 4, byrow = TRUE)
y<-matrix(c(7:18), nrow = 4, byrow = FALSE)

x
y

row_names <- c("r1", "r2", "r3", "r4")
col_names<- c("c1", "c2", "c3")
z<-matrix(c(7:18), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))
z

cat("The 3x3 matrix:\n")
print(z)

# access the elements;
print(z[4, 3]) # accessing 5
print(z[2,]) # accessing the 10 11 12

print(z[,2])
print(z[1,3])

cat("Accessing first and second column \n")
print(z[, 1:2])



z
z[4,3]<-0
z

z[z==11]<-0
z

z[z>11]<-0
z



# Accessing the submatrixes in R:

# create a 3*3 matrix;
A = matrix(
  c(1,2,3,4,5,54,4,32,23),
  nrow = 3, ncol = 3, byrow = TRUE
)
cat("The 3*3 matrix:\n")
print(A)
cat("Accessing the first three rows and the first two columns\n")
print(A[1:3, 1:2])


-----------------------------------------------------------------------------
# Modifying Elements of a R-Matrix
  # Create a 3x3 matrix
  B = matrix(
    c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
    nrow = 3,             
    ncol = 3,             
    byrow = TRUE         
  )
cat("The 3x3 matrix:\n")
print(B)

# Editing the 3rd rows and 3rd column element
# from 9 to 30
# by direct assignments
B[3,3] = 30
cat("After edited the matrix\n")
print(B)
  
  
-----------------------------------------------------------------------------
  
  
  
# addition of matrix
# cbind and rbind use to add the columns and rows respectively..

# rbind -> concatination of matrix;
  
  # R program to illustrate
  # concatenation of a row in metrics
  
# Create a 3x3 matrix
A = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3,			 
  ncol = 3,			 
  byrow = TRUE		
)
cat("The 3x3 matrix:\n")
print(A)

# Creating another 1x3 matrix
B = matrix(
  c(10, 11, 12),
  nrow = 1,
  ncol = 3
)
cat("The 1x3 matrix:\n")
print(B)

# Add a new row using rbind()
C = rbind(A, B)

cat("After concatenation of a row:\n")
print(C)




# adding the row 
number <- matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3,             
  ncol = 3,             
  byrow = TRUE         
)
cat("Before inserting a new row:\n")
print(number)

new_row <- c(10, 11, 12)

# transpose of the matrix using the t() functions: an operation in which we convert the rows of the matrix in column and column of the matrix in rows. 
t(number)



# inserting the new rows  at the second positions
number<- rbind(number[1, ], new_row, number[-1, ])
print(number)




---------------
  mat1<- matrix(c(2,93,32,32,56,3,4,3,4,4), nrow = 4, ncol = 2, byrow =FALSE)
mat1

x<-matrix(c(5:15), nrow = 4, byrow = TRUE)
y<-matrix(c(7:18), nrow = 4, byrow = FALSE)

x
y

row_names <- c("r1", "r2", "r3", "r4")
col_names<- c("c1", "c2", "c3")
z<-matrix(c(7:18), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))
z

cat("The 3x3 matrix:\n")
print(z)
rbind(z, c(2,3,4))
z

-----------------------------------------------------------------------------
  
# cbind :  
  # R program to illustrate
  # concatenation of a column in metrics
  
  # Create a 3x3 matrix
  A = matrix(
    c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
    nrow = 3,			 
    ncol = 3,			 
    byrow = TRUE		
  )
cat("The 3x3 matrix:\n")
print(A)

# Creating another 3x1 matrix
B = matrix(
  c(10, 11, 12),
  nrow = 3,
  ncol = 1,
  byrow = TRUE
)
cat("The 3x1 matrix:\n")
print(B)

# Add a new column using cbind()
C = cbind(A, B)

cat("After concatenation of a column:\n")
print(C)



-----

# Adding new columns

# Create a 3x3 matrix
number <- matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3,			 
  ncol = 3,			 
  byrow = TRUE		
)
cat("Before adding a new column:\n")
print(number)

# New column to be added
new_column <- c(10, 11, 12) # Define the new column

# Adding the new column at the end
number <- cbind(number, new_column)

cat("\nAfter adding a new column:\n")
print(number)



  
____________________________________
cbind(z, c(8,32,3,4))
z

-----------------------------------------------------------------------------
# deleting the rows AND COLUMNS
  # R program to illustrate
  # row deletion in metrics
  
  # Create a 3x3 matrix
  A = matrix(
    c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
    nrow = 3,			 
    ncol = 3,			 
    byrow = TRUE		
  )
cat("Before deleting the 2nd row\n")
print(A)

# 2nd-row deletion
A = A[-2, ]

cat("After deleted the 2nd row\n")
print(A)

  
# deleting the column;


# R program to illustrate
# column deletion in metrics

# Create a 3x3 matrix
A = matrix(
  c(1, 2, 3, 4, 5, 6, 7, 8, 9), 
  nrow = 3,			 
  ncol = 3,			 
  byrow = TRUE		
)
cat("Before deleting the 2nd column\n")
print(A)

# 2nd-row deletion
A = A[, -2]

cat("After deleted the 2nd column\n")
print(A)

  
  
  
  
  ________________________________________________________________________________








a1<-matrix(c(5:16), nrow = 4, ncol = 3, byrow = TRUE) # byrow. means = elements assign hoga row wise not column wise
a1


a2<-matrix(c(1:12), nrow = 4, ncol = 3, byrow = TRUE)
a2



________________________________________________________________________________

mat1<- matrix(c(2,93,32,32,56,3,4,3,4,4), nrow = 4, ncol = 2, byrow =FALSE)
mat1

x<-matrix(c(5:15), nrow = 4, byrow = TRUE)
y<-matrix(c(7:18), nrow = 4, byrow = FALSE)

x
y

row_names <- c("r1", "r2", "r3", "r4")
col_names<- c("c1", "c2", "c3")
z<-matrix(c(7:18), nrow = 4, byrow = TRUE, dimnames = list(row_names, col_names))
z

cat("The 3x3 matrix:\n")
print(z)
rbind(z, c(2,3,4))
z




# matrix operations:

# additions:
sum<-a1+a2
sum

#multiplication

mul<-a1*a2
mul

# divisions
div<-a1/a2
div


# substractions:
sub<-a1-a2
sub





