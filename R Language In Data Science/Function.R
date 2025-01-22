# R Function -> a function is a set of statement to organise together to perform the specific tasks.
types: -> in-Built function, and user-defined function
# user defined 
#syntax:
func_name <- function(argunment1, argument2){
  //body()
}

#function ke components:
1. function_name : The function name is the actual name of the function. In R, the function is stored as an object with its name.
2. function_arguments; In R, an argument is a placeholder. In function, arguments are optional means a function may or may not contain arguments, and these arguments can have default values also. We pass a value to the argument when a function is invoked.
3. function_ki_body :The function body contains a set of statements which defines what the function does.
4. function_ki_returns value : t is the last expression in the function body which is to be evaluated.



#// user function
new.function <- function(){
  for(i in 1:5){. ## function_body
    print(i^2)
  }
}

new.function()


## even or odd
evenOdd <- function(x){
  if(x%%2==0){
    return("even")
  }
  else{
    return("odd")
  }
}

print(evenOdd(30)) # even
print(evenOdd(32421)) # odd




# perimeter of a rectangle

Rectangle <- function(length, width){
  area = length*width
  perimeter = 2*(length+width)
  
  
  result <- list("Area" = area, "Perimeter" = perimeter)
  return(result)
}

resultList = Rectangle(2,3)
print(resultList["Area"])
print(resultList["perimeter"])





# Creating a function to print squares of numbers in sequence.  
new.function <- function(a) {  
  for(i in 1:a) {  
    b <- i^2  
    print(b)  
  }  
  
  # Calling the function new.function supplying 10 as an argument.  
new.function(10)  
  





hello_name<-function(name){
  print(paste("hello", name))
}
hello_name('nitish')





new.function <- function(x,y,z){
  res<-x+y+z
  print(res)
}

new.function(x=4,y=5,z=2)





new.function<- function(x=10, y=23){ # default arguments
  res<-x*y
  print(res)
}
#new.function() # 230
new.function(5,6) # update the arguments value of x and y 
#outputs : 30




#***************  Built-in-Function****************. -> already predefined functions
# absolute functions

x<- -5;
print(abs(x)). # it returns the absolute values.


print(sqrt(45))  #it returnn the square root of input x.



x<-5.6
print(ceiling(x)) #t returns the smallest integer which is larger than or equal to x.


print(floor(x)) # 	It returns the largest integer, which is smaller than or equal to x.


y<-c(1,5,6,4,3)
print(trunc(y)) #It returns the truncate value of input x.

# cos(x), sin(x), tan(x) = 	It returns cos(x), sin(x) value of input x.
x<-5
print(sin(x))
print(tan(x))
print(cos(x))




print(log(x)) # It returns natural logarithm of input x
print(exp(x)) #It returns exponent.


x<-4
print(log10(x)) #It returns common logarithm of input x.




#String Functions

#substring
a<-"123456767874"
substr(a, 3, 6) # substr(var_name, start, last). ->It is used to extract substrings in a character vector.

#sub(pattern, replacement, x, ignore.case =FALSE, fixed=FALSE)	It finds pattern in x and replaces it with replacement (new) text.
st1<-"England is beautiful but no the part of EU"
sub("England", "UK", st1)


#paste(...., sep="") = It concatenates strings after using sep string to separate them.
paste('one', '2', 'three', '4', 'five')

#strsplit(x, split) = it splits the elements of charcter vector of x at split poiint..
a<-"Split all the character"
print(strsplit(a, ""))

s2<-"Manish gahlot"
print(tolower(s2)) # convert in lower


print(toupper(s2)) # convert in upper


## grep function
s3<-c("abcd", 'abcbd', 'bcdesdsae')
pat<-'^abc'
print(grep(pat, s3)) # seach the pattern in vectors.


a1<-c(10:20,30)
su<-sum(a1)
print(su)





# statistical Probability Functions

R provides various statistical probability functions to perform statistical task. These statistical functions are very helpful to find normal density, normal quantile and many more calculation. 

# dnorm(x, m=0, sd = 1, log = False) = it is used to find the height of the probability distribution at each point to a given mean and standard deviation..

a <- seq(-7, 7, by=0.1)
b <- dnorm(a, mean=2.5, sd=0.5)
png(file="dnorm.png")
plot(x,y)
dev.off()



#pnorm(q, m=0, sd=1, lower.tail=TRUE, log.p=FALSE)	it is used to find the probability of a normally distributed random numbers which are less than the value of a given number.	
x <- seq(-7, 7, by=0.2)
y <- dnorm(a, mean=2.5, sd=2)
png(file="pnorm.png")
plot(x,y)
dev.off()





# other Statical Function:

# 1. mean(x, trim=0, na,rm = False) = it is used to find the mean for x objects.

a<-c(0:10, 40)
xm<-mean(a)
print(xm)


# sd(x) = it returns standard deviation of an objects.

a<-c(0:10,40)
xm<-sd(a)
print(xm)

#median(x) -> it returns medium

a<-c(0:10, 40)
xm<-median(a)
print(xm)




# qualities(x, probs) = it returns quantile where x is the numeric vector whose quantites are desired and probs is a numberic vector with probabilities in [0,1]




# range(x) = it returns range 
a<-c(0:10, 40)
xm<-range(a)
print(xm)


#sum(x) = it returns sum;

a<-c(0:10, 40)
xm <- sum(a)
print(xm)


# diff(x, lag=1) = it returns difference with lag indicating which lag ot used

a<-c(0:10, 40)
xm<-diff(a)
print(xm)



# max function
a1<-c(10:20,30,34,43,435)
mi<-max(a1)
print(mi)


#min
a1<-c(10:20,30,34,43,435)
mi<-min(a1)
print(mi)



# scale(x, center=TRUE, scale=TRUE = column center or standardize a matrix

a<-matrix(1:9, 3, 3)
scale(a)


##
# cov() : covariance can be measured using the cov() function. Covariance is a statistical term used to measure the direction of the linear relationship between the data vectors

Covariance Syntax in R
Syntax: cov(x, y, method)

where, 

x and y represents the data vectors
method defines the type of method to be used to compute covariance. Default is “pearson”.



# Data vectors
x <- c(1, 3, 5, 10)

y <- c(2, 4, 6, 20)

# Print covariance using different methods
print(cov(x, y))
print(cov(x, y, method = "pearson"))
print(cov(x, y, method = "kendall"))





#Covariance and Correlation For data frame
We cancalculate the covariance and correlation for all columns in data frame.


data(iris)
library(dplyr)

# remove Species column
data=select(iris,-Species)

# calculate corelation
cor(data)

# calculate covariance
cov(data)
print(cov(x, y, method = "spearman"))




# var() :  calculates the variance of a vector and calculates the standard deviation of a vector.



# variance of vector:

# Create example vector 
x <- c(1, 2, 3, 4, 5, 6, 7) 

# Apply var function in R 
var(x)					 

print(x) 



# sd() : function

x2 <- c(1, 2, 3, 4, 5, 6, 7)  

# Compare with sd function 
sd(x2)                           

print(x2) 



