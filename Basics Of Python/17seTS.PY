Python Sets:

Sets are unordered collection of data items. They store multiple items in a single variable.
Set items are separated by commas and enclosed within curly brackets {}. Sets are unchangeable,
meaning you cannot change items of the set once created. Sets do not contain duplicate items.


# each element in the set must be unique and immutable. Set->element->immutable

# but the set is mutable. sets->mutable

Example:

info = {"Carla", 19, False, 5.9, 19}
print(info)

Output:

{False, 19, 5.9, 'Carla'}

Here we see that the items of set occur in random order and hence they cannot be accessed using index numbers.
Also sets do not allow duplicate values.

Quick Quiz: Try to create an empty set. Check using the type() function whether the type of your variable is a set
Accessing set items:
    
Using a For loop

You can access items of set using a for loop.


Example:

info = {"Carla", 19, False, 5.9}
for item in info:
    print(item)

Output:

False
Carla
19
5.9



###############################################################


Joining Sets:

Sets in python more or less work in the same way as sets in mathematics. We can perform operations
like union and intersection on the sets just like in mathematics.
I. union() and update():

The union() and update() methods prints all items that are present in the two sets. The union() method
returns a new set whereas update() method adds item into the existing set from another set.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}
cities3 = cities.union(cities2)
print(cities3)

Output:

{'Tokyo', 'Madrid', 'Kabul', 'Seoul', 'Berlin', 'Delhi'}

Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}
cities.update(cities2)
print(cities)

Output:

{'Berlin', 'Madrid', 'Tokyo', 'Delhi', 'Kabul', 'Seoul'}

II. intersection and intersection_update():

The intersection() and intersection_update() methods prints only items that are similar to both the sets. 
The intersection()  does not change the original set but returns a new set with the common elements. when you want to get the common elements without changing the original sets.
 whereas intersection_update() changes the original set. when you want to directly modify the set to keep only the common elements.

set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}
set1.intersection_update(set2)
print(set1)  # Output: {3, 4}

set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}
new_set = set1.intersection(set2)
print(new_set)  # Output: {3, 4}
print(set1)  # Output: {1, 2, 3, 4}



Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}
cities3 = cities.intersection(cities2)
print(cities3)

Output:

{'Madrid', 'Tokyo'}

Example :

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}
cities.intersection_update(cities2)
print(cities)

Output:

{'Tokyo', 'Madrid'}



III. symmetric_difference and symmetric_difference_update():

The symmetric_difference() and symmetric_difference_update() methods prints only items that are not 
similar to both the sets. The symmetric_difference() method returns a new set whereas symmetric_difference_update()
method updates into the existing set from another set.



Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}
cities3 = cities.symmetric_difference(cities2)
print(cities3)

Output:

{'Seoul', 'Kabul', 'Berlin', 'Delhi'}

Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}
cities.symmetric_difference_update(cities2)
print(cities)

Output:

{'Kabul', 'Delhi', 'Berlin', 'Seoul'}

IV. difference() and difference_update():

The difference() and difference_update() methods prints only items that are only present in the original set
and not in both the sets. The difference() method returns a new set whereas difference_update() method updates
into the existing set from another set.



Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Seoul", "Kabul", "Delhi"}
cities3 = cities.difference(cities2)
print(cities3)

Output:

{'Tokyo', 'Madrid', 'Berlin'}

Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Seoul", "Kabul", "Delhi"}
print(cities.difference(cities2))

Output:

{'Tokyo', 'Berlin', 'Madrid'}



###########################################################################



Set Methods

There are several in-built methods used for the manipulation of set.They are explained below

isdisjoint():

The isdisjoint() method checks if items of given set are present in another set. This method returns
False if items are present, else it returns True.


Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Tokyo", "Seoul", "Kabul", "Madrid"}
print(cities.isdisjoint(cities2))

Output:

False


issuperset():

The issuperset() method checks if all the items of a particular set are present in the original set. It returns True if all the items are present, else it returns False.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Seoul", "Kabul"}
print(cities.issuperset(cities2))
cities3 = {"Seoul", "Madrid","Kabul"}
print(cities.issuperset(cities3))

Output:

False
False


issubset():

