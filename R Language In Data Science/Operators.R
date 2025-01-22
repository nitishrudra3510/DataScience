#Operators: they are the symbols directing the compiler to perform various kind of operations between the operands.


# R operators: It's supports majorly four kinds of binary operators between a set of operands.
 
# Types of operator in R languaeg: 
"
  1.Arithmetic Operators: 
Perform basic mathematical operations:
+ (addition)
- (subtraction)
* (multiplication)
/ (division)
^ (exponentiation)
%% (modulo, returns the remainder of division)
%/% (integer division, returns only the quotient)

"

"
2. Comparison Operators:

Compare values and return logical values (TRUE or FALSE):
== (equal to)
!= (not equal to)
> (greater than)
< (less than)
>= (greater than or equal to)
<= (less than or equal to)
"

"
3. Logical Operators:

Combine logical values:
& (AND, both conditions must be TRUE)
| (OR, at least one condition must be TRUE)
! (NOT, reverses the logical value)
"

"
4. Assignment Operators:

Assign values to variables:
= (assigns a value)
<- (assigns a value, alternative symbol)
+= (adds and assigns)
-= (subtracts and assigns)
*= (multiplies and assigns)
/= (divides and assigns)
^= (exponentiates and assigns)
"

"
Other Operators:

a) : (sequence operator, creates sequences of numbers)
b) %in% (membership operator, checks if a value is in a vector)
c) [] (indexing operator, extracts elements from vectors or lists)
d) $ (extracts elements from lists or data frames by name)
e) : (colon operator, creates sequences)

"


#arithmatic operators: 
a<-c (1.0, 2.3)
b<-c (2.33, 4)
print(a+b)

a = "swayam"
b = "nitish"
print(a)
print(b)
print(a%+%b)
print(paste(a,b)) # to add the two words..
a = 10
c = 2
print(a%+%c)
b = "nitish"
print(paste(a,b)) # operator overloading has not supported.
print(a,b)



`%+%` <- function(a, b) {
  return(a + b)
}

# Usage
result <- 10.0 %+% 5
print(result)

#Subtraction Operator (-)
a <- "nitish"
b <- 8.4 
cat("a: ",a," b: " , b) # concatinate and print karta hai.
print (a-b) 


#Multiplication Operator (*) 
B= c(4,4)  
C= c(5,5) 
print (B*C) 

#Division Operator (/) 
a <- 10 
b <- 5 
print (a/b) 

#Power Operator (^)
a <- 4 
b <- 5 
print(a^b) 

#Modulo Operator (%%)

list1<- c(2, 22) 
list2<-c(2,4) 
print(list1 %% list2)



############# the use of Arithmetic operators 
vec1 <- c(0, 2) 
vec2 <- c(2, 3) 

# Performing operations on Operands 
cat ("Addition of vectors :", vec1 + vec2, "\n") 
cat ("Subtraction of vectors :", vec1 - vec2, "\n") 
cat ("Multiplication of vectors :", vec1 * vec2, "\n") 
cat ("Division of vectors :", vec1 / vec2, "\n") 
cat ("Modulo of vectors :", vec1 %% vec2, "\n") 
cat ("Power operator :", vec1 ^ vec2) 


####. 3.

#. ******LOGICAL OPERATORS: ***********
# AND OPERATOR(&) : Returns True if both the operands are True
list1 <- c(TRUE, 0.1) 
list2 <- c(0,4+3i) 
print(list1 & list2) 


#OR OPERATOER (|): Returns True if either of the operands is True.
list1 <- c(TRUE, 0.1)
list2 <- c(0.4, 4+3i)
print(list1|list2)

# NOT OPERATOR: A unary operator that negates the status of the elements of the operand
list1 <- c(0,FALSE) 
print(!list1) 


#OR OPERATOER (||): Returns True if either of the first elements of the operands is True.

# list1 <- c(TRUE, 0.1)
# list2 <- c(0,4+3i)
# print(list1||list2)
# 



# R program to illustrate  
# the use of Logical operators 
vec1 <- c(0,2) 
vec2 <- c(TRUE,FALSE) 

# Performing operations on Operands 
cat ("Element wise AND :", vec1 & vec2, "\n") 
cat ("Element wise OR :", vec1 | vec2, "\n") 
cat ("Logical AND :", vec1 && vec2, "\n") 
cat ("Logical OR :", vec1 || vec2, "\n") 
cat ("Negation :", !vec1) 


# defining vector
x <- c(7, 15, 23, 12, 44, 56, 32)

# output to be present as PNG file
png(file = "barplot.png")

# plotting vector...
barplot(x, xlab = "GeeksforGeeks Audience",
        ylab = "Count", col = "white",
        col.axis = "darkgreen",
        col.lab = "darkgreen")

# saving the file
dev.off()





# ******** Relational Operators *********
Operators : <, > , <=, >= , ==, !=
  
# >
  
  a<- c(1,3,5)
b <- c(2,4,6)
print(a>b)

#<
a<- c(4,3,5)
b <- c(2,4,6)
print(a<b)

# <=

a <- c(1, 3, 5)
b <- c(2, 3, 6)
print(a<=b)

 
# >= 
a <- c(1, 3, 5)
b <- c(2, 3, 6)
print(a>=b)

# ==
a <- c(1, 3, 5)
b <- c(2, 3, 6)
print(a==b)


# -=
a <- c(1, 3, 5)
b <- c(2, 3, 6)
print(a>=b)




# ********Assignment Operators *******

# <- or = or <<- : these operators are known as left assignment operators.


a<-c(3,0,TRUE, 2+2i)
b<<-c(2,4,TRUE, 2+3i)
d=c(1,2,TRUE, 2+3i)

print(a)
print(b)
print(d)


# -> or ->>

these operators are known as right assignment operators.
c(3, 0, TRUE, 2+2i) -> a
c(2, 4, TRUE, 2+3i) ->> b
print(a)
print(b)




# ***********. Miscellaneous Operators **************


# : the colon operators is used to create the series of numbers in sequence for a vectors..

v<-1:8
print(v)

# %n% -> this is used when we want to identify if an element belongs to a vectors..

a1<-8
a2<-12
d<-1:10
print(a1%in%d)

print(a2%in%d)

# %*%
It is used to multiply a matrix with its transpose..

M=matrix(c(1,2,3,4,5,6), nrow=2, ncol=3, byrow=TRUE)
T = M %*% t(M)

print(T)
