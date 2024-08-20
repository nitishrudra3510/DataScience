'''
What are strings?

In python, anything that you enclose between single or double quotation marks is considered a string.
A string is essentially a sequence or array of textual data. Strings are used when working with Unicode
characters.
'''
#Example

name = "Harry"
print("Hello, " + name)
'''
Output

Hello, Harry

Note: It does not matter whether you enclose your strings in single or double quotes, the output remains the same.

Sometimes, the user might need to put quotation marks in between the strings. Example, consider the sentence: He said, “I want to eat an apple”.

How will you print this statement in python?: He said, "I want to eat an apple". We will definitely use single quotes for our convenience
'''
print('He said, "I want to eat an apple".')

#Multiline Strings

#If our string has multiple lines, we can create them like this:

a = """Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt
ut labore et dolore magna aliqua."""
print(a)
'''
Accessing Characters of a String

In Python, string is like an array of characters. We can access parts of string by using its index which starts from 0.
Square brackets can be used to access elements of the string.
'''
print(name[0])
print(name[1])

#Looping through the string

We can loop through strings using a for loop like this:

for character in name:
    print(character)

Above code prints all the characters in the string name one by one!



# Each character is encoded in the ASCII or Unicode character. So we can say that Python strings are also called the collection of Unicode characters.



str = "Hi Python!"

print(type(str)) # then it will print a string (str))




# creating a string:
#Using single quotes  
str1 = 'Hello Python'  
print(str1)  
#Using double quotes  
str2 = "Hello Python"  
print(str2)  
  
#Using triple quotes  
str3 = '''''Triple quotes are generally used for  
    represent the multiline or 
    docstring'''   
print(str3)  




# string indexing and splitting:

str = "HELLO"

print(str[0])
print(str[1])
print(str[2])
print(str[3])
print(str[4])
# It returns the IndexError because 6th index doesn't exist  
print(str[6])  



# code slicing


str = "JAVAPOINT"

print(str[0:])
print(str[1:5])

print(str[2:4])
print(str[:3])

print(str[4:7])

# negative slicing

str = 'JAVAPOINT'

print(str[-1])
print(str[-3])
print(str[-2:])
print(str[-7:-2])
print(str[-4:-1])

# reversing the strings

print(str[::-1])
print(str[-12])


# reassing the strings

str = "HELLO"
str[0] = "h"
print(str). #  'str' object does not support item assignment

# notes: the string str can be assigned completely to a new content as specified in the following example.


str = "HELLO"

print(str)

str = 'hello'
print(str)



# deleting a string:  we know that strings are immutable. We cannot delete or remove the characters from the string.  But we can delete the entire string using the del keyword.



str = "JAVAPOINT"

del str[1]


# now we delete the entire string
str1 = "hello"
print(str1)
del str1
print(str1)



# string operators:

# String Operators
Operator	Description
+	      It is known as concatenation operator used to join the strings given either side of the operator.
*	      It is known as repetition operator. It concatenates the multiple copies of the same string.
[]	      It is known as slice operator. It is used to access the sub-strings of a particular string.
[:]	      It is known as range slice operator. It is used to access the characters from the specified range.
in	      It is known as membership operator. It returns if a particular sub-string is present in the specified string.
not in	  It is also a membership operator and does the exact reverse of in. It returns true if a particular substring is not present in the specified string.
r/R	      It is used to specify the raw string. Raw strings are used in the cases where we need to print the actual meaning of escape characters such as "C://python". To define any string as a raw string, the character r or R is followed by the string.
%	      It is used to perform string formatting. It makes use of the format specifiers used in C programming like %d or %f to map their values in python. We will discuss how formatting is done in python.


Example
Consider the following example to understand the real use of Python operators.

str = "Hello"     
str1 = " world"    
print(str*3) # prints HelloHelloHello    
print(str+str1)# prints Hello world     
print(str[4]) # prints o                
print(str[2:4]); # prints ll                    
print('w' in str) # prints false as w is not present in str    
print('wo' not in str1) # prints false as wo is present in str1.     
print(r'C://python37') # prints C://python37 as it is written    
print("The string str : %s"%(str)) # prints The string str : Hello     


# python string formatting

# escape sequence:
we need to write the text as - They said, "Hello what's going on?"- the given statement can be
written in single quotes or double quotes but it will raise the SyntaxError as it contains both single and double-quotes.




str = "They said, "Hello what's going on?""
print(str) # invalid syntax

