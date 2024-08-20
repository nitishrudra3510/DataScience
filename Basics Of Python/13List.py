Python Lists

    Lists are ordered collection of data items.
    They store multiple items in a single variable.
    List items are separated by commas and enclosed within square brackets [].
    Lists are changeable meaning we can alter them after creation.

Example 1:

lst1 = [1,2,2,3,5,4,6]
lst2 = ["Red", "Green", "Blue"]
print(lst1)
print(lst2)

Output:

[1, 2, 2, 3, 5, 4, 6]
['Red', 'Green', 'Blue']

Example 2:

details = ["Abhijeet", 18, "FYBScIT", 9.8]
print(details)

Output:

['Abhijeet', 18, 'FYBScIT', 9.8]

As we can see, a single list can contain items of different data types.


######################

List Index:

Each item/element in a list has its own unique index. This index can be used to access any particular item from the list.
The first item has index [0], second item has index [1], third item has index [2] and so on.
Example:

colors = ["Red", "Green", "Blue", "Yellow", "Green"]
#          [0]      [1]     [2]      [3]      [4]




      #######   Accessing list items:

We can access list items by using its index with the square bracket syntax []. For example colors[0] will give "Red",
colors[1] will give "Green" and so on...
Positive Indexing:

As we have seen that list items have index, as such we can access items using these indexes.
Example:

colors = ["Red", "Green", "Blue", "Yellow", "Green"]
#          [0]      [1]     [2]      [3]      [4]
print(colors[2])
print(colors[4])
print(colors[0])

Output:

Blue
Green
Red




######### Negative Indexing:

Similar to positive indexing, negative indexing is also used to access items, but from the end of the list.
The last item has index [-1], second last item has index [-2], third last item has index [-3] and so on.
Example:

colors = ["Red", "Green", "Blue", "Yellow", "Green"]
#          [-5]    [-4]    [-3]     [-2]      [-1]
print(colors[-1])
print(colors[-3])
print(colors[-5])

Output:

Green
Blue
Red



## Check whether an item in present in the list?

We can check if a given item is present in the list. This is done using the in keyword.

colors = ["Red", "Green", "Blue", "Yellow", "Green"]
if "Yellow" in colors:
    print("Yellow is present.")
else:
    print("Yellow is absent.")

Output:

Yellow is present.



colors = ["Red", "Green", "Blue", "Yellow", "Green"]
if "Orange" in colors:
    print("Orange is present.")
else:
    print("Orange is absent.")

Output:

Orange is absent.



###  Range of Index:

You can print a range of list items by specifying where you want to start, where do you want to end and if you want to skip elements in between
the range.

Syntax:

listName[start : end : jumpIndex]

Note: jump Index is optional. We will see this in later examples.


Example: printing elements within a particular range:

animals = ["cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow"]
print(animals[3:7])	#using positive indexes
print(animals[-7:-2])	#using negative indexes'

Output:
['mouse', 'pig', 'horse', 'donkey']
['bat', 'mouse', 'pig', 'horse', 'donkey']

Here, we provide index of the element from where we want to start and the index of the element till which we want to print the values.

Note: The element of the end index provided will not be included.



Example: printing all element from a given index till the end

animals = ["cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow"]
print(animals[4:])	#using positive indexes
print(animals[-4:])	#using negative indexes

Output:

['pig', 'horse', 'donkey', 'goat', 'cow']
['horse', 'donkey', 'goat', 'cow']

When no end index is provided, the interpreter prints all the values till the end.


Example: printing all elements from start to a given index

animals = ["cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow"]
print(animals[:6])	#using positive indexes
print(animals[:-3])	#using negative indexes

Output:

['cat', 'dog', 'bat', 'mouse', 'pig', 'horse']
['cat', 'dog', 'bat', 'mouse', 'pig', 'horse']

When no start index is provided, the interpreter prints all the values from start up to the end index provided.


Example: Printing alternate values

animals = ["cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow"]
print(animals[::2])		#using positive indexes
print(animals[-8:-1:2])	#using negative indexes

Output:

['cat', 'bat', 'pig', 'donkey', 'cow']
['dog', 'mouse', 'horse', 'goat']

Here, we have not provided start and index, which means all the values will be considered. But as we have provided
a jump index of 2 only alternate values will be printed.



Example: printing every 3rd consecutive value withing a given range

animals = ["cat", "dog", "bat", "mouse", "pig", "horse", "donkey", "goat", "cow"]
print(animals[1:8:3])

Output:

['dog', 'pig', 'goat']

Here, jump index is 3. Hence it prints every 3rd element within given index.



###############################
## List Comprehension:

List comprehensions are used for creating new lists from other iterables like lists, tuples, dictionaries, 
sets, and even in arrays and strings.
Syntax:

