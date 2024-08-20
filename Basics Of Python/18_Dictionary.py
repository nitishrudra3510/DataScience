Python Dictionaries:

Dictionaries are ordered collection of data items. They store multiple items in a single variable.
Dictionary items are key-value pairs that are separated by commas and enclosed within curly brackets {}.
# This data structure is mutable
# The components of dictionary were made using keys and values.
# Keys must only have one component.
# Values can be of any type, including integer, list, and tuple.

Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
print(info)

Output:

{'name': 'Karan', 'age': 19, 'eligible': True}

Accessing Dictionary items:
I. Accessing single values:

Values in a dictionary can be accessed using keys. We can access dictionary values by mentioning keys either in
square brackets or by using get method.


Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
print(info['name'])
print(info.get('eligible'))

Output:

Karan
True

II. Accessing multiple values:

We can print all the values in the dictionary using values() method.


Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
print(info.values())
print(info)

Output:

dict_values(['Karan', 19, True])

III. Accessing keys:

We can print all the keys in the dictionary using keys() method.


Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
print(info.keys())

Output:

dict_keys(['name', 'age', 'eligible'])

IV. Accessing key-value pairs:

We can print all the key-value pairs in the dictionary using items() method.

Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
print(info.items())

Output:

dict_items([('name', 'Karan'), ('age', 19), ('eligible', True)])



#########################################



Dictionary Methods:

Dictionary uses several built-in methods for manipulation.They are listed below
update()

The update() method updates the value of the key provided to it if the item already exists in the dictionary,
else it creates a new key-value pair.



Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
print(info)
#info.update({'age':20})
info.update({'age':21})
info.update({'DOB':2001})
print(info)

Output:

{'name': 'Karan', 'age': 19, 'eligible': True}
{'name': 'Karan', 'age': 21, 'eligible': True, 'DOB': 2001}

Removing items from dictionary:

There are a few methods that we can use to remove items from dictionary.
clear():

The clear() method removes all the items from the list.


Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
info.clear()
print(info)

Output:

{}

pop():
The pop() method removes the key-value pair whose key is passed as a parameter.
Example:

info = {'name':'Karan', 'age':19, 'eligible':True}
info.pop('eligible')
print(info)

Output:

{'name': 'Karan', 'age': 19}

popitem():

The popitem() method removes the last key-value pair from the dictionary.
Example:

info = {'name':'Karan', 'age':19, 'eligible':True, 'DOB':2003}
info.popitem()
print(info)

Output:

{'name': 'Karan', 'age': 19, 'eligible': True}

del:

we can also use the del keyword to remove a dictionary item.
Example:

info = {'name':'Karan', 'age':19, 'eligible':True, 'DOB':2003}
del info['age']
print(info)

Output:

{'name': 'Karan', 'eligible': True, 'DOB': 2003}

If key is not provided, then the del keyword will delete the dictionary entirely.
Example:

info = {'name':'Karan', 'age':19, 'eligible':True, 'DOB':2003}
del info
print(info)

Output:

NameError: name 'info' is not defined



# dict method to use to create the dictionary

# empty dictionary

Dict = {}
print("Empty dictionary")
print(Dict)

# create dictionary with dict()

Dict = dict({1: "Hcl", 2:"WIPRO", 3:"Facebook"})
print("\n Create Dictionary by using dict():")

print(Dict)


# Creating a Dictionary       
# with each item as a Pair       

Dict = dict([(4, "Rinku"), (2, 'Singh')])
print("\n Dictionary created with each item as a Pair: ")
print(Dict)



# acessing the dictionary values..

Employee = {"Name": "Dev", "Age": 20, "salary":45000,"Company":"WIPRO"}      
print(type(Employee))      

print("printing Employee data.....")
print("name : %s" %Employee["Name"])

print("Age : %d" %Employee["Age"])

print("Salary : %d" %Employee["salary"])
print("Company : %s" %Employee["Company"])




# adding the dictionary values...
The dictionary is a mutable data type, and utilising the right keys allows you to change its values. Dict[key] = value and the value can both be modified. An existing value can also be updated using the update() method.

# Note: The value is updated if the key-value pair is already present in the dictionary. Otherwise, the dictionary's newly added keys.


# Creating an empty Dictionary       
Dict = {}       
print("Empty Dictionary: ")       
print(Dict)      

Dict[0] = 'Piter'
Dict[2] = 'Joseph'
Dict[3] = 'Ricky'
print("\nDictionary after adding 3 elements: ")
print(Dict)


# Adding set of values        
# with a single Key       
# The Emp_ages doesn't exist to dictionary      

Dict['Emp_ages'] = 20,23,24
print("\n Dictionary after 3 elements :")
print(Dict)

# updates existing key's value

Dict[3] = 'JavaPoint'
print("\n Updated key value: ")
print(Dict)



# example 2:

Employee = {"Name": "Dev", "Age": 20, "salary":45000,"Company":"WIPRO"}         
print(type(Employee))        
print("printing Employee data .... ")        
print(Employee)        
print("Enter the details of the new employee....");       

