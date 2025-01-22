R- Reapeat loop-> yeha pr koi condition assign nahi hoti exit karne ke liye, but condition se exit karne ke liye break ka use hota hai

Repeat loop in R is used to iterate over a block of code multiple number of times. And also it executes the same code again
and again until a break statement is found.

Repeat loop, unlike other loops, doesn’t use a condition to exit the loop instead it looks for a break statement that executes
if a condition within the loop body results to be true. An infinite loop in R can be created very easily with the help of
the Repeat loop. The keyword used for the repeat loop is 'repeat'.


# flowchart works:

#   First, we have to initialize our variables than it will enter into the Repeat loop.
# This loop will execute the group of statements inside the loop.
# After that, we have to use any expression inside the loop to exit.
# It will check fo
r the condition. It will execute a break statement to exit from the loop
# If the condition is true.
# The statements inside the repeat loop will be executed again if the condition is false.

Syntax:
  
  repeat { 
    commands 
    if(condition) {
      break
    }
  }



result<- c("Hello World")
i <- 1

repeat{
  print(result)
  
  i <- i+1
  
  
  # breaking conditions.
  if(i>5){
    break
  }
}



# R program to illustrate repeat loop 

result <- 1
i <- 1

# test expression 
repeat { 
  
  print(result) 
  
  # update expression 
  i <- i + 1
  result = result + 1
  
  # Breaking condition 
  if(i > 5) { 
    break
  } 
} 




######
v<-c("Hello", "repeat", "loop")
cnt <- 2
repeat{
  print(v)
  cnt <- cnt+1
  
  if(cnt>5){
    break
  }
}





##############
sum <- 0
{
  n1 <- as.integer(readline(prompt = "Enter any integer value below 20: "))
}
if (n1 >= 20) {
  cat("Entered value is 20 or greater. Please enter a value below 20.")
} else {
  repeat {
    sum <- sum + n1
    n1 <- n1 + 1
    if (n1 > 20) {
      break
    }
  }
  cat("The sum of numbers from the repeat loop is: ", sum)
}




# infinte loop

total<- 0
number <- as.integer(readline(prompt = "please enter any integer value : "))
repeat{
  totalTotal = total+number
  numbernumber = number+1
  cat("sum is = ",total,"\n")
  
}



# repeat loop with next

a<-1
repeat{
  if(a==10)
  {
    break
    
  }
  
  if(a==7){
    a=a+1
    next
  }
  print(a)
  a<-a+1
}






# exam 5:
terms<-as.integer(readline(prompt="How many terms do you want ? "))
i<-1
repeat{
  print(paste("The cube of number ",i,"is = ",(i*i*i)))
  if(i==terms)
    break
  i<-i+1
}







# Initialize an empty vector to store the inputs
inputs <- numeric()

# Ask the user for the total number of inputs
num_inputs <- as.integer(readline(prompt = "How many inputs do you want to enter? "))

# Loop to get input for each item
for (i in 1:num_inputs) {
  value <- as.numeric(readline(prompt = paste("Enter value", i, ": ")))
  inputs <- c(inputs, value)  # Append each input to the inputs vector
}

# Print the inputs
cat("The inputs you entered are: ", inputs, "\n")






# multiple inputs fromt the users

# Initialize product variable
product <- 1

# Prompt the user for the total number of inputs
num_inputs <- as.integer(readline(prompt = "How many numbers do you want to multiply? "))

# Loop to get input for each number
for (i in 1:num_inputs) {
  num <- as.numeric(readline(prompt = paste("Enter number", i, ": ")))
  product <- product * num  # Multiply each input with the product
}


# Print the product
cat("The product of the numbers is:", product, "\n")




A<-as.integer(readline(prompt = "How many numbers do you want to multiply? "))

for(i in 1:A){
  num<- as.numeric(readline(prompt = paste("Enter name ", i, ": ")))
  product<-product*num
}

cat("The product of the numbers is: ", product, "\n")
