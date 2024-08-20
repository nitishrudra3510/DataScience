
Operators:

Python has different types of operators for different operations. To create a calculator we require arithmetic operators.

**Python Operators**

**Introduction:**
Operators are symbols that perform specific operations on operands in programming languages. They are essential for building logical operations in programs. Python, like other languages, has various operators categorized into different types.

**Types of Operators in Python:**
1. Arithmetic operators
2. Comparison operators
3. Assignment Operators
4. Logical Operators
5. Bitwise Operators
6. Membership Operators
7. Identity Operators

**Arithmetic Operators:**
Arithmetic operators are used for mathematical operations between operands. They include:
- Addition (+)
- Subtraction (-)
- Multiplication (*)
- Division (/)
- Modulus (remainder %)
- Exponentiation (**)
- Floor Division (//)

**Explanation of Arithmetic Operators:**
- Addition (+): Adds two operands.
- Subtraction (-): Subtracts the second operand from the first.
- Division (/): Returns the quotient after dividing the operands.
- Multiplication (*): Multiplies two operands.
- Modulus (%): Returns the remainder after division.
- Exponent (**): Raises the first operand to the power of the second.
- Floor Division (//): Provides the quotient rounded down after division.

**Program Example:** python
a = 32    # Initialize the value of a  
b = 6     # Initialize the value of b  
print('Addition of two numbers:', a + b)  
print('Subtraction of two numbers:', a - b)  
print('Multiplication of two numbers:', a * b)  
print('Division of two numbers:', a / b)  
print('Reminder of two numbers:', a % b)  
print('Exponent of two numbers:', a ** b)  
print('Floor division of two numbers:', a // b)


**Output:**

Addition of two numbers: 38
Subtraction of two numbers: 26
Multiplication of two numbers: 192
Division of two numbers: 5.333333333333333
Reminder of two numbers: 2
Exponent of two numbers: 1073741824
Floor division of two numbers: 5
```

Arithmetic operators play a crucial role in performing mathematical calculations in Python programs.




## Comparison operator
Comparison operators mainly use for comparison purposes. Comparison operators compare the values of the two operands and return a true or false Boolean value in accordance. The example of comparison operators are ==, !=, <=, >=, >, <. In the below table, we explain the works of the operators.

Operator	Description
==	If the value of two operands is equal, then the condition becomes true.
!=	If the value of two operands is not equal, then the condition becomes true.
<=	The condition is met if the first operand is smaller than or equal to the second operand.
>=	The condition is met if the first operand is greater than or equal to the second operand.
>	If the first operand is greater than the second operand, then the condition becomes true.
<	If the first operand is less than the second operand, then the condition becomes true.
Program Code:

Now we give code examples of Comparison operators in Python. The code is given below -

a = 32      # Initialize the value of a  
b = 6       # Initialize the value of b  
print('Two numbers are equal or not:',a==b)  
print('Two numbers are not equal or not:',a!=b)  
print('a is less than or equal to b:',a<=b)  
print('a is greater than or equal to b:',a>=b)  
print('a is greater b:',a>b)  
print('a is less than b:',a<b)  
Output:

Now we compile the above code in Python, and after successful compilation, we run it. Then the output is given below -

Two numbers are equal or not: False
Two numbers are not equal or not: True
a is less than or equal to b: False
a is greater than or equal to b: True
a is greater b: True
a is less than b: False



# **Assignment Operators in Python**

**Introduction:**
Assignment operators are used to assign values to variables in Python efficiently. They combine arithmetic and assignment operations into a single statement, making the code more concise and easy to read. The assignment operators in Python include =, +=, -=, *=, %=, **=, and //=.

**Explanation of Assignment Operators:**
- = (Assignment Operator):** Assigns the value of the right expression to the left operand.
- += (Addition Assignment):** Adds the value of the right operand to the value of the left operand and assigns the result to the left operand.
- -= (Subtraction Assignment):** Subtracts the value of the right operand from the value of the left operand and assigns the result to the left operand.
- *= (Multiplication Assignment):** Multiplies the value of the left operand by the value of the right operand and assigns the result to the left operand.
- %= (Modulus Assignment):** Divides the value of the left operand by the value of the right operand and assigns the remainder to the left operand.
- **= (Exponent Assignment):** Raises the value of the left operand to the power of the right operand and assigns the result to the left operand.
- //= (Floor Division Assignment):** Performs floor division on the left operand by the right operand and assigns the result to the left operand.

**Program Example:**
```python
a = 32       # Initialize the value of a  
b = 6        # Initialize the value of b  
print('a=b:', a == b)  
a += b       # Add b to a and assign the result to a  
print('a+=b:', a)  
a -= b       # Subtract b from a and assign the result to a  
print('a-=b:', a)  
a *= b       # Multiply a by b and assign the result to a  
print('a*=b:', a)  
a %= b       # Compute the remainder of a divided by b and assign it to a  
print('a%=b:', a)  
a **= b      # Raise a to the power of b and assign the result to a  
print('a**=b:', a)  
a //= b      # Perform floor division of a by b and assign the result to a  
print('a//=b:', a)  
```

**Output:**
```
a=b: False
a+=b: 38
a-=b: 32
a*=b: 192
a%=b: 0
a**=b: 1073741824
a//=b: 5
```



##  Bitwise Operators in Python**

**Introduction:**
Bitwise operators in Python are used to perform operations on individual bits of binary numbers. These operators work directly on the binary representations of integers. The common bitwise operators in Python include bitwise OR (|), bitwise AND (&), bitwise XOR (^), negation (~), left shift (<<), and right shift (>>).

**Explanation of Bitwise Operators:**
- & (Bitwise AND):** Calculates the AND of corresponding bits of the operands. If both bits are 1, the result is 1; otherwise, it's 0.
- | (Bitwise OR):** Computes the OR of corresponding bits of the operands. If at least one bit is 1, the result is 1.
- ^ (Bitwise XOR):** Performs XOR on corresponding bits. Result is 1 if the bits are different, else 0.
- ~ (Bitwise Negation):** Flips the bits in the operand, changing 1s to 0s and 0s to 1s.
- << (Left Shift):** Shifts the bits of the left operand to the left by a number of positions specified by the right operand.
- >> (Right Shift):** Shifts the bits of the left operand to the right by a number of positions specified by the right operand.

**Program Example:**
```python
a = 5       # initialize the value of a  
b = 6       # initialize the value of b  
print('a&b:', a & b)  
print('a|b:', a | b)  
print('a^b:', a ^ b)  
print('~a:', ~a)  
print('a<<b:', a << b)  
print('a>>b:', a >> b)  
```

**Output:**
```
a&b: 4
a|b: 7
a^b: 3
~a: -6
a<<b: 320
a>>b: 0
```




## **Notes on Logical Operators in Python**

**Introduction:**
Logical operators in Python are used to combine conditional statements. They allow you to make decisions in your program based on the truth or falsehood of multiple conditions. The main logical operators in Python include `and`, `or`, and `not`. These operators help in evaluating expressions and determining their truth values based on given conditions.

**Explanation of Logical Operators:**

- and (Logical AND):** Evaluates to `True` if both the operands are `True`. If the first operand is `False`, the second operand is not checked.
- or (Logical OR):** Evaluates to `True` if at least one of the operands is `True`. If the first operand is `True`, the second operand is not checked.
- not (Logical NOT):** Negates the condition. If the expression is `True`, `not` will make it `False`, and vice versa.

**Program Example:**
```python
a = 5          # initialize the value of a          
print('Is this statement true?:', a > 3 and a < 5)  
print('Any one statement is true?:', a > 3 or a < 5)  
print('Each statement is true then return False and vice-versa:', not(a > 3 and a < 5))  
```

**Output:**
```
Is this statement true?: False
Any one statement is true?: True
Each statement is true then return False and vice-versa: True
```

In the given Python program, logical operators `and`, `or`, and `not` are applied between the conditions involving variable `a`. By using logical operators, you can create complex conditions and evaluate them to make decisions in your code flow.

Understanding how to effectively use logical operators in Python helps in creating robust and efficient decision-making processes within your programs. By combining conditions using logical operators, you can control the flow of your program based on various criteria and requirements.


## **Membership Operators in Python**

**Introduction:**
Membership operators in Python are used to check for the presence or absence of a value within a Python data structure such as a list, tuple, or dictionary. The two main membership operators in Python are `in` and `not in`. These operators help in evaluating whether a value exists in a given data structure or not.

- Explanation of Membership Operators:**
- in:** Returns `True` if the value on the left side of the operator is found in the data structure on the right side (e.g., list, tuple, dictionary).
- not in:** Returns `True` if the value on the left side of the operator is not found in the data structure on the right side (e.g., list, tuple, dictionary).

**Program Example:**
```python
x = ["Rose", "Lotus"]  
print('Is value Present?', "Rose" in x)  
print('Is value not Present?', "Riya" not in x)  
```

**Output:**
```
Is value Present? True
Is value not Present? True
```

In the provided Python code snippet, the membership operators `in` and `not in` are applied to the list `x`. The first `print`
statement checks if the value "Rose" is present in the list `x`, which evaluates to `True`. The second `print` statement checks
if the value "Riya" is not present in the list `x`, which also evaluates to `True`.

By using membership operators in Python, you can easily check for the existence of specific values in data structures. This
is particularly useful when you need to search for elements within lists, tuples, or dictionaries and make decisions based on 
their presence or absence.

Understanding how to utilize membership operators can enhance your ability to efficiently work with data structures in Python 
and streamline the process of checking for the existence of values within them.
# **Identity Operators in Python**

**Introduction:**
Identity operators in Python are used to compare the memory locations of two objects to determine if they are the same object or not. The two main identity operators in Python are `is` and `is not`. These operators help in checking whether two variables point to the same object or different objects.

**Explanation of Identity Operators:**
- **is:** Returns `True` if the references on both sides of the operator point to the same object in memory.
- **is not:** Returns `True` if the references on both sides of the operator do not point to the same object in memory.

**Program Example:**
```python
a = ["Rose", "Lotus"]
b = ["Rose", "Lotus"]
c = a
print(a is c)
print(a is not c)
print(a is b)
print(a is not b)
print(a == b)
print(a != b)
```

**Output:**
```
True
False
False
True
True
False
```

In the provided Python code snippet, the identity operators `is` and `is not` are used to compare the memory locations of the objects assigned to variables `a`, `b`, and `c`. The output of each operator is based on whether the variables point to the same object or different objects in memory.

By using identity operators in Python, you can check whether variables are referring to the same object or not. This is different from the `==` and `!=` operators, which check for equality of values. Identity operators focus on object identity rather than object equality.

Understanding how to apply identity operators can help you in scenarios where you need to verify if two variables reference the same object or distinct objects in memory. It provides a way to compare object references and make decisions based on object identity.

### Operator Precedence
The order in which the operators are examined is crucial to understand since it tells us which operator needs to be considered first. Below is a list of the Python operators' precedence tables.

Operator	Description
**	Overall other operators employed in the expression, the exponent operator is given precedence.
~ + -	the minus, unary plus, and negation.
* / % //	the division of the floor, the modules, the division, and the multiplication.
+ -	Binary plus, and minus
>> <<	Left shift. and right shift
&	Binary and.
^ |	Binary xor, and or
<= < > >=	Comparison operators (less than, less than equal to, greater than, greater then equal to).
<> == !=	Equality operators.
= %= /= //= -= +=
*= **=	Assignment operators
is is not	Identity operators
in not in	Membership operators
not or and	Logical operators