The issubset() method checks if all the items of the original set are present in the particular set. It returns True if all the items are present, else it returns False.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Delhi", "Madrid"}
print(cities2.issubset(cities))

Output:

True


add()

If you want to add a single item to the set use the add() method.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities.add("Helsinki")
print(cities)

Output:

{'Tokyo', 'Helsinki', 'Madrid', 'Berlin', 'Delhi'}


update()

If you want to add more than one item, simply create another set or any other iterable object(list, tuple, dictionary), 
and use the update() method to add it into the existing set.


Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities2 = {"Helsinki", "Warsaw", "Seoul"}
cities.update(cities2)
print(cities)

Output:

{'Seoul', 'Berlin', 'Delhi', 'Tokyo', 'Warsaw', 'Helsinki', 'Madrid'}



remove()/discard()

We can use remove() and discard() methods to remove items form list.
Example :

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities.remove("Tokyo")
print(cities)

Output:

{'Delhi', 'Berlin', 'Madrid'}

The main difference between remove and discard is that, if we try to delete an item which is not present in set, then remove() raises an error, whereas discard() does not raise any error.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities.remove("Seoul")
print(cities)

Output:

KeyError: 'Seoul'



pop()

This method removes the last item of the set but the catch is that we don’t know which item gets popped as sets are unordered. However, you can access the popped item if you assign the pop() method to a variable.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
item = cities.pop()
print(cities)
print(item)

Output:

{'Tokyo', 'Delhi', 'Berlin'} Madrid



del

del is not a method, rather it is a keyword which deletes the set entirely.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
del cities
print(cities)

Output:

NameError: name 'cities' is not defined We get an error because our entire set has been deleted and there is no 
variable called cities which contains a set.

What if we don’t want to delete the entire set, we just want to delete all items within that set?



clear():

This method clears all items in the set and prints an empty set.
Example:

cities = {"Tokyo", "Madrid", "Berlin", "Delhi"}
cities.clear()
print(cities)

Output:

set()

Check if item exists

You can also check if an item exists in the set or not.
Example

info = {"Carla", 19, False, 5.9}
if "Cala" in info:
    print("Carla is present.")
elif False in info:
    print("False is present")
else:
    print("Carla is absent.")


Output:

Carla is present.



# using adding methods: pyhton provoides add() and update(). the add() method is used to add single element,  THe update() method is use to to add multiple elements to the set.

Months = set(["January","February", "March", "April", "May", "June"])    
print("\nprinting the original set ... ")    
print(Months)    
print("\nAdding other months to the set...");    

Months.add("July")

Months.add("August")

print("\n Priting the modified set...")
print(Months)

print("\n Looping through the set elements...")
for i in Months:
    print(i)
    
    
    
# using update() function: to add more than one item in the set, and it accepts iteravle. as an arguments.
Months = set(["January","February", "March", "April", "May", "June"])    
print("\nprinting the original set ... ")    
print(Months)    
print("\nupdating the original set ... ")       

Months.update(["July", "August", ])
print("\nprinting the modified set ... ")

print(Months)



# Differnce between the two Sets: to calculate the substract (-) operator or inters3ection() method. 

# using substract() function: 

Day1 = {"Monday",  "Tuesday", "Wednesday", "Thursday"}
Day2 = {"Monday", "Tuesday", "Sunday"} 
print(Day1-Day2) # {'Wednesday', 'Thursday'}


# sysmetric difference between the two sets:

# The symmetric difference between two sets is a set of elements that are in either of the sets, 
# but not in both. In other words, it contains the elements that are unique to each set, excluding 
# the elements that are common to both sets.

Suppose you have two sets, set1 and set2:

python
Copy code
set1 = {1, 2, 3, 4}
set2 = {3, 4, 5, 6}
Symmetric Difference:
The elements in set1 but not in set2 are {1, 2}.
The elements in set2 but not in set1 are {5, 6}.
The symmetric difference is the union of these unique elements:

python
Copy code
symmetric_difference = {1, 2, 5, 6}


# Python Methods to Find Symmetric Difference:
# Using the ^ operator:

python
Copy code
symmetric_difference = set1 ^ set2
print(symmetric_difference)  # Output: {1, 2, 5, 6}
Using the symmetric_difference() method:

