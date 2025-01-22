#print : it print the only output data types likes its print char, string, int, float.
a=5
b = 4
c = a+b
#print("sum is ", c) : we can not implement in R language but we can use "cat " on the place of print.
print("Sum is : ")
print(c)
cat("the sum is ", c)  #it combine the data types.

# ***************** Types of classses in R.*************
#1. Numeric 
a = 5.5
print(class(a)) # numeric

b = 5
print(class(b))

#2 - > integer
c = 5L # it print integer because L is symbol to convert an integer to numberic. suppose we don't add L then it prints numeric.
print(class(c))

#3. Character. 


e = "Hello123"
print(class(e))

#4 Complex.

d = 5+3i
print(class(d))


# ***************logical values. ************** : any true or false value it will go in logical. it prints always "logical"

l = TRUE
print(class(l)) #logical.



# ************Data Types.****************

#vectors : it is used like array and declare multiple of homogeneous elements.

a = c(1,2,3,4,5) # here "c" is the syntax of declaration of vectors.
print(a)
b = c('a', 'b', 'c', 'd', 'e')
print(b)
c = c(5.5, 6.5, 2.2, 4.4)
print(c)

cat(a,"\t",b, "\t", c, "\t") # it prints the all data types.

#factor : a
# matrix : 
# list : 




# *************** Assign vectors *******************
#. equal : =. ; a=5
# leftward <-  ; a<- 5;
# rightward. ->


# ******************* Types of operators. *********************
#1. arithmetic:  +,-,*,/,%
#2. Relational : 
#3. Logical : 
# 4. Assignment:  
# 5. Others


a = c(1,2,3,4,5)
b=c(5,6,7,8,9)
cat("sum is ", a+b)
cat("sub is ", a-b)
cat("Division ", a/b) #decimal value
cat("Diviaion ", a%/%b)  #integer
cat("mul is ", a*b)
#cat("modulus are ", a%b)  # simple modulus has not valid here.
cat("modulus",a%%b)



## *********************** TYPES OF RELATIONAL OPERATOR ******* : it gives the output TURE or FALSE.
a = c(1,2,3,4,5,0)
b=c(5,6,7,8,9)
cat("a<b is ", a<b)
cat("A > B : ", a>b)
cat("A != B : ", a!=b)

cat("Relational operator : ", a>=b)
cat("Relational operator : ", a<=b)
cat("Relational operator : ", a==b)

cat(a>b, "\t", a<b, "\t", a==b)

#. **********logical operator : *****************
cat("A is not equal to : ", !a) # (!a)if the number is positive or negative it prints always FALSE, but if the numher have 0 it prints TRUE.
a<-c(1,-2,0,4,8)
b<-c(5,6,3,8,9)
cat(a&b)
cat(a&&b)
cat(a|b)
cat(!a)
