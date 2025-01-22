# - **Definition of the if Statement**: The if statement in programming comprises Boolean expressions followed by one or more statements. It serves as a basic decision-making construct allowing execution of code based on specified conditions.
# 
# - **Conditional Nature**: The if statement evaluates the truthfulness of a condition and executes a block of code only if the condition is true.
# 
# - **Execution Based on Condition**: If the Boolean expression within the if statement evaluates to true, the associated block of code is executed; otherwise, it is skipped.
# 
# - **Decision-Making Functionality**: It assists in making decisions within a program by executing specific actions or displaying information based on the outcome of the condition.
# 
# - **Conditional Execution**: The block of code inside the if statement executes only when the Boolean expression evaluates to true. If the expression evaluates to false, the code following the condition will run, or the program will proceed to the next section.
# 
# - **Simplest Form of Decision-Making**: Representing the most straightforward form of decision-making, the if statement enables programmers to incorporate conditional logic into their code efficiently.

## boolean Expression in if statement

if(boolean_expression){
  // if the boolean expression is true, then statement(s) will be executed.
}


# Ex1.
x<-24L # integer no.
y<- "shubham"

if(is.integer(x)){
  print("x is integer")
}

# ex 2:
x<-20
y<-24
count = 0
if(x<y){
  cat(x, "is a smaller number\n")
  count = 1
}

if(count==1){
  cat("Block is successfully execute")
}



# ex 3:
  
x <- 1
y <- 24

count <- 0

while (x < y) {
  cat(x, "is smaller number\n")
  x <- x + 2
  if (x == 16) {
    break
  }
}


# Example 4
x <-24  
if(x%%2==0){  
  cat(x," is an even number")  
}  
if(x%%2!=0){  
  cat(x," is an odd number")  
}  


# Example 5:

year = 2012
if(year %% 4==0){
  if(year %% 100 == 0){
    if(year%%400==0){
      cat(year, "is a leap year")
    }else{
      cat(year, "is not a leap year")
    }
  }else{
    cat(year, "is a leap year")
  }
}else{
  cat(year, " is not a leap year")
}



## ****** ELSE ******

# provides us with an optional else block which gets executed if the condition for if block is false.  If the condition provided to if block is true then the statement within the if block gets executed, else the statement within the else block gets executed.

Syntax:
  
  if(condition is true) {
    
    execute this statement
    
  } else {
    
    execute this statement 
    
  }


# for boolean expressions:

if(boolean_expression) {  
  // statement(s) will be executed if the boolean expression is true.  
} else {  
  // statement(s) will be executed if the boolean expression is false.  
}  

# Examples 1:
# local variable definition  
a<- 100  
#checking boolean condition  
if(a<20){  
  # if the condition is true then print the following  
  cat("a is less than 20\n")  
}else{  
  # if the condition is false then print the following  
  cat("a is not less than 20\n")  
}  
cat("The value of a is", a) 






# R if-else statement Example
a <- 67
b <- 76


# This example will execute else block
if(a > b)
{
  c <- a - b
  print("condition a > b is TRUE")
  print(paste("Difference between a, b is : ", c))
} else
{
  c <- a - b
  print("condition a > b is FALSE")
  print(paste("Difference between a, b is : ", c))
}


-------------
  
x <- c("Hardwork","is","the","key","of","success")  
if("key" %in% x){
  print("key is found")
}else{
  print("key is not found")
}


a<- 100  
#checking boolean condition  
if(a<20){  
  cat("a is less than 20")  
  if(a%%2==0){  
    cat(" and an even number\n")  
  }  
  else{  
    cat(" but not an even number\n")  
  }  
}else{  
  cat("a is greater than 20")  
  if(a%%2==0){  
    cat(" and an even number\n")  
  }  
  else{  
    cat(" but not an even number\n")  
  }  
}  




a<- 'u'  
if(a=='a'||a=='e'||a=='i'||a=='o'||a=='u'||a=='A'||a=='E'||a=='I'||a=='O'||a=='U'){  
  cat("character is a vowel\n")     
}else{  
  cat("character is a constant")  
}  
cat("character is =",a)  






## ******* if-else-if ladder ******* 

# - **Nested if-else Statement**:
#   - Also known as a nested if-else statement, it consists of an optional else if...else statement following the initial if statement.
# 
# - **Purpose**:
#   - Used to test multiple conditions within a single if...else if statement, providing a structured approach to decision-making.
# 
# - **Key Points**:
#   - An if statement may have zero or one else statement, which must appear after any else if statements.
# - Multiple else if statements can precede the else statement, allowing for testing of various conditions sequentially.
# - Once an else if statement evaluates to true, subsequent else if statements or else statements are skipped, ensuring that only the first matching condition is executed.
# 
# - **Flow Control**:
#   - Control flow within the nested if-else statement follows a sequential path, with each condition being evaluated in order until a true condition is encountered.
# 