List = [Expression(item) for item in iterable if Condition]

Expression: It is the item which is being iterated.

Iterable: It can be list, tuples, dictionaries, sets, and even in arrays and strings.

Condition: Condition checks if the item should be added to the new list or not.

Example 1: Accepts items with the small letter “o” in the new list

names = ["Milo", "Sarah", "Bruno", "Anastasia", "Rosa"]
namesWith_O = [item for item in names if "o" in item]
print(namesWith_O)


Output:

['Milo', 'Bruno', 'Rosa']

Example 2: Accepts items which have more than 4 letters

names = ["Milo", "Sarah", "Bruno", "Anastasia", "Rosa"]
#namesWith_O = [item for item in names if (len(item) > 4)]
namesWith_O = [item for item in names if (len(item)>4 )]
print(namesWith_O)

Output:

['Sarah', 'Bruno', 'Anastasia']






#############################################

# List Methods:


#list.sort()

This method sorts the list in ascending order. The original list is updated

Example 1:

colors = ["voilet", "indigo", "blue", "green"]
colors.sort()
print(colors)

num = [4,2,5,3,6,1,2,1,2,8,9,7]
num.sort()
print(num)

Output:

['blue', 'green', 'indigo', 'voilet']\
[1, 1, 2, 2, 2, 3, 4, 5, 6, 7, 8, 9]

What if you want to print the list in descending order?
We must give reverse=True as a parameter in the sort method.


Example:

colors = ["voilet", "indigo", "blue", "green"]
colors.sort(reverse=True)
print(colors)

num = [4,2,5,3,6,1,2,1,2,8,9,7]
num.sort(reverse=True)
print(num)

Output:

['voilet', 'indigo', 'green', 'blue']
[9, 8, 7, 6, 5, 4, 3, 2, 2, 2, 1, 1]

The reverse parameter is set to False by default.

Note: Do not mistake the reverse parameter with the reverse method.



#reverse():

This method reverses the order of the list.
Example:

colors = ["voilet", "indigo", "blue", "green"]
colors.reverse()
print(colors)

num = [4,2,5,3,6,1,2,1,2,8,9,7]
num.reverse()
print(num)

Output:

['green', 'blue', 'indigo', 'voilet']
[7, 9, 8, 2, 1, 2, 1, 6, 3, 5, 2, 4]


#index():

This method returns the index of the first occurrence of the list item.
Example:

colors = ["voilet", "green", "indigo", "blue", "green"]
print(colors.index("green"))

num = [4,2,5,3,6,1,2,1,3,2,8,9,7]
print(num.index(3))

Output:

1
3

#count():

Returns the count of the number of items with the given value.
Example:

colors = ["voilet", "green", "indigo", "blue", "green"]
print(colors.count("green"))

num = [4,2,5,3,6,1,2,1,3,2,8,9,7]

Output:

2
3

#copy():

Returns copy of the list. This can be done to perform operations on the list without modifying the original list.
Example:

colors = ["voilet", "green", "indigo", "blue"]
newlist = colors.copy()
print(colors)
print(newlist)

Output:

['voilet', 'green', 'indigo', 'blue']
['voilet', 'green', 'indigo', 'blue']

#append():

This method appends items to the end of the existing list.
Example:

colors = ["voilet", "indigo", "blue"]
colors.append("green")
print(colors)

Output:

['voilet', 'indigo', 'blue', 'green']

#insert():

This method inserts an item at the given index. User has to specify index and the item to be inserted within the insert() method.
Example:

colors = ["voilet", "indigo", "blue"]
#           [0]        [1]      [2]

colors.insert(1, "green")   #inserts item at index 1
colors.insert(2, "blue") # insert at index 2.
# updated list: colors = ["voilet", "green", "indigo", "blue"]
#       indexs              [0]       [1]       [2]      [3]

print(colors)

Output:

['voilet', 'green', 'indigo', 'blue']

#extend():
The extend method is used to add all elements from an iterable (like another list) to the end of the current list. It modifies the original list in place.

This method adds an entire list or any other collection datatype (set, tuple, dictionary) to the existing list.
Example 1:

#add a list to a list
colors = ["voilet", "indigo", "blue"]
rainbow = ["green", "yellow", "orange", "red"] # add this list in colors lists.
colors.extend(rainbow)
print(colors)

Output:

['voilet', 'indigo', 'blue', 'green', 'yellow', 'orange', 'red']

Concatenating two lists:

You can simply concatenate two lists to join two lists.
Example:

colors = ["voilet", "indigo", "blue", "green"]
colors2 = ["yellow", "orange", "red"]
print(colors + colors2)

Output:

['voilet', 'indigo', 'blue', 'green', 'yellow', 'orange', 'red']


# ordered checking list:

