WHILE -> initialize KA PART PAHLE HOTA HAI WHILE KE

# A while loop is a type of control flow statements which is used to iterate a block of code several numbers of times. The while loop terminates when the value of the Boolean expression will be false.
# 
# In while loop, firstly the condition will be checked and then after the body of the statement will execute. In this statement, the condition will be checked n+1 time, rather than n times.
# 

# How does a While loop execute?  

 # Control falls into the while loop.
 # The flow jumps to Condition
 # Condition is tested. 
 # If the Condition yields true, the flow goes into the Body.
 # If the Condition yields false, the flow goes outside the loop
 # The statements inside the body of the loop get executed.
 # Updation takes place.
 # Control flows back to Step 2.
 # The while loop has ended and the flow has gone outside.
 # Important Points about while loop in R language:  
 #  It seems to be that while the loop will run forever but it is not true, condition is provided to stop it. 
 # When the condition is tested and the result is false then the loop is terminated.
 # And when the tested result is True, then the loop will continue its execution.


v<-c("Hello", "programing", "language")
x<-2
while(x<5){
  print(v)
  x<-x+1
}
print("while loop out")



result<-1
i <- 1
while(i<6){
  print(result)
  
  i=i+1
  result = result+1
}





# while loop break;

result <- c(readline(print("Enter the user name: ")))
i<-1
while(i<6){
  print(result)
  if(i==3){
    break
  }
  
  i=i+1
}




#R – while loop next
# Set an initial value for a variable
x <- 1

# Loop while x is less than 10
while (x < 10) {
  if (x == 3) {
    # Skip iteration when x is 3
    x <- x + 1
    next
  }
  print(paste("The current value of x is:", x))
  x <- x + 1
}

# Print a message after the loop has finished
print("The loop has ended.")



#while loop with if, else;

x<-1

while(x<=10){
  if(x%% 2==0){
    print(paste(x, "is even"))
  }else{
    print(paste(x, "is odd"))
  }
  
  x<-x+1
}




# program to find the sum of the digits of the number.

n<-as.integer(readline(prompt = "please enter any integer value : "))
sum<-0
while(n!=0){
  sum=sum+(n%%10)
  n=as.integer(n/10)
}
cat("Sum of the digits of the number is = ", sum)



# program to check a number is armstrong number  or not.

n<- as.integer(readline(prompt = "Enter any value of a number : "))
original_number = n
sum<-0

#count the  numbers of the digits in the number
num_digits = nchar(n)



while(n!=0){
  r<-n%%10
  sum<-r^num_digits
  n<-n %/% 10
}

if(original_number==sum){
  cat(original_number," is a armstrong number")
}else{
  cat(original_number, "is not a armstrong number")
}




# Prompt the user to enter a number
n <- as.integer(readline(prompt = "Enter any value of a number: "))

sum <- 0

# Count the number of digits in the number
num_digits <- nchar(n)

# Loop to calculate the sum of cubes of digits
temp <- n
while (temp != 0) {
  r <- temp %% 10  # Extract the last digit
  sum <- sum + r^num_digits  # Add the cube of the digit to the sum
  temp <- floor(temp/10)  # Remove the last digit
}

# Check if the original number is equal to the sum of cubes of its digits
if (n == sum) {
  cat(original_number, "is an Armstrong number\n")
} else {
  cat(original_number, "is not an Armstrong number\n")
}






{
isArmstrong <- function(num)
sum = 0  
temp =   num
while(temp > 0) {  
  digit = temp %% 10  
  sumsum = sum + (digit ^ 3)  
  temp = floor(temp / 10)  
}  
if(num == sum) {  
  print(paste(num, "is an Armstrong number"))  
} else {  
  print(paste(num, "is not an Armstrong number"))  
}  


# function calling

isArmstrong(153)

isArmstrong(29)


}



# write the program to check a number is plaindrome or not..

n <- as.integer(readline(prompt = "Enter any a number : "))
rev <- 0
temp<-n
while(temp>0){
 rem<-n%%10
 rev=rem+(rev*10)
 n<-as.integer(n/10)
}

if(temp==rev){
  cat(temp, "is a planedrome number ")
}else{
  cat(temp, "is not a planedrome number")
}



#program to find the frequency of a digit in the number..

num = as.integer(readline(prompt = "Enter a number : "))
digit = as.integer(readline(prompt = "Enter digit : "))
n = numN
count = 0
while(num>0){
  if(num%%10==digit)
    count=count+1
  num=as.integer(num/10)
}

print(paste("The frequency of", digit, "in",n,"is = ", count))