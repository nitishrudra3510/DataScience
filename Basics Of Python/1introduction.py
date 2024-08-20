'''
What is Programming and Python?
What is Programming

Programming is a way for us to tell computers what to do. Computer is a very dumb machine and it only does what we tell it to do. Hence we learn
programming and tell computers to do what we are very slow at - computation. If I ask you to calculate 5+6, you will immediately say 11.
How about 23453453 X 56456?

You will start searching for a calculator or jump to a new tab to calculate the same. This 100 days of code series will help you learn python
from starting to the end. We will start from 0 and by the time we end this course, I promise you will be a Job ready Python developer!


What is Python?

    Python is a dynamically typed, general purpose programming language that supports an object-oriented programming approach
    as well as a functional programming approach.
    
    Python code first compiled into bytecode and intrepreted line by line and a high-level programming language.
    It was created by Guido Van Rossum in 1989.

Features of Python

    Python is simple and easy to understand.
    It is Interpreted and platform-independent which makes debugging very easy.
    Python is an open-source programming language.
    Python provides very big library support. Some of the popular libraries include NumPy, Tensorflow, Selenium, OpenCV, etc.
    It is possible to integrate other programming languages within python.

What is Python used for

    Python is used in Data Visualization to create plots and graphical representations.
    Python helps in Data Analytics to analyze and understand raw data for insights and trends.
    It is used in AI and Machine Learning to simulate human behavior and to learn from past data without hard coding.
    It is used to create web applications.
    It can be used to handle databases.
    It is used in business and accounting to perform complex mathematical operations along with quantitative and qualitative analysis.




Why I love python (And you will too...)

Welcome to Day 2 of 100 days of code. Let me start with a story! Back in my college,
I used to learn C and C++ programming in depth, used to score good marks.
I created a bunch of printing, conditionals and loop program. Now what? 
I wanted to benefit from the same In my second year of college, I started working (I mean actually working in the industry) with the python programming language. I was not so good with it but I used to write code for a singaporean client and actually make good money without having to actually master Python. Harry then got curious and started working on his Python skills even more. I then got into web scraping and trust me I made some good easy money on Fiverr just by writing some python programs and charging on per webpage basis to my clients ( I used to automate scraping)
I then learnt flask and got to work with Flask with a university professor abroad. Long story short, Python made a huge impact in my career.




What can Python do for you?

I want to show you some python programs I created which will surely inspire you to
create your own versions of the same as we progress through this tutorial. Do not try to
recreate them just yet if you are a beginner and just started working on Python. We will
make progress gradually trust me



Modules and pip in Python!

Module is like a code library which can be used to borrow code written by somebody else in our python program. There are two types of modules in python:

    Built in Modules - These modules are ready to import and use and ships with the python interpreter. there is no need to install such modules explicitly.
    External Modules - These modules are imported from a third party file or can be installed using a package manager like pip or conda. Since this code is written by someone else, we can install different versions of a same module with time.


#The pip command

It can be used as a package manager pip to install a python module. Lets install a module called pandas using the following command

pip install pandas
Using a module in Python (Usage)
We use the import syntax to import a module in Python. Here is an example code:



import pandas
# Read and work with a file named 'words.csv'
df = pandas.read_csv('words.csv')
print(df) # This will display first few rows from the words.csv file



Similarly we can install other modules and look into their documentations for usage instructions.
We will find ourselved doing this often in the later part of this course
###########################################################


Comments, Escape sequence & Print in Python

Welcome to Day 5 of 100DaysOfCode. Today we will talk about Comments, Escape Sequences and little bit more about print statement in Python. We will also throw some light on Escape Sequences


Python Comments:
A comment is a part of the coding file that the programmer does not want to execute, rather the programmer uses it to either explain a block of code or to avoid the execution of a specific part of code while testing.

Single-Line Comments:
To write a comment just add a ‘#’ at the start of the line.

Example 1:

#This is a 'Single-Line Comment'
print("This is a print statement.")

Output:
This is a print statement.







Example 2:
print("Hello World !!!") #Printing Hello World

Output:
Hello World !!!

Example 3:
print("Python Program")
#print("Python Program")

Output:
Python Program
Multi-Line Comments:
To write multi-line comments you can use ‘#’ at each line or you can use the multiline string.


Example 1: The use of ‘#’.

#It will execute a block of code if a specified condition is true.
#If the condition is false then it will execute another block of code.
p = 7
if (p > 5):
    print("p is greater than 5.")
else:
    print("p is not greater than 5.")

Output:
p is greater than 5.



Example 2: The use of multiline string.

"""This is an if-else statement.
It will execute a block of code if a specified condition is true.
If the condition is false then it will execute another block of code."""
p = 7
if (p > 5):
    print("p is greater than 5.")
else:
    print("p is not greater than 5.")

Output

p is greater than 5.

Escape Sequence Characters

To insert characters that cannot be directly used in a string, we use an escape sequence character.

An escape sequence character is a backslash \ followed by the character you want to insert.

An example of a character that cannot be directly used in a string is a double quote inside a string that is surrounded by double quotes:

'''

print("This doesnt execute")
print("This will \" execute")

More on Print statement

The syntax of a print statement looks something like this:

print(object(s), sep=separator, end=end, file=file, flush=flush)

Other Parameters of Print Statement

    object(s): Any object, and as many as you like. Will be converted to string before printed
    sep='separator': Specify how to separate the objects, if there is more than one. Default is ' '
    end='end': Specify what to print at the end. Default is '\n' (line feed)
    file: An object with a write method. Default is sys.stdout

Parameters 2 to 4 are optional





print("nitish")
