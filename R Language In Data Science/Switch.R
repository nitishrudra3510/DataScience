
## ******* Switch *******
# **R Switch Statement:**
#   
#   - **Definition**:
#   - A switch statement is a selection control mechanism used to change the control flow of program execution based on the value of an expression.
# - It replaces long if statements comparing a variable with several integral values, providing a multi-way branch statement.
# 
# - **Purpose**:
#   - Provides a concise and structured way to dispatch execution for different parts of code based on the value of an expression.
# 
# - **Character String Matching**:
#   - If the expression type is a character string, it is matched to the listed cases.
# - If multiple matches exist, the first matching element is used.
# 
# - **No Default Case**:
#   - Unlike some other programming languages, R is switch statement does not include a default case.
# 
# - **Unnamed Case for No Match**:
#   - If no case is matched, an unnamed case is used to handle such scenarios.
# 
# - **Selection Mechanisms**:
#   - **Based on Index**:
#   - When cases are values like a character vector and the expression evaluates to a number, the expression's result is used as an index to select the case.
# - **Based on Matching Value**:
#   - Cases with both case value and output value are matched against the expression value.
# - If there's a match with the case, the corresponding output value is used.
# 
# - **Structured Control Flow**:
#   - Offers a structured approach to controlling program flow based on the value of an expression, improving code readability and maintainability.
# 
# 

#Syntax:
  
  switch (expression, case1, case2, case3,…,case n )






# R switch statement example

# Expression in terms of the index value
x <- switch(
  2,		 # Expression
  "Geeks1", # case 1
  "for",	 # case 2
  "Geeks2"	 # case 3
)
print(x)

# Expression in terms of the string value
y <- switch(
  "GfG3",			 # Expression
  "GfG0"="Geeks1",	 # case 1
  "GfG1"="for",	 # case 2
  "GfG3"="Geeks2"	 # case 3
)
print(y)

z <- switch(
  "GfG",			 # Expression
  "GfG0"="Geeks1",	 # case 1
  "GfG1"="for",	 # case 2
  "GfG3"="Geeks2"	 # case 3
)
print(z)
print(z)







x <- switch(  
  3,  
  "Shubham",  
  "Nishka",  
  "Gunjan",     
  "Sumit"  
)  
print(x)  






ax= 1  
bx = 2  
y = switch(  
  ax+bx,  
  "Hello, Shubham",  
  "Hello Arpita",  
  "Hello Vaishali",  
  "Hello Nishka"  
)  
print (y)  





y = "18"  
x = switch(  
  y,  
  "9"="Hello Arpita",  
  "12"="Hello Vaishali",  
  "18"="Hello Nishka",  
  "21"="Hello Shubham"  
)  
print(x)



x= "2"  
y="1"  
a = switch(  
  paste(x,y,sep=""),  
  "9"="Hello Arpita",  
  "12"="Hello Vaishali",  
  "18"="Hello Nishka",  
  "21"="Hello Shubham"  
)  

print (a)  



y = "18"  
a=10  
b=2  
x = switch(  
  y,  
  "9"=cat("Addition=",a+b),  
  "12"=cat("Subtraction =",a-b),  
  "18"=cat("Division= ",a/b),  
  "21"=cat("multiplication =",a*b)  
)  

print (x)  