python
Copy code
symmetric_difference = set1.symmetric_difference(set2)
print(symmetric_difference)  # Output: {1, 2, 5, 6}


# code :
# using the ^ operator

a = {1,2,3,4,5,6}
b = {1,2,9,8,10}
c = a^b
print(c)


# Using symmetric_difference() method

a = {1,2,3,4,5,6}
b = {1,2,9,8,10}

c = a.symmetric_difference(b)
print(c)


# Set comparisons

In Python, you can compare sets to check if they are equal, if one set is a subset or superset of another, or if two sets have elements in common.


# Set Comparison Operators in Python:
#Equality (==):

Purpose: Checks if two sets contain exactly the same elements.
Example: {1, 2, 3} == {3, 2, 1} is True.


#Inequality (!=):

Purpose: Checks if two sets do not contain the same elements.
Example: {1, 2, 3} != {3, 2, 4} is True.


#Proper Subset (<):

Purpose: Checks if the left set is a proper subset of the right set (i.e., all elements of the left set are in the right set, and the right set has additional elements).
Example: {1, 2} < {1, 2, 3} is True.

#Subset (<=):

Purpose: Checks if the left set is a subset of the right set (i.e., all elements of the left set are in the right set).
Example: {1, 2} <= {1, 2} is True.
# 
# Proper Superset (>):

Purpose: Checks if the left set is a proper superset of the right set (i.e., all elements of the right set are in the left set, and the left set has additional elements).
Example: {1, 2, 3} > {1, 2} is True.

#Superset (>=):

Purpose: Checks if the left set is a superset of the right set (i.e., all elements of the right set are in the left set).
Example: {1, 2, 3} >= {1, 2} is True.


Days1 = {"Monday",  "Tuesday", "Wednesday", "Thursday"}    
Days2 = {"Monday", "Tuesday"}    
Days3 = {"Monday", "Tuesday", "Friday"}    
    
# 
print(Days1>Days2)


print(Days1<Days2)

print(Days2==Days3)  



# fronzenSet.

A frozen set is an immutable version of the built-in set data type. It is similar to a regular set, but its contents cannot be changed once the frozen set is created.

#Key Characteristics:
Unordered Collection: Frozen sets are unordered collections of unique elements, just like sets.
Immutable: Once created, the contents of a frozen set cannot be changed (no elements can be added or removed).
Hashable: Because they are immutable, frozen sets can be used as keys in dictionaries or as elements of other sets. Standard sets cannot be used in this way because they are mutable and therefore not hashable.


#Main Advantages:
Immutability: The contents cannot be changed, which makes frozen sets reliable for use in situations where a constant hash value is required.
Hashable: Can be used as dictionary keys or elements of other sets.

#Supported Operations:
Set Operations: Frozen sets support operations such as union, intersection, difference, and symmetric difference.
Non-modifying Operations: Operations like len(), min(), max(), and membership testing (in) are supported.


# creating a frozenset:

fronzeset = frozenset([1,2,3,4,5,6,7,8])
print(type(fronzeset)) # <class 'frozenset'>

# pritng the contents of the fronzen set:
print("\nPrinting the content of the frozen set...")
for i in fronzeset:
    print(i)


# Trying to modify the frozen set (this will raise an error)
Frozenset.add(6)  # This will give an error since we cannot change the content of Frozenset after creation


# Notes:
Creating: Use the frozenset() function to create a frozen set from an iterable.
Accessing Elements: You can iterate through a frozen set to access its elements.
Immutability: Attempts to modify the frozen set (e.g., using methods like add() or remove()) will result in an AttributeError



# Frozenset for the dictionary

A frozenset is an immutable version of a set, and it can be particularly useful when working with dictionaries. Here’s a breakdown of how frozensets relate to dictionaries:

Frozenset in the Context of Dictionaries:
Keys in Dictionaries:

Because frozensets are immutable and hashable, they can be used as keys in dictionaries. This is not possible with regular sets, as they are mutable and thus not hashable.
Values in Dictionaries:

Frozensets can also be used as values in dictionaries, just like any other data type.


Dictionary = {"Name": "John", "Country":"USA", "ID":101}

print(type(Dictionary))
Frozenset = frozenset(Dictionary)

print(type(Frozenset))

for i in Frozenset:
    print(i)
    
    
    


    