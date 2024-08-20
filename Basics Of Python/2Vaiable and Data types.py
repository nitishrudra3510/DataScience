Variables and Data Types
What is a variable?

Variable is like a container that holds data. Very similar to how our containers in kitchen holds sugar, 
salt etc Creating a variable is like creating a placeholder in memory and assigning it some value. In Python its as easy as writing:

a = 1
b = True
c = "Harry"
d = None

These are four variables of different data types.



# multiple variables 
a,b,d = 12,23,45
print(a,b,d)
print(a)
print(b)
print(d)



# python variables
1. local variables
2. global variables

# local variables

the variables declare with in the function and have scope within the fuction are known as local variables

def add():  
    # Defining local variables. They has scope only within a function  
    a = 20  
    b = 30  
    c = a + b  
    print("The sum is:", c)  
  
# Calling a function  
add()  

print(a). # a is not defined because it is a local  not global variable



# global variables

Global variables can be utilized all through the program, and its extension is in the whole program. Global variables can be used inside or outside the function.

By default, a variable declared outside of the function serves as the global variable. Python gives the worldwide catchphrase to utilize worldwide variable inside the capability. The function treats it as a local variable if we don't use the global keyword.


x = 101  
  
# Global variable in function  
def mainFunction():  
    # printing a global variable  
    global x  
    print(x)  
    # modifying a global variable  
    x = 'Welcome To Javatpoint'  
    print(x)  
  
mainFunction()  
print(x)  




# deleting a variable: delete the variable using del keyword

x = 12
print(x) 

# delete a variable
del x
print(x) # variable x is not defined.




# maximum possible values of an integer n Python.

# large numbers in Python  
  
a = 10000000000000000000000000000000000000000000  
a = a + 1  
print(type(a))  
print (a)  


# basics fundamentals:

token and their types:
1) tokens:
    The tokens can be defined as a punctuator mark, reserved words, and each word in a statement.
The token is the smallest unit inside the given program.
There are following tokens in Python:

Keywords.
Identifiers.
Literals.
Operators.




What is a Data Type?

Data type specifies the type of value a variable holds. This is required in programming to do various operations without causing an error.
In python, we can print the type of any operator using type function:

a = 1
print(type(a))
b = "1"
print(type(b))

By default, python provides the following built-in data types:
1. Numeric data: int, float, complex

    int: 3, -8, 0
    
    float: 7.349, -9.0, 0.0000001
    complex: 6 + 2i

2. Text data: str

str: "Hello World!!!", "Python Programming"

str1 = 'hello javatpoint' #string str1    
str2 = ' how are you' #string str2    
print (str1[0:2]) #printing first two character using slice operator    
print (str1[4]) #printing 4th character of the string    
print (str1*2) #printing the string twice    
print (str1 + str2) #printing the concatenation of str1 and str2    



3. Boolean data:

Boolean data consists of values True or False.
4. Sequenced data: list, tuple and string

list: A list is an ordered collection of data with elements separated by a comma and enclosed within square brackets. Lists are mutable and can be modified after creation.

Example:

list1 = [8, 2.3, [-4, 5], ["apple", "banana"]]
print(list1)

Output:

[8, 2.3, [-4, 5], ['apple', 'banana']]

Tuple: A tuple is an ordered collection of data with elements separated by a comma and enclosed within parentheses. Tuples are immutable and can not be modified after creation.

Example:

tuple1 = (("parrot", "sparrow"), ("Lion", "Tiger"))
print(tuple1)

Output:

(('parrot', 'sparrow'), ('Lion', 'Tiger'))

5. Mapped data: dict

dict: A dictionary is an unordered collection of data containing a key:value pair. The key:value pairs are enclosed within curly brackets.

Example:

dict1 = {"name":"Sakshi", "age":20, "canVote":True}
print(dict1)

Output:

{'name': 'Sakshi', 'age': 20, 'canVote': True}




# set :

In Python, a set is an unordered collection of unique elements. Sets are used to store multiple items in a single variable.
Sets are similar to lists or tuples, but they can only contain unique elements (no duplicates).

Key characteristics of sets in Python:
1. Elements in a set are unordered.
2. Sets do not allow duplicate elements; each element is unique.
3. Sets are mutable; you can add or remove items from them.
4. Sets are defined by enclosing elements in curly braces `{}` and separating them with commas.

Example of defining a set in Python:
python
my_set = {1, 2, 3, 4, 5}


Common operations on sets in Python include adding elements to a set, removing elements, calculating the intersection or 
union of sets, checking for membership, and more.

Example operations on sets:
python


my_set = {1, 2, 3}

# Adding an element to a set
my_set.add(4)

# Removing an element from a set
my_set.remove(2)

# Checking membership in a set
print(1 in my_set)  # Output: True

# Calculating the intersection of two sets
set1 = {1, 2, 3}
set2 = {2, 3, 4}
intersection_set = set1.intersection(set2)
print(intersection_set)  # Output: {2, 3}


Sets are a useful data structure in Python for manipulating collections of unique elements efficiently.