We can use the triple quotes to accomplish this problem but Python provides the escape sequence.

The backslash(/) symbol denotes the escape sequence. The backslash can be followed by a special character and 
it interpreted differently. The single quotes inside the string must be escaped. We can apply the same as in the double quotes.


# using tripple quotes.
print('''They said, "What's there?"''')


# escaping single quotes:

print('They said, "Hello what\'s going on"')

print("they said, \"Hello what's going on\"")




# escape sequences in Python:


Here are the summarized notes on escape sequences in Python:

1. **\newline:** Ignores the new line.\
   Example: 
   ```python
   print("Python1 \
   Python2 \
   Python3")
   ```
   Output:  
   ```
   Python1 Python2 Python3
   ```

2. **\\:** Represents a backslash.  
   Example: 
   ```python
   print("\\")
   ```
   Output:  
   ```
   \
   ```

3. **\':** Represents a single quote.  
   Example: 
   ```python
   print('\'')
   ```
   Output:  
   ```
   '
   ```

4. **\"':** Represents a double quote.  
   Example: 
   ```python
   print("\"")
   ```
   Output:  
   ```
   "
   ```

5. **\a:** Produces an ASCII Bell sound.  
   Example: 
   ```python
   print("\a")
   ```

6. **\b:** Produces an ASCII Backspace (BS).  
   Example: 
   ```python
   print("Hello \b World")
   ```
   Output:  
   ```
   Hello World
   ```

7. **\f:**Produces an ASCII Formfeed.  
   Example: 
   ```python
   print("Hello \f World!")
   ```
   Output:  
   ```
   Hello 
    World!
   ```

8. **\n:** Produces an ASCII Linefeed.  
   Example: 
   ```python
   print("Hello \n World!")
   ```
   Output:  
   ```
   Hello
    World!
   ```

9. **\r:** Produces an ASCII Carriage Return (CR).  
   Example: 
   ```python
   print("Hello \r World!")
   ```
   Output:  
   ```
   World!
   ```

10. **\t:** Produces an ASCII Horizontal Tab.  
    Example: 
    ```python
    print("Hello \t World!")
    ```
    Output:  
    ```
    Hello     World!
    ```

11. **\v:** Produces an ASCII Vertical Tab.  
    Example: 
    ```python
    print("Hello \v World!")
    ```
    Output:  
    ```
    Hello 
    World!
    ```

12. **\ooo:** Represents a character with octal value.  
    Example: 
    ```python
    print("\110\145\154\154\157")
    ```
    Output:  
    ```
    Hello
    ```

13. **\xHH:** Represents a character with hex value.  
    Example: 
    ```python
    print("\x48\x65\x6c\x6c\x6f")
    ```
    Output:  
    ```
    Hello
    ```

Understanding these escape sequences is crucial for formatting text and manipulating strings effectively in Python.


Sr.	Escape Sequence	Description	Example
1.	\newline	It ignores the new line.	
print("Python1 \
Python2 \
Python3")
Output:
Python1 Python2 Python3
2.	\\	Backslash	
print("\\")
Output:
\
3.	\'	Single Quotes	
print('\'')
Output:
'
4.	\\''	Double Quotes	
print("\"")
Output:
"
5.	\a	ASCII Bell	
print("\a")
6.	\b	ASCII Backspace(BS)	
print("Hello \b World")
Output:
Hello World
7.	\f	ASCII Formfeed	
print("Hello \f World!")
Hello  World!
8.	\n	ASCII Linefeed	
print("Hello \n World!")
Output:
Hello
 World!
9.	\r	ASCII Carriege Return(CR)	
print("Hello \r World!")
Output:
World!
10.	\t	ASCII Horizontal Tab	
print("Hello \t World!")
Output:
Hello 	 World!
11.	\v	ASCII Vertical Tab	
print("Hello \v World!")
Output:
Hello 
 World!
12.	\ooo	Character with octal value	
print("\110\145\154\154\157")
Output:
Hello
13	\xHH	Character with hex value.	
print("\x48\x65\x6c\x6c\x6f")
Output:
Hello




# the format() method
The format() method is the most flexible and useful method in formatting strings. The curly braces {} are used as the placeholder in the string and replaced by the format() method argument.

print("{} and {} both are the best friends".format("Devansh", "Abhishek"))


# positive arguments:

print("{1} and {0} best players ".format("Virat", "ROhit"))

# Keyword arguments:

print("{a},{b},{c}".format(a="JAmes", b = "Peter", c = "Rickey"))



## Python string formatting using % operator:

integer = 10
Float = 1.230

String = "Dinesh"

print("Hi i am integer... My value is %d\n Hi i am float.. MY value is %f\n Hi i am string...My value is %s\n"%(integer, Float, String))






#. Python String functions: - in built function

Method                 Description
capitalize()           It capitalizes the first character of the String. This function is deprecated in python3.
casefold()             It returns a version of s suitable for case-less comparisons.
center(width ,fillchar) It returns a space padded string with the original string centred with equal number of left and right spaces.
count(string,begin,end) It counts the number of occurrences of a substring in a String between begin and end index.
decode(encoding = 'UTF8', errors = 'strict') Decodes the string using codec registered for encoding.
encode()               Encode S using the codec registered for encoding. Default encoding is 'utf-8'.
endswith(suffix ,begin=0,end=len(string)) It returns a Boolean value if the string terminates with given suffix between begin and end.
expandtabs(tabsize = 8) It defines tabs in string to multiple spaces. The default space value is 8.
find(substring ,beginIndex, endIndex) It returns the index value of the string where substring is found between begin index and end index.
format(value)          It returns a formatted version of S, using the passed value.
index(subsring, beginIndex, endIndex) It throws an exception if string is not found. It works same as find() method.
isalnum()              It returns true if the characters in the string are alphanumeric i.e., alphabets or numbers and there is at least 1 character. Otherwise, it returns false.
isalpha()              It returns true if all the characters are alphabets and there is at least one character, otherwise False.
isdecimal()            It returns true if all the characters of the string are decimals.
isdigit()              It returns true if all the characters are digits and there is at least one character, otherwise False.
isidentifier()         It returns true if the string is the valid identifier.
islower()              It returns true if the characters of a string are in lower case, otherwise false.
isnumeric()            It returns true if the string contains only numeric characters.
isprintable()          It returns true if all the characters of s are printable or s is empty, false otherwise.
isupper()              It returns false if characters of a string are in Upper case, otherwise False.
isspace()              It returns true if the characters of a string are white-space, otherwise false.
istitle()              It returns true if the string is titled properly and false otherwise. A title string is the one in which the first character is upper-case whereas the other characters are lower-case.
isupper()              It returns true if all the characters of the string(if exists) is true otherwise it returns false.
join(seq)              It merges the strings representation of the given sequence.
len(string)            It returns the length of a string.
ljust(width[,fillchar]) It returns the space padded strings with the original string left justified to the given width.
lower()                It converts all the characters of a string to Lower case.
lstrip()               It removes all leading whitespaces of a string and can also be used to remove particular character from leading.
partition()            It searches for the separator sep in S, and returns the part before it, the separator itself, and the part after it. If the separator is not found, return S and two empty strings.
maketrans()            It returns a translation table to be used in translate function.
replace(old,new[,count]) It replaces the old sequence of characters with the new sequence. The max characters are replaced if max is given.
rfind(str,beg=0,end=len(str)) It is similar to find but it traverses the string in backward direction.
rindex(str,beg=0,end=len(str)) It is same as index but it traverses the string in backward direction.
rjust(width,[,fillchar]) Returns a space padded string having original string right justified to the number of characters specified.
rstrip()               It removes all trailing whitespace of a string and can also be used to remove particular character from trailing.
rsplit(sep=None, maxsplit = -1) It is same as split() but it processes the string from the backward direction. It returns the list of words in the string. If Separator is not specified then the string splits according to the white-space.
split(str,num=string.count(str)) Splits the string according to the delimiter str. The string splits according to the space if the delimiter is not provided. It returns the list of substring concatenated with the delimiter.
splitlines(num=string.count('\n')) It returns the list of strings at each line with newline removed.
startswith(str,beg=0,end=len(str)) It returns a Boolean value if the string starts with given str between begin and end.
strip([chars])         It is used to perform lstrip() and rstrip() on the string.
swapcase()             It inverts case of all characters in a string.
title()                It is used to convert the string into the title-case i.e., The string meEruT will be converted to Meerut.
translate(table,deletechars = '') It translates the string according to the translation table passed in the function .
upper()                It converts all the characters of a string to Upper Case.
zfill(width)           Returns original string leftpadded with zeros to a total of width characters; intended for numbers, zfill() retains any sign given (less one zero).
``` 

