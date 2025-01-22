#KeyWord in R languages..
# - **Definition**: Keywords are reserved words with special meanings in programming languages.
# 
# - **Purpose**: They serve as commands or parameters, distinguishing them from regular identifiers.
# 
# - **Presence in R**: R, like other languages, has its own set of keywords.
# 
# - **Prohibition as Variables**: Keywords cannot be used as variable names.
# 
# - **Also Called Reserved Names**: Keywords are often referred to as "reserved names."
# 
# - **Examples in R**: Examples of R keywords include `if`, `else`, `for`, `while`, etc.
# 
# - **Language Evolution**: Programming languages may introduce new keywords over time.
\


# ***There are the following keywords as per ?reserved or help(reserved) command:
  

if, else, repeat, while, function, for, next, break, TRUE, FALSE, NULL, inf, NaN, 
NA, NA_integer_, NA_real_, NA_complex_ and NA_character_ ..


# - **if Statement Structure**: In R, the if statement comprises a Boolean expression followed by one or more statements.
# 
# - **Purpose**: Primarily used for decision-making, determining whether a block of code will execute based on the evaluation of a condition.
# 
# - **Boolean Expression**: The condition within the if statement evaluates to either TRUE or FALSE. `  t4g1rv23t`
# 
# - **Control Flow**: Controls the flow of execution in a program; if the condition is TRUE, the associated block of code is executed; otherwise, it is skipped.
# 
# - **Basic Conditional Statement**: Representing the most basic form of conditional logic in R, it facilitates straightforward decision-making processes.
# 
# - **Common Application**: Frequently employed for implementing simple branching logic within R scripts and functions.
# 
# - **Example**:
#   ```r


# # Example illustrating the usage of if statement
x<-15
if(x>5){
  print("15 is greater than the 5")
}

#another methos.
a<-11  
if(a<15)  
  +print("I am lesser than 15")  

# In this example, if the value of `x` is greater than 5, the statement "x is greater than 5" will be printed; otherwise, it will be skipped.
# 
# 


# else:
#else statement is associated with if statement. When the if statement's condition is false only then else block will be executed. 


a<-22
if(a<20){
  cat("i am less than 20")
}else{
  cat("I am larger than 20")
}



#repeat:
# The repeat keyword is used to iterate over a block of code multiple numbers of times. In R, repeat is a loop, and in this loop statement, there is no condition to exit from the loop. 
# For exiting the loop, we will use the break statement.
x<-1
repeat{
  cat(x, " ")
  x=x+1
  
if(x==6){
  break;
}
}

#function:

# A while keyword is used as a loop. The while loop is executed util the given condition is true. This is also used to make an infinite loop..


a<-20
while(a!=0){
  cat(a, " ")
  a=a-2
}


#Function:

A function is an object in R programing. The keyword function is used to create a user-define fucntion in. R. R has some pre-defined fucntions also, such as seq, mean and sum;

# code: 
new.function<-function(n){
  for(i in 1:n){
    a<-i^2
    print(a)
    
  }
}
new.function(10)


# for:
The for is a keyword which is used for looping("cycling or iterating.") or iterating("Iteration is when you need to perform a process repeatedly.") over a sequence (dictionary, string, list, set or tuple).
We can execute a set of a statement once for each item in the iterator (list, set, tuple, etc.) with the help of for loop


v<-LETTERS[1:4] #LETTERS->  print the alphabets only likes A.............Z;
for(i in v){
  print(i)
}


# important lines
  
  1. **Purpose:** The `for` keyword is utilized for looping or iterating over a sequence in R, such as vectors, lists, or other data structures.

2. **Iteration Over a Vector:**
  
# Example of iterating over a vector
vector <- c(1,2,3,4,5)
for(items in vector){
  print(items)
}
# explain the code: This code snippet iterates over each element in the vector `vector` and prints each element.



3. #**Iteration Over a List:**
  
  
# Example of iterating over a list
my_list <- list(a=1, b=2, c=3)
for (item in my_list) {
  print(item)
}
```
Here, the loop iterates over each element in the list `my_list` and prints each element.


4.# **Iteration Over a Character String:**
  

# Example of iterating over a character string
string <- "Hello"
for (character in string) {
  print(character) # ->  # -> The provided R code snippet iterates over each character in the string "Hello" and prints each character. Here's how it prints:
}

In this case, the loop iterates over each character in the string `"Hello"` and prints each character.



5. **Iteration Over a Set or Tuple:** (Note: R does not have built-in set or tuple data structures like Python)

#For iteration over sets or tuples, one would typically convert them to vectors or lists and then use the `for` loop as shown in the examples above.



#*** next **** -> The next keyword skips the current iteration of a loop without terminating it. When R parser found next, it skips further evaluation and starts the new iteration of the loop.

v<-LETTERS[1:10]
for(i in v){
  if(i=='E'){
    next
  }
  
  print(i)
}


#examples of using next to skip odd numbers in a loop
for(i in 1:10){
  if(i%%2!=0){
    next # skip odd numbers
  }
  print(i)
}



values <- c(1,23,4,5,67,9)
for(i in values){
  if(i==5){
    next #skip the values 5
  }
  print(i)
}
is.na(x) <- value



#  next
The next keyword skips the current iteration of a loop without terminating it. When R parser found next, it skips further evaluation and starts the new iteration of the loop.


v <- LETTERS[1:6]  
for ( i in v) {  
  if (i == "D") {  
    next  
  }  
  print(i)  
}  





# break
The break keyword is used to terminate the loop if the condition is true. The control of the program firstly passes to the outer statement then passes to the body of the break statement.

Example:
  
  n<-1  
while(n<10){  
  if(n==3)  
    break  
  n=n+1  
  cat(n,"\n")  
}  
cat("End of the program")  





## TRUE/FALSE
The TRUE and FALSE keywords are used to represent a Boolean true and Boolean false. If the given statement is true, then the interpreter returns true else the interpreter returns false.



## NULL
In R, NULL represents the null object. NULL is used to represent missing and undefined values. NULL is the logical representation of a statement which is neither TRUE nor FALSE.

Example:
  
  as.null(list(a = 1, b = "c"))  


##Inf and NaN
The is.finite and is.infinite function returns a vector of the same length indicating which elements are finite or infinite.

Inf and -Inf are positive and negative infinity. NaN stands for 'Not a Number.' NaN applies on numeric values and real and imaginary parts of complex values, but it will not apply to the values of integer vectors.

Usage

x=12
is.finite(x)  
is.infinite(x)  
is.nan(x)  




#NA
NA is a logical constant of length 1 that contains a missing value indicator. It can be coerced to any other vector type except raw. There are other types of constant also, such as NA_Integer_, NA_real_, NA_complex_, and NA_character. These constants are of the other atomic vector type which supports missing values.

Usage

NA  

is.na(x)  
anyNA(x, recursive = FALSE)  


## S3 method for class 'data.frame'  
is.na(x)  
is.na(x) <- value  











