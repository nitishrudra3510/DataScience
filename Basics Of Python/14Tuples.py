#Python Tuples:

Tuples are ordered collection of data items. They store multiple items in a single variable.
Tuple items are separated by commas and enclosed within round brackets ().
Tuples are unchangeable meaning we can not alter them after creation.


Example 1:

tuple1 = (1,2,2,3,5,4,6)
tuple2 = ("Red", "Green", "Blue")
print(tuple1)
print(tuple2)

Output:

(1, 2, 2, 3, 5, 4, 6)
('Red', 'Green', 'Blue')

Example 2:

details = ("Abhijeet", 18, "FYBScIT", 9.8)
print(details)

Output:

('Abhijeet', 18, 'FYBScIT', 9.8)


##########

#Tuple Indexes:

Each item/element in a tuple has its own unique index. This index can be used to access any particular item 
from the tuple. The first item has index [0], second item has index [1], third item has index [2] and so on.



Example:

country = ("Spain", "Italy", "India",)
#            [0]      [1]      [2]


#Accessing tuple items:

    
I. Positive Indexing:

As we have seen that tuple items have index, as such we can access items using these indexes.

Example:

country = ("Spain", "Italy", "India",)
#            [0]      [1]      [2]     
print(country[0])
print(country[1])
print(country[2])

Output:

Spain
Italy
India




II. Negative Indexing:

Similar to positive indexing, negative indexing is also used to access items, but from the end of the tuple.
The last item has index [-1], second last item has index [-2], third last item has index [-3] and so on.
Example:

country = ("Spain", "Italy", "India", "England", "Germany")
#            [0]      [1]      [2]       [3]        [4]
print(country[-1]) # Similar to print(country[len(country) - 1])
print(country[-3])
print(country[-4])

Output:

Germany
India
Italy



III. Check for item:

We can check if a given item is present in the tuple. This is done using the in keyword.


Example 1:

country = ("Spain", "Italy", "India", "England", "Germany")
if "Germany" in country:
    print("Germany is present.")
else:
    print("Germany is absent.")

Output:

Germany is present.



Example 2:

country = ("Spain", "Italy", "India", "England", "Germany")
if "Russia" in country:
    print("Russia is present.")
else:
    print("Russia is absent.")

Output:

Russia is absent.



IV. Range of Index:

You can print a range of tuple items by specifying where do you want to start, where do you want to end and if you
want to skip elements in between the range.


Syntax:
    
Tuple[start : end : jumpIndex]

Note: jump Index is optional. We will see this in given examples.
Example: Printing elements within a particular range:


animals = ("cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow")
print(animals[3:7])     #using positive indexes
print(animals[-7:-2])   #using negative indexes

Output:

('mouse', 'pig', 'horse', 'donkey')
('bat', 'mouse', 'pig', 'horse', 'donkey')

Here, we provide index of the element from where we want to start and the index of the element till which we want to
print the values. Note: The element of the end index provided will not be included.


Example: Printing all element from a given index till the end

animals = ("cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow")
print(animals[4:])      #using positive indexes
print(animals[-4:])     #using negative indexes


Output:

('pig', 'horse', 'donkey', 'goat', 'cow')
('horse', 'donkey', 'goat', 'cow')

When no end index is provided, the interpreter prints all the values till the end.


Example: printing all elements from start to a given index

animals = ("cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow")
print(animals[:6])      #using positive indexes
print(animals[:-3])     #using negative indexes

Output:

('cat', 'dog', 'bat', 'mouse', 'pig', 'horse')
('cat', 'dog', 'bat', 'mouse', 'pig', 'horse')

When no start index is provided, the interpreter prints all the values from start up to the end index provided.



Example: Print alternate values

animals = ("cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow")
print(animals[::2])     #using positive indexes
print(animals[-8:-1:2]) #using negative indexes

Output:


('cat', 'bat', 'pig', 'donkey', 'cow')
('dog', 'mouse', 'horse', 'goat')

Here, we have not provided start and end index, which means all the values will be considered. But as we have provided
a jump index of 2 only alternate values will be printed.


Example: printing every 3rd consecutive withing given range

animals = ("cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow")
print(animals[1:8:3])

Output:

('dog', 'pig', 'goat')

Here, jump index is 3. Hence it prints every 3rd element within given index.


##############

Manipulating Tuples:

Tuples are immutable, hence if you want to add, remove or change tuple items, then first you must convert the tuple 
to a list. Then perform operation on that list and convert it back to tuple.


Example:

countries = ("Spain", "Italy", "India", "England", "Germany")
temp = list(countries)
temp.append("Russia")       #add item 
temp.pop(3)                 #remove item
temp[2] = "Finland"         #change item
countries = tuple(temp)
print(countries)

