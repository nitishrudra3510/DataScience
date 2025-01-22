//function in R langauge.

#default parameter without return statement.
sum<-function(){
  print("hello world");
  
}
sum();

--------------------------------------------------------------------------------------------------------------
sum<-function(a){
  print(a);
}
sum("Hello World!");


--------------------------------------------------------------------------------------------------------------
  
#default value (with parameter, without return value statement) 
  sum<-function(a="hi"){
    print(a);
  }
sum("Hello World!");  # Hello World
sum();    # hi


--------------------------------------------------------------------------------------------------------------
  
  #default value (with parameter, with return value statement) 
  sum<-function(a="hi"){
    return (a);
  }
print(sum("Hello World!"));  # Hello World
sum();    # hi

--------------------------------------------------------------------------------------------------------------
#sum of two numbers using function with parameter.
  
sum<-function(a,b){
  return (a+b)
}{
a<-as.integer(readline(prompt = "Enter a value ; "));
b<-as.integer(readline(prompt = "Enter b value : "));
print(sum(a,b));}

--------------------------------------------------------------------------------------------------------------
  
#area of a retangle.

Area<-function(l,b){
  return (l*b);
}{
  l<-as.integer(readline(prompt = "Enter a value ; "));
  b<-as.integer(readline(prompt = "Enter b value : "));
  cat("Area of rectangle : ",Area(l,b));
}


--------------------------------------------------------------------------------------------------------------
  
take a list of numbers using vector and calculate the sum,  mean, median, product of these numbers 
using functions.

sum1<-function(numbers){
  return(sum(numbers))
}
mean1<-function(){
  return(mean(numbers))
}
median1<-function(){
  return(median(numbers))
}

product<-function(){
  return(product(numbers))
}

main<-func{
numbers<-c(1,2,3,4,5)

tottalsum<-sum1(numbers)
cat("Sum : ", tottalsum, "\n")

cat(" : Median", median1(numbers))
cat("Mean ", mean1(numbers))
cat("Product : ", tottal_sum(numbers))

}
main()






## another code:


# Function to calculate sum of numbers
calculate_sum <- function(numbers) {
  return(sum(numbers))
}

# Function to calculate mean of numbers
calculate_mean <- function(numbers) {
  return(mean(numbers))
}

# Function to calculate median of numbers
calculate_median <- function(numbers) {
  return(median(numbers))
}

# Function to calculate product of numbers
calculate_product <- function(numbers) {
  return(prod(numbers))
}

# Main function
main <- function() {
  # Taking input from the user
  numbers <- readline(prompt = "Enter a list of numbers separated by space: ")
  numbers <- as.numeric(unlist(strsplit(numbers, " ")))
  
  # Calculating sum
  total_sum <- calculate_sum(numbers)
  cat("Sum:", total_sum, "\n")
  
  # Calculating mean
  mean_value <- calculate_mean(numbers)
  cat("Mean:", mean_value, "\n")
  
  # Calculating median
  median_value <- calculate_median(numbers)
  cat("Median:", median_value, "\n")
  
  # Calculating product
  product_value <- calculate_product(numbers)
  cat("Product:", product_value, "\n")
}

# Calling main function
main()



--------------------------------------------------------------------------------------------------------------
  
  
#fcatorial number:
  
fac<-function(n){
  if(n==0 | n==1){
    return (1);
  }else{
    return (n*fac(n-1));
  }
}

n<-5
print(fac(n))


--------------------------------------------------------------------------------------------------------------

fac<-factorial(n){
  if(n==0){
    return(0);
  }else{
    return (fib(n-1)+fib(n-2))
  }
  
}

n<-5
print(fac(n))