# **Example**:

if (condition1) {
  // Code block executed if condition1 is true
} else if (condition2) {
  // Code block executed if condition2 is true
} else if (condition3) {
  // Code block executed if condition3 is true
} else {
  // Code block executed if none of the above conditions are true
}




# **Structured Decision-Making**:
  - Provides a structured approach to handling multiple conditions, enhancing code readability and maintainability.



# eg 1:


# R if-else-if ladder Example
a <- 67
b <- 76
c <- 99


if(a > b && b > c)
{
  print("condition a > b > c is TRUE")
} else if(a < b && b > c)
{
  print("condition a < b > c is TRUE")
} else if(a < b && b < c)
{
  print("condition a < b < c  is TRUE")
}

-------------------------------------------------------------------
  

age <- as.integer(readline(prompt = "Enter age : "))
if(age < 18) {
  print("You are a child")
}else if (age > 30) {
  print("You are an old guy")
}else {
  print("You are an adult")
}

age1 <- readline(prompt="Enter age: ")  
age1 <- as.integer(age1)  
if(age1<18)  
  print("You are child")  
else if(age1>30)  
  print("You are old guy")  
else  
  print("You are adult")  



marks=83;  
if(marks>75){  
  print("First class")  
}else if(marks>65){  
  print("Second class")  
}else if(marks>55){  
  print("Third class")  
}else{  
  print("Fail")  
}


cat("1) For Addition\n")  
cat("2) For Subtraction\n")  
cat("3) For Division\n")  
cat("4) For multiplication\n")  
n1<-readline(prompt="Enter first number:")  
n2<-readline(prompt="Enter second number:")  
choice<-readline(prompt="Enter your choice:")  
n1<- as.integer(n1)  
n2<- as.integer(n2)  
choice<- as.integer(choice)  
if(choice==1){  
  sum <-(n1+n2)  
  cat("sum=",sum)  
}else if(choice==2){  
  sub<-(n1-n2)  
  cat("sub=",sub)  
}else if(choice==3){  
  div<-n1/n2  
  cat("Division=",div)  
}else if(choice==4){  
  mul<-n1*n2  
  cat("mul=",mul)  
}else{  
  cat("wrong choice")  
}  



x <- c("Hardwork","is","the","key","of","success")  
if("Success" %in% x) {  
  print("success is found in the first time")  
} else if ("success" %in% x) {  
  print("success is found in the second time")  
} else {  
  print("No success found")  
}  




n1=4  
n2=87  
n3=43  
n4=74  
if(n1>n2){  
  if(n1>n3&&n1>n4){  
    largest=n1  
  }  
}else if(n2>n3){  
  if(n2>n1&&n2>n4){  
    largest=n2  
  }  
}else if(n3>n4){  
  if(n3>n1&&n3>n2){  
    largest=n3  
  }  
}else{  
  largest=n4  
}  
cat("Largest number is =",largest)  



# Nested if-else statement;
Definition:
  # Nested if-else statements involve the placement of if-else blocks within other if or else blocks.
# These nested structures allow for more complex conditional branching.
# Execution flow depends on the evaluation of multiple conditions in a hierarchical manner.
  
  Syntax:
  
  if condition1:
  # Parent if block
  if condition2:
  # Child if block
  # Code to be executed if both condition1 and condition2 are]\][]p[o';lo,ikjmhbgfvdcsxza] true
  else:
  # Code to be executed if condition1 is true and condition2 is false
  else:
  # Code to be executed if condition1 is false
  if condition3:
  # Child if block within else block
  # Code to be executed if condition1 is false and condition3 is true
  else:
  # Code to be executed if condition1 is false and condition3 is false
  

  Execution Flow:
  
The parent if condition (condition1) is evaluated.
If it iss true, the code inside the parent if block is executed.
If condition1 is true, the child if condition (condition2) is evaluated.
If condition2 is true, the code inside the child if block is executed.
If condition2 is false, the code inside the else block of the parent if block is executed.
If condition1 is false, the code inside the else block of the parent if block is executed.
If condition1 is false, any additional nested if-else blocks within the else block are evaluated as per their conditions.


# R Nested if else statement Example
a <- 10
b <- 11


if(a == 10)
{
  if(b == 10)
  {
    print("a:10 b:10") 
  } else
  {
    print("a:10 b:11")	 
  }
} else
{
  if(a == 11)
  {
    print("a:11 b:10")
  } else
  {
    print("a:11 b:11")
  }
}