Output:

('Spain', 'Italy', 'Finland', 'Germany', 'Russia')

Thus, we convert the tuple to a list, manipulate items of the list using list methods, then convert list back to a tuple.

However, we can directly concatenate two tuples without converting them to list.


Example:

countries = ("Pakistan", "Afghanistan", "Bangladesh", "ShriLanka")
countries2 = ("Vietnam", "India", "China")
southEastAsia = countries + countries2
print(southEastAsia)

Output:

('Pakistan', 'Afghanistan', 'Bangladesh', 'ShriLanka', 'Vietnam', 'India', 'China')




######################

Tuple methods:

As tuple is immutable type of collection of elements it have limited built in methods.They are explained below


#count() Method

The count() method of Tuple returns the number of times the given element appears in the tuple.
Syntax:

tuple.count(element)

Example

Tuple1 = (0, 1, 2, 3, 2, 3, 1, 3, 2)
res = Tuple1.count(3)
print('Count of 3 in Tuple1 is:', res)

Output

3


#index() method

The Index() method returns the first occurrence of the given element from the tuple.
Syntax:

tuple.index(element, start, end)

Note: This method raises a ValueError if the element is not found in the tuple.
Example

Tuple = (0, 1, 2, 3, 2, 3, 1, 3, 2)
res = Tuple.index(3)
print('First occurrence of 3 is', res)


Output:

3





# Python program to show how to create a tuple    
# Creating an empty tuple    
empty_tuple = ()    
print("Empty tuple: ", empty_tuple)    
    
# Creating tuple having integers    
int_tuple = (4, 6, 8, 10, 12, 14)    
print("Tuple with integers: ", int_tuple)    
    
# Creating a tuple having objects of different data types    
mixed_tuple = (4, "Python", 9.3)    
print("Tuple with different data types: ", mixed_tuple)    
    
# Creating a nested tuple    
nested_tuple = ("Python", {4: 5, 6: 2, 8:2}, (5, 3, 5, 6))    
print("A nested tuple: ", nested_tuple)    




## Parentheses are not necessary for the construction of multiples. This is known as triple pressing.

# Python program to create a tuple without using parentheses    
# Creating a tuple    
tuple_ = 4, 5.7, "Tuples", ["Python", "Tuples"]    
# Displaying the tuple created    
print(tuple_)    
# Checking the data type of object tuple_    
print(type(tuple_) )    
# Trying to modify tuple_    
try:    
    tuple_[1] = 4.2    
except:    
    print(TypeError )    
    
    
    

## Essentially adding a bracket around the component is lacking. A comma must separate the element to be recognized as a tuple.

# Python program to show how to create a tuple having a single element    
single_tuple = ("Tuple")    
print( type(single_tuple) )     
# Creating a tuple that has only one element    
single_tuple = ("Tuple",)    
print( type(single_tuple) )     
# Creating tuple without parentheses    
single_tuple = "Tuple",    
print( type(single_tuple) )    


# accessing  tuple elements



1. **Indexing Tuple Elements**:
   - We can use the index operator `[]` to access an object in a tuple, where the index starts at 0.
   - The indices of a tuple with five items will range from 0 to 4. An IndexError will be raised if we attempt to access an index outside this range, e.g., accessing index 5.
   - Because Python indices must be integers, providing a floating-point index or any other non-integer type will result in a TypeError.

2. **Accessing Elements in Nested Tuples**:
   - Elements in nested tuples can be accessed using indexing. For example:


      nested_tuple = ((1, 2), (3, 4), (5, 6))
      print(nested_tuple[1][0])  # Output: 3




# code:

# Python program to show how to access tuple elements    
# Creating a tuple    
tuple_ = ("Python", "Tuple", "Ordered", "Collection")    
print(tuple_[0])      
print(tuple_[1])     
# trying to access element index more than the length of a tuple    
try:    
    print(tuple_[5])     
except Exception as e:    
    print(e)    
# trying to access elements through the index of floating data type    
try:    
    print(tuple_[1.0])     
except Exception as e:    
    print(e)    
# Creating a nested tuple    
nested_tuple = ("Tuple", [4, 6, 2, 6], (6, 2, 6, 7))    
    
# Accessing the index of a nested tuple    
print(nested_tuple[0][3])           
print(nested_tuple[1][1])       




# The last thing of the assortment is addressed by - 1, the second last thing by - 2, etc.

Code

# Creating a tuple    
tuple_ = ("Python", "Tuple", "Ordered", "Collection")    
# Printing elements using negative indices    
print("Element at -1 index: ", tuple_[-1])    
print("Elements between -4 and -1 are: ", tuple_[-4:-1])    