a = [ 1, 2, "Ram", 3.50, "Rahul", 5, 6 ]    
b = [ 1, 2, 5, "Ram", 3.50, "Rahul", 6 ]    
print(a == b)    



# examples code 
emp = [ "John", 102, "USA"]       
Dep1 = [ "CS",10]    
Dep2 = [ "IT",11]      
HOD_CS = [ 10,"Mr. Holding"]      
HOD_IT = [11, "Mr. Bewon"]    

print("EMploy data.. : ")
print("Name : %s, ID : %d,  Country : %s "%(emp[0], emp[1], emp[2]))


print("Priting department...")
print("Department 1:\nName: %s, ID: %d\n Department 2:\n Name: %s, ID: %s" %(Dep1[0], Dep1[1], Dep2[0], Dep2[1]))


print("HOD Details ....")      
print("CS HOD Name: %s, Id: %d" %(HOD_CS[1], HOD_CS[0]))      
print("IT HOD Name: %s, Id: %d" %(HOD_IT[1], HOD_IT[0]))      
print(type(emp), type(Dep1), type(Dep2), type(HOD_CS), type(HOD_IT))    



# updating the list values.

list = [1, 2, 3, 4, 5, 6]       
print(list)    

# assign the value at the index 2
list[2] = 10
print(list)

# Adding multiple-element     
list[1:3] = [89, 78]       
print(list) 


# It will add value at the end of the list    
list[-1] = 25    
print(list)    


# pythpon list operations:"


1. Repetition
2. conacatition
3. length
4. iteration
5. membership




# Repition:

# Code

# repetition of list  
# declaring the list  
list1 = [12, 14, 16, 18, 20]  
# repetition operator *  
l = list1 * 2  
print(l)  



# concatination
list1 = [12, 14, 16, 18, 20]  
list2 = [9, 10, 32, 54, 86]  
# concatenation operator +  
l = list1 + list2  
print(l)  



# length : get the length of the list

list1 = [12, 14, 16, 18, 20, 23, 27, 39, 40]  
# finding length of the list  
print(len(list1)) 


#  iteration:  The for loop is used to iterate over the list elements.

list1 = [12, 14, 16, 39, 40]  
# iterating  
for i in list1:
    print(i)
    
    
# meber ship;  It returns true if a particular item exists in a particular list otherwise false.

list1 = [100, 200, 300, 400, 500]  
# true will be printed if value exists  
# and false if not


print(600 in list1)
print(300 in list1)
print(700 in list1)  
print(1040 in list1)  
  
print(300 in list1)  
print(100 in list1)  
print(500 in list1)  




# iterating a list: A list can be iterated by using a for - in loop. A simple list containing four strings,

# iterating a list  
list = ["John", "David", "James", "Jonathan"]      
for i in list:     
    # The i variable will iterate over the elements of the List and contains each element in each iteration.       
    print(i)  
    
    

# adding the element o the list:

# declaring the empty list
l = []

# take the input from the user to iterate the loop;
n = int(input("Enter the number of element in the list : "))

for i in range(0,n):
    # add the element to the list and take from the user
    l.append(input("Enter the num: "))
    
print("priting the list item...")

# traversal loop to print the lists items.
for i in l:
    print(i, end=" "). # end = " " : means to print the elements IN ONE LINE WITH SPACE.
    
    
    
    
# rempove the elment from the list:

list = [0,1,2,3,4, 7]       
print("printing original list: ")    
for i in list:      
    print(i,end=" ")      

list.remove(7). # remove the element of 7 from the list.

print("\nprinting the list after the removal of first element...")     

for i in list:      
    print(i,end=" ")    
    
    

# python list built in the fuction:
1. max
2. min
3. len


1. len(): to calcualte the length of the list

list = [0,1,2,3,4, 7]  
print(len(list))


# max : to return the maximum number of elements from the lists

list = [0,1,2,3,4, 7]  
print(max(list))


# min : to return the minimum number of elements from the lists


list = [0,1,2,3,4, 7]  
print(min(list))


# Example: 1- Create a program to eliminate the List's duplicate items.

list1 = [1,2,2,3,55,98,65,65,13,29]    
# Declare an empty list that will store unique values    
list2 = []   
for i in list1:
    if i not in list2:
        list2.append(i)
        
print(list2)



# Example:2- Compose a program to track down the amount of the component in the rundown.

list1 = [3,4,5,9,10,12,24]    
sum = 0    
for i in list1:    
    sum = sum+i        
print("The sum is:",sum)  



# Example: 3- Compose the program to find the rundowns comprise of somewhere around one normal component.

Code

list1 = [1,2,3,4,5,6]    
list2 = [7,8,9,2,10]    
for x in list1:    
    for y in list2:    
        if x == y:    
            print("The common element is:",x)    