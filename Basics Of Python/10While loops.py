Python while Loop

As the name suggests, while loops execute statements while the condition is True.
As soon as the condition becomes False, the interpreter comes out of the while loop.

Example:

count = 5
while (count > 0):
    print(count)
    count = count - 1

Output:

5
4
3
2
1

Here, the count variable is set to 5 which decrements after each iteration. Depending upon the while loop condition,
we need to either increment or decrement the counter variable (the variable count, in our case)
or the loop will continue forever.
Else with While Loop

We can even use the else statement with the while loop. Essentially what the else statement does is that as soon as
the while loop condition becomes False, the interpreter comes out of the while loop and the else statement is executed.

Example:

x = 5
while (x > 0):
    print(x)
    x = x - 1
else:
    print('counter is 0')

Output:

5
4
3
2
1
counter is 0




##########

Do-While loop in python

do..while is a loop in which a set of instructions will execute at least once (irrespective of the condition)
and then the repetition of loop's body will depend on the condition passed at the end of the while loop.
It is also known as an exit-controlled loop.

How to emulate do while loop in python?

To create a do while loop in Python, you need to modify the while loop a bit in order to get similar behavior
to a do while loop.

The most common technique to emulate a do-while loop in Python is to use an infinite while loop with a break 
statement wrapped in an if statement that checks a given condition and breaks the iteration 
if that condition becomes true:
Example

while True:
    number = int(input("Enter a positive number: "))
    print(number)
    if not number > 0:
    break

Output

Enter a positive number: 1
1
Enter a positive number: 4
4
Enter a positive number: -1
-1

Explanation

This loop uses True as its formal condition. This trick turns the loop into an infinite loop.
Before the conditional statement, the loop runs all the required processing and updates the breaking condition.
If this condition evaluates to true, then the break statement breaks out of the loop, and the program execution continues its normal path.



## using else statements with while Loops

counter = 0

while(counter < 10):
    counter = counter + 3
    print("Python loops")
else:
    print("Code block inside the else statement")
    
    
    
# Single statement while Block
The loop can be declared in a single statement, as seen below. This is similar to the if-else block, where we can write the code block in a single line.

# Code

# Python program to show how to write a single statement while loop  

counter = 0  
while (count < 3): print("Python Loops")  


# loop control statement:
    # continue: It returns the control to the beginning of the loop.
    
    
# Python program to show how the continue statement works  
  
# Initiating the loop  

for string in "Python Loops":  
    if string == "o" or string == "p" or string == "t":  
         continue  
    print('Current Letter:', string)  
     
     


# break statement:

  
# Initiating the loop  
for string in "Python Loops":  
    if string == 'L':  
        break  
    print('Current Letter: ', string) 
    
    
# Pass Statement
Pass statements are used to create empty loops. Pass statement is also employed for classes, functions, and empty control statements.

# Code

# Python program to show how the pass statement works  
for string in "Python Loops":  
    pass  
print( 'Last Letter:', string)   




# prime numbers and python while loop;

Prime Numbers:

 # Prime numbers are natural numbers greater than 1 that have no positive divisors other than 1 and themselves.
They play a crucial role in number theory and are fundamental in various mathematical applications.
Python While Loop:

# The while loop in Python iterates over a block of code as long as a specified condition is true.
  It continues to execute the code block repeatedly until the condition becomes false.
  
  
  
num = [34, 12, 54, 23, 75, 34, 11]

def prime_number(number):
    condition = 0
    iteration = 2
    while iteration <= number / 2:
        if number % iteration == 0:
            condition = 1
            break
        iteration = iteration + 1

    if condition == 0:
        print(f"{number} is a PRIME number")
    else:
        print(f"{number} is not a PRIME number")

for i in num:
    prime_number(i)
    
    


# armstrong number and python while loop;

n = int(input())
n1 = str(n)
l = len(n1)

temp = n

s = 0
while n! = 0:
    r=n%10
    s=s+(r**1)
    n=n/10
    
if s==temp:
    print("Armstrong number")
    
else:
    print("It is not a armstrong number")
    

 




num = 21        
counter = 1      
# we will use a while loop for iterating 10 times for the multiplication table        
print("The Multiplication Table of: ", num)      
while counter <= 10: # specifying the condition  
    ans = num * counter      
    print (num, 'x', counter, '=', ans)      
    counter += 1 # expression to increment the counter  
    
  
  
    
# python while loop with list;

# Python program to square every number of a list    
# initializing a list    
list_ = [3, 5, 1, 4, 6]    
squares = []    
# programing a while loop     
while list_: # until list is not empty this expression will give boolean True after that False    
    squares.append( (list_.pop())**2)    
#  Print the squares of all numbers.  
print( squares )    



## 
list_ = [3, 4, 8, 10, 34, 45, 67,80]        # Initialize the list  
index = 0  
while index < len(list_):  
    element = list_[index]  
    if element % 2 == 0:  
        print('It is an even number')       # Print if the number is even.  
    else:  
        print('It is an odd number')        # Print if the number is odd.  
    index += 1  
    
    
    
##### 

list_ = [3,4,5,6,7,9,10,111]

index = 0
while index<len(list_):
    element = list_[index]
    if element%2==0:
        print("It is an even number.")
        
    else:
        print("It is odd number.")
        
    index+=1
    
    
# Python While Loop Multiple Conditions

num1 = 17  
num2 = -12  
   
while num1 > 5 and num2 < -5 : # multiple conditions in a single while loop  
    num1 -= 2  
    num2 += 3  
    print( (num1, num2) )  
    
    
#############

num1 = 9   
num = 14   
maximum_value = 4  
counter = 0   
while (counter < num1 or counter < num2) and not counter >= maximum_value: # grouping multiple conditions  
    print(f"Number of iterations: {counter}")   
    counter += 1  

    
# single statement while loop 


# Python program to show how to create a single statement while loop  
counter = 1  
while counter: print('Python While Loops')  




# Loop Control Statements

# Continue Statement

It returns the control of the Python interpreter to the beginning of the loop.

Code

# Python program to show how to use continue loop control  
  
# Initiating the loop  
for string in "While Loops":  
    if string == "o" or string == "i" or string == "e":  
         continue  
    print('Current Letter:', string)  
    
    
    
    
# Break Statement
It stops the execution of the loop when the break statement is reached.

Code

# Python program to show how to use the break statement  
  
# Initiating the loop  
for string in "Python Loops":  
    if string == 'n':  
         break  
    print('Current Letter: ', string)  





# Pass Statement : Pass statements are used to create empty loops. Pass statement is also employed for classes, functions, and empty control statements.

Code

# Python program to show how to use the pass statement    
for a string in "Python Loops":    
    pass    
print( 'The Last Letter of given string is:', string)     
