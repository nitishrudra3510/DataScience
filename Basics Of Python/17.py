
###

s = {2,4,5,2}
print(s)
info = {"carlo", 17, "false",5.9}
print(info)

harry = set()  # empty set
print(type(harry))


for value in info:
    print(value)


########

s1 = {1,2,3,4}
s2 = {3,6,7}
print(s1.union(s2))
#s1.update(s2)
print(s1,s2)


# Write a program to remove the given number from the set.

my_set = {1,2,3,4,5,6,7,8,9}
n = int(input("ENter the number you want to remove "))
my_set.discard(n)

print("After removing the number : ", my_set)

 
 
 #2: Write a program to add multiple elements to the set.
 

my_set = {1,2,3,4,5,6,7,8,9}
# n = input("Add multiple elements to the set..")
# my_set.update(n)


# Use update() with a list containing the numbers
my_set.update([2, 3, 11, 22, 44])

print("After adding multiple numbers :")

print(my_set)
 
 
 
 # Write a program to find the union between two set.
set1 = set(["Peter","Joseph", 65,59,96])  
set2  = set(["Peter",1,2,"Joseph"])  
SET3 = set.union(set2)
print(SET3)
 
 
 
#  Write a program to find the intersection between two sets.
set1 = {23,44,56,67,90,45,"Javatpoint"}  
set2 = {13,23,56,76,"Sachin"}  
set3 = set1.intersection(set2)  
print(set3)  


# Write the program to add element to the frozenset.

set1 = frozenset([23,44,56,67,90,45,"Javatpoint"])
set2 = frozenset([13,23,56,76,"Sachin"])
set3 = set1.intersection(set2)  
print(set3) 

set2.add(23,34) # ypeError: 'frozenset' object does not support item assignment



# Write the program to find the issuperset, issubset and superset.

set1 = set(["Peter","James","Camroon","Ricky","Donald"])  
set2 = set(["Camroon","Washington","Peter"])  
set3 = set(["Peter"])  

issubset = set1>=set2
print(issubset)

issuperset = set1<=set2
print(issuperset)

issubset = set3<=set2
print(issubset)

issuperset = set2>=set3
print(issuperset)




## Python Built-in set methods
Python contains the following methods to be used with the sets.

SN	Method	Description
1	add(item):    	It adds an item to the set. It has no effect if the item is already present in the set.
2	clear():     	It deletes all the items from the set.
3	copy(): 	       It returns a shallow copy of the set.
4	difference_update(....): 	It modifies this set by removing all the items that are also present in the specified sets.
5	discard(item) : 	It removes the specified item from the set.
6	intersection(): 	It returns a new set that contains only the common elements of both the sets. (all the sets if more than two are specified).
7	intersection_update(....): 	It removes the items from the original set that are not present in both the sets (all the sets if more than one are specified).
8	Isdisjoint(....):    Return True if two sets have a null intersection.
9	Issubset(....):	Report whether another set contains this set.
10	Issuperset(....):	Report whether this set contains another set.
11	pop():	Remove and return an arbitrary set element that is the last element of the set. Raises KeyError if the set is empty.
12	remove(item):	Remove an element from a set; it must be a member. If the element is not a member, raise a KeyError.
13	symmetric_difference(....) 	Remove an element from a set; it must be a member. If the element is not a member, raise a KeyError.
14	symmetric_difference_update(....)	 Update a set with the symmetric difference of itself and another.
15	union(....)	   Return the union of sets as a new set.
(i.e. all elements that are in either set.)
16	update():	Update a set with the union of itself and others.
