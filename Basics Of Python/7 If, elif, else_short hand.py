
**Python If-Else Statements:**

In Python, `if` statements are used to control the flow of a program based on certain conditions. The `if` statement evaluates a condition and executes a block of code if the condition is true. 
The `else` statement is used to execute a block of code when the `if` condition is false.

**Syntax:**
```python
if condition:
    # code block to execute if condition is true
else:
    # code block to execute if condition is false
```

**Example:**
```python
# Example of if-else statement
x = 10

if x > 5:
    print("x is greater than 5")
else:
    print("x is less than or equal to 5")
```

**Output:**
```
x is greater than 5
```

**Nested If-Else Statements:**
Multiple `if-else` statements can be nested inside each other to handle more complex conditions. 
Syntax: 
```python
if condition1:
    # code block to execute if condition1 is true
    if condition2:
        # code block to execute if condition2 is true
    else:
        # code block to execute if condition2 is false
else:
    # code block to execute if condition1 is false
```

**Example:**
```python
# Example of nested if-else statement
x = 10

if x > 5:
    if x % 2 == 0:
        print("x is greater than 5 and even")
    else:
        print("x is greater than 5 and odd")
else:
    print("x is less than or equal to 5")
```

**Output:**
```
x is greater than 5 and even
```

**Chained Conditional Statements:**
Python also supports `elif` (else if) to chain multiple conditions together.
Syntax:
```python
if condition1:
    # code block to execute if condition1 is true
elif condition2:
    # code block to execute if condition2 is true
else:
    # code block to execute if all conditions are false
```

**Example:**
```python
# Example of chained conditional statements
x = 10

if x > 10:
    print("x is greater than 10")
elif x == 10:
    print("x is equal to 10")
else:
    print("x is less than 10")
```

**Output:**
```
x is equal to 10
```

Using if-else statements in Python allows you to make decisions and control the flow of your program based on conditions, providing flexibility and control over the execution logic.



a = int(input("Enter a:\n"))
b = int(input("Enter b:\n"))

#if a>b: print("A is greater than b")
print("B is greater than A") if a<b else print("A is greater than B")



# Simple Python program to understand elif statement  
marks = int(input("Enter the marks? "))    
# Here, we are taking an integer marks and taking input dynamically  
if marks > 85 and marks <= 100:  
# Here, we are checking the condition. If the condition is true, we will enter the block    
   print("Congrats ! you scored grade A ...")    
elif marks > 60 and marks <= 85:    
# Here, we are checking the condition. If the condition is true, we will enter the block  
   print("You scored grade B + ...")    
elif marks > 40 and marks <= 60:  
# Here, we are checking the condition. If the condition is true, we will enter the block    
   print("You scored grade B ...")    
elif (marks > 30 and marks <= 40):    
# Here, we are checking the condition. If the condition is true, we will enter the block  
   print("You scored grade C ...")    
else:    
   print("Sorry you are fail ?")    
   
   
   
   
   
   
   
# Simple Python program to understand elif statement  
number = int(input("Enter the number?"))    
# Here, we are taking an integer number and taking input dynamically  
if number==10:    
# Here, we are checking the condition. If the condition is true, we will enter the block  
    print("The given number is equals to 10")    
elif number==50:  
# Here, we are checking the condition. If the condition is true, we will enter the block    
    print("The given number is equal to 50");    
elif number==100:    
# Here, we are checking the condition. If the condition is true, we will enter the block  
    print("The given number is equal to 100");    
else:    
    print("The given number is not equal to 10, 50 or 100");    