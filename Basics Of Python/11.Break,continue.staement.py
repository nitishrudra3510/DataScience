break statement: In Python, the `break` statement is used to exit
a loop prematurely. When a break statement is encountered within a loop (such as a for or while loop), 
the loop is immediately terminated and program control resumes at the next statement following the loop. 
This can be useful if you want to stop the loop execution based on a certain condition.


The break statement enables a program to skip over a part of the code. A break statement terminates the very loop it lies within.
example

for i in range(1,101,1):
    print(i ,end=" ")
    if(i==50):
        break
    else:
        print("Mississippi")
print("Thank you")




output:

1 Mississippi
2 Mississippi
3 Mississippi
4 Mississippi
5 Mississippi
.
.
.
50 Mississippi


#### Continue statement:
Continue Statement

The continue statement skips the rest of the loop statements and causes the next iteration to occur.
example

for i in [2,3,4,6,8,0]:
    if (i%2!=0):
        continue
    print(i)



output

2
4
6
8
0




## Example 1 : break statement with for loop

my_list = [1,2,3,4,5]
count = 1
for item in my_list:
    if item == 4:
        print("item has matched")
        
    count += 1
    break
print("Found at location", count)



# Example 2 : Breaking out of a loop early

my_str = "python"
for char in my_str:
    if char == 'o':
        break
    print(char)
    
    
    
# Example 3: break statement with while loop

i = 0
while 1:
    print(i, " ", end = ""),
    i=i+1;
    if i==10:
        break;
    
    print("came out of while loop");
    
    
# Example 4 : break statement with nested loops

n = 2
while True:
    i = 1
    while i<=10:
        print("%d X = %d = %d\n" %(n,i,n*i))
        
        i+=1
        
    choice = int(input("Do you want to continue printing the table? Press 0 for no: "))
    
    if choice==0:
        print("Exiting the program")
        break
    n+1
    
print("Program finished successfully.")



## Python continue Statement

In Python, the continue statement is used within loops (such as for or while loops) to skip the rest of the code 
inside the loop for the current iteration and proceed to the next iteration. When Python encounters a continue 
statement, it jumps to the next iteration of the loop without executing any further statements in the loop block 
for the current iteration.


# code:

for i in range(10, 25):
    if i==15:
        continue
    
    print(i)
   
   
   
####. code: 
 
 string = "javapoint"
iterator = 0

while iterator < len(string):
    if string[iterator] == 'a':
        iterator += 1
        continue
    
    print(string[iterator])
    
    iterator += 1
# python continue statement in list comprehension:

numbers = [1,23,4,5,6,7,8,9,10,11,12]
s1_num = [num ** 2 for num in numbers if num %2==0]

print(s1_num)




# Here are the summarized differences between `continue` and `pass` in Python:

## Continue:**
- Definition: Skips the current iteration of a loop and proceeds to the next iteration.
- Action: Takes the control back to the start of the loop.
- Application: Works with both `while` and `for` loops.
- Syntax: `continue`
- Interpretation: Primarily used within loop conditions to skip specific iterations.

  ### PAss: 
- Definition: A null operation, used when a syntactical placeholder is required but no action is needed.
- Action: Does nothing; the interpreter moves to the next statement.
- Application: Commonly used in empty code blocks, class definitions, or function definitions.
- Syntax: pass
- Interpretation: During compilation, the `pass` keyword is simply removed, as it has no effect on program execution.

These distinctions should clarify when to use each keyword in Python code.







## Python pass statement:

# Python program to show how to use a pass statement in a for loop  
'''''pass acts as a placeholder. We can fill this place later on'''  
sequence = {"Python", "Pass", "Statement", "Placeholder"}  
for value in sequence:  
    if value == "Pass":  
        pass # leaving an empty if block using the pass keyword  
    else:  
        print("Not reached pass keyword: ", value) 