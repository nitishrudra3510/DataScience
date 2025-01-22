# **R For Loop:**
#   
#   - **Definition**:
#   - A for loop is a popular control flow statement used to iterate over a sequence of elements in R.
# - It allows for the repetition of a sequence of instructions under certain conditions, automating repetitive tasks within code.
# 
# - **Similarity to While Loop**:
#   - Similar to a while loop, a for loop iterates over a sequence, but with one key difference:
#   - In a while loop, the condition is checked before the execution of the loop body.
# - In a for loop, the condition is checked after the execution of the loop body.
# 

- **Syntax in C/C++**:

for (initialization_statement; test_expression; update_statement) {
  // Statements inside the body of the loop
}

# 
# - **Execution Flow in C/C++**:
#   - The initialization statement is executed only once.
# - After initialization, the test expression is evaluated.
# - If the test expression is true, the statements inside the loop body are executed, followed by the update statement.
# - The test expression is evaluated again.
# - The loop continues until the test expression becomes false.
# 
# - **For Loop in R Programming**:
#   - A for loop in R serves as a repetition control structure, allowing efficient execution of code that needs to run a certain number of times.

- **Syntax in R**:
  - In R, the for loop syntax is as follows:

for (variable in sequence) {
  # Statements inside the loop body
}



# - Instead of initializing and declaring a loop counter variable, R utilizes a loop variable declared as part of the for loop syntax.
# 
# - **Usage in R**:
#   - In R, the loop variable takes on each value in the specified sequence during each iteration, allowing the loop body to operate on each value sequentially.
# 
# 
# 


# examples1: we iterate all the element of a vectors and print the current values.


fruit<-c('Apple', 'Orange', "Guava", "Pineapple", "Banana", "Graphs")
# creating the for statement;
for(i in fruit){
  print(i)
}



# Example 2: creates a non-linear function with the help of the polynomial of x between 1 and 5 and store it in a list.

# Creating an empty list  
list <- c()  
# Creating a for statement to populate the list  
for (i in seq(1, 5, by=1)) {  
  list[[i]] <- i*i  
}  
print(list)  



# Example 3: For loop over a matrix
#creating a matrix;
mat <- matrix(data=seq(10, 21, by=1), nrow = 6, ncol = 2)

#creating the loop with r and c to iterate over the matrix
for(r in 1:nrow(mat))
  for(c in 1:ncol(mat))
    print(paste("mat[", r, ",",c, "]", mat[r,c]))
print(mat)


# R Program to demonstrate the use of
# for loop along with concatenate
for (i in c(-8, 9, 11, 45))
{
  print(i)
}





Using concatenate outside the loop R – For loop
# R Program to demonstrate the use of 
# for loop with vector
x <- c(-8, 9, 11, 45)
for (i in x)
{
  print(i)
}





# ********* Nested Loop ***********
# R Program to demonstrate the use of 
# nested for loop
for (i in 1:3)
{
  for (j in 1:i)
  {
    print(i * j)
  }
}



# break statement;

# R Program to demonstrate the use of 
# break in for loop
for (i in c(3, 6, 23, 19, 0, 21))
{
  if (i == 0)
  {
    break # jump the statement and continue with the next statement outside the loop (if any)... 
  }
  print(i)
}
print("Outside Loop")



Next Statement
It discontinues a particular iteration and jumps to the next iteration. So when next is encountered, 
that iteration is discarded and the condition is checked again. If true, the next iteration is executed. Hence, the next statement is used to skip a particular iteration in the loop.

Example: 
  
  # R Program to demonstrate the use of
  # next in for loop
  for (i in c(3, 6, 23, 19, 0, 21))
  {
    if (i == 0)
    {
      next
    }
    print(i)
  }
print('Outside Loop')





# creating multiple plots within for loops in R

# Create the matrix of data
mat <- matrix(rnorm(100), ncol = 5)

# Open a new plotting device with larger size
pdf("histograms.pdf", width = 10, height = 8)

# Set up the plot layout
par(mfrow = c(2,3))

# Loop over columns of the matrix
for(i in 1:5){
  hist(mat[, i], main = paste("Column", i), xlab = "Values", col = "lightblue")
}

# Close the PDF device
dev.off()





# hist -> hist(mat[, i], main = paste("Column", i), xlab = "Values", col = "lightblue"): Inside the loop, this line creates a histogram for the
ith column of the matrix using hist(). mat[, i] selects the ith column of the matrix, main = paste("Column", i) sets the title of the histogram
to "Column i", xlab = "Values" sets the label for the x-axis, and col = "lightblue" sets the color of the bars in the histogram to light blue.