Employee["Name"] = input("Name : ")
Employee["Age"] = input("Age : ")
Employee["salary"] = input("Salary : ")
Employee["Company"] = input("Company : ")
print("printing Employee data .... ")
print(Employee) 


# deleting Elements using del kwyword.

Employee = {"Name":"David", "Age":55000, "Company":"WIpro"}
print(type(Employee))
print("Printing Employee data .... ")

print(Employee)
print("Deleting some of the employees data...")

del Employee["Name"]
del Employee["Company"]

print("priting the modified data .... ")
print(Employee)

print("Deleting the dictionary: Employee")

del Employee

print("LEts try to print it again..")
print(Employee)




# deleting elements using pop() methods:

A dictionary in Python is a collection of key-value pairs that is mutable and unordered. You can retrieve, insert, and remove items using their keys. One of the ways to remove items from a dictionary is by using the pop() method.

The pop() Method
The pop() method removes the value associated with a specific key in a dictionary and returns that value. The only argument required is the key of the element to be removed.

Syntax:

dictionary.pop(key)


# Creating a Dictionary
Dict1 = {1: 'JavaTpoint', 2: 'Educational', 3: 'Website'}

# Deleting a key using pop() method
pop_key = Dict1.pop(2)

# Output the modified dictionary
print(Dict1)


## clear() method, which removes all of the elements from the entire dictionary, 




## Iterating Dictionary.

# A dictionary can be iterated using the loop as given below.

# example 1:

# for loop to print all the keys of a dictionary    
Employee = {"Name": "John", "Age": 29, "salary":25000,"Company":"WIPRO"}        
for x in Employee:        
    print(x)    
    
    

# example 2:

Employee = {"Name": "John", "Age": 29, "salary":25000,"Company":"WIPRO"}for x in Employee:
    print(Employee[x]) 
    
    
# example 3:

Employee = {"Name": "John", "Age": 29, "sal": 24000, "Company":"WIPRO"}
for x in Employee.values():
    print(x)
    
    
    
    
    
# properties of Dictionary Keys:

Employee = {"Name":"John","Age":29,"Salary":25000,"Company":"WIPRO","Name":    
"John"}
for x,y in Employee.items():
    print(x,y)
    
    

Employee = {"Name": "John", "Age":29, "salary": 26000, "Company":"WIPRO",[100,201, 301]:"Department ID"}
for x, y in Employee.items():
    print(x,y)
    
    
# built in dictionary functions:

# len() : The string is lengthened by one for each key-value pair.
dict = {1: "Ayan", 2: "Bunny", 3: "Ram", 4: "Bheem"}  
print(len(dict))  


# any() :  the any() method returns True indeed if one dictionary key does have a Boolean expression that evaluates to True.

dict = {1: "Ayan", 2: "Bunny", 3: "Ram", 4: "Bheem"}  
any({'':'','':'','3':''})  


# all() : unlike any() method, all() only returns true if each of the dictionary's key contains a True Boolean Value..

dict = {1: "Ayan", 2: "Bunny", 3: "Ram", 4: "Bheem"}  
all({1:'',2:'','':''})  


# sorted() : it does with lists and tuples, the sorted() method returns an ordered series of the dictionary's keys. The ascending sorting has no effect on the original Python dictionary.

def sort_dict_key(d):
    
    return sorted(d.keys())

my_dict = {'banana': 3, 'apple': 2, 'orange': 1}

sorted_keys = sort_dict_key(my_dict)

for key in sorted_keys:
    print(key, ': ', my_dict[key])
    
    
    
dict = {7: "Ayan", 5: "Bunny", 8: "Ram", 1: "Bheem"}  
sorted(dict)  




# Built-in Dictionary methods

# clear() : It is mainly used to delete all the items of the dictionary.


dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}
dict.clear()
print(dict)


# copy() : It returns a shallow copy of the dictionary which is created.

dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    
# copy() method    
dict_demo = dict.copy()    
print(dict_demo)   

# pop() : t mainly eliminates the element using the defined key.
dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    
# pop() method    
dict_demo = dict.copy()    
x = dict_demo.pop(1)    
print(x)    

# popitem() : removes the most recent key-value pair entered

dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    
# popitem() method    
dict_demo.popitem()    
print(dict_demo)   


# keys() : it returns all the keys of the dictionary

dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    
# keys() method    
print(dict.keys())    


# items: it returns all the key-values pairs as a tuple.

dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    
# items() method    
print(dict.items()) 

# get() : It is used to get the value specified for the passed key.

dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    

print(dict.get(3))



# update() : It mainly updates all the dictionary by adding the key-value pair of dict2 to this dictionary.

dict_demo = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    
# update() method    
dict_demo.update({3: "TCS"})    
print(dict_demo)   


# values() :  It returns all the values of the dictionary with respect to given input.

dict = {1: "Hcl", 2: "WIPRO", 3: "Facebook", 4: "Amazon", 5: "Flipkart"}    
# values() method    
print(dict.values())    