# slicing:

Certainly! Tuple slicing in Python allows you to access a range of elements within a tuple. You can use the colon `:` operator to specify the start and end indices for slicing. Here's a basic example:

```python
# Define a tuple
my_tuple = (1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

# Slice the tuple to access elements
# Syntax: tuple[start_index:end_index:step]
slice_1 = my_tuple[2:6]  # Access elements from index 2 to 5 (exclusive)
slice_2 = my_tuple[::2]  # Access every second element
slice_3 = my_tuple[-3:]  # Access last three elements

# Print the slices
print("Slice 1:", slice_1)
print("Slice 2:", slice_2)
print("Slice 3:", slice_3)
```

Output:
```
Slice 1: (3, 4, 5, 6)
Slice 2: (1, 3, 5, 7, 9)
Slice 3: (8, 9, 10)
```

In this example:
- `slice_1` contains elements from index 2 to 5 (exclusive).
- `slice_2` contains every second element of the tuple.
- `slice_3` contains the last three elements of the tuple.



# code:

# Creating a tuple    
tuple_ = ("Python", "Tuple", "Ordered", "Immutable", "Collection", "Objects")    
# Using slicing to access elements of the tuple    
print("Elements between indices 1 and 3: ", tuple_[1:3])    
# Using negative indexing in slicing    
print("Elements between indices 0 and -4: ", tuple_[:-4])    
# Printing the entire tuple by using the default start and end values.     
print("Entire tuple: ", tuple_[:])    




# deleting a tuple:

A tuple's parts can't be modified, as was recently said. We are unable to eliminate or remove tuple components as a result.


# Python program to show how to delete elements of a Python tuple    
# Creating a tuple    
tuple_ = ("Python", "Tuple", "Ordered", "Immutable", "Collection", "Objects")    
# Deleting a particular element of the tuple    
try:
    del tuple_[3]
    print(tuple_)
    
except Exception as e:
    print(e)
    
 
# deleting the varioables from the global space of the program.

del tuple_

# trying. accessing the tuple after deleting it;

try:
    print(tuple_)
    
except Exception as e:
    print(e)
    
    
    
    
    
# repetiion tuples in Pyhton:

# Python program to show repetition in tuples    
tuple_ = ('Python',"Tuples")    
print("Original tuple is: ", tuple_)    


# repetion the tuples elements;
tuple_ = tuple_*3
print("New tuple is: ", tuple_)





## tuple membership test:

# Python program to show how to perform membership test for tuples    
# Creating a tuple    
tuple_ = ("Python", "Tuple", "Ordered", "Immutable", "Collection", "Ordered")    

# in operator
print('Tuple ' in tuple)
print('Items ' in tuple)

# Not in operator
print('Immutable ' not in tuple)
print('Items ' not in tuple)



# Iterating through a tuples:

# A for loop can be used to iterate through each tuple element.

tuple_ = ("Python", "Tuple", "Ordered", "Immutable") 

# iterating through the tuples
for item in tuple_:
    print(item)
    
    
    
# changing a Tuple


Tuples are immutable, meaning once their elements are defined, 
they cannot be changed. However, if an element itself is mutable, such as a list, the nested elements can be altered.
Reassignment can be used to assign multiple values to a tuple.





# Python program to show that Python tuples are immutable objects    
# Creating a tuple    
tuple_ = ("Python", "Tuple", "Ordered", "Immutable", [1,2,3,4])    
# Trying to change the element at index 2    

try:
    tuple_[2] = "items"
    print(tuple_)
    
except Exception as e:
    print(e)
    
# but inside a tuple, we can change elements  of a tuple object.

tuple_[-1][2] = 10
print(tuple_)

# changing the whole tuple:

tuple_ = ("pytho", "items")
print(tuple_)




# The + operator can be used to combine multiple tuples into one. This phenomenon is known as concatenation.

We can also repeat the elements of a tuple a predetermined number of times by using the * operator. This is already demonstrated above.

The aftereffects of the tasks + and * are new tuples.


# Python program to show how to concatenate tuples    
# Creating a tuple    
tuple_ = ("Python", "Tuple", "Ordered", "Immutable")    
# Adding a tuple to the tuple_    
print(tuple_ + (4, 5, 6))    





# Advantages of Tuples over Lists**:
   - Tuples are generally faster than lists, especially for operations like iteration and unpacking.
   - Tuples protect code from accidental modifications since they are immutable. Storing non-changing information in tuples is preferred over using records if immutability is desired.
   - Tuples can be used as dictionary keys if they contain immutable values like strings, numbers, or other tuples. Lists cannot be used as dictionary keys because they are mutable.
f