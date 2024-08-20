tup = (1,2,3,5,6,"green", False)
print(type(tup), tup)
print(tup[0])
print(tup[3])

#print(tup(65))  #this is not present index no. in tup
print(len(tup))
print(tup[-1])

print(tup[:3])
print(tup[3:])

########
'''
if 2 in tup:
    print("yes 2 is present in this tuple")

else:
    print("no")


##########
tup1 = tup[1:5]
print(tup1)
'''


############# Tuples method:

'''
countries = ("Bangladesh", "Mayanmar", "Nepal", "The Republic of India")
temp = list(countries)
#print(temp)
#temp.append("Russia")  #add item
#temp.pop(3)  #remove item
#temp[2] = "Finland"
countries = tuple(temp)
print(countries)
#print(temp)

'''

tuple1 = (0,1,2,3,4,5,6,7,1,1,3,4,4,8,9)
print(len(tuple1))
#res = tuple1.count(3)
#res = tuple1.index(8)
#res = tuple1.index(3,4,15)
res = len(tuple1)
print("The length of res is:",res)


#built in tuple functions
#all()
print(all((" ", ",", "1", "2")))
print(all((" ", ",", "1",False,"2")))
#any:
print(any((" ", ",", "1", "2")))
print(any((False, ",", "1", "2")))
print(any((False, False, False, False)))

#enumerate
x = (1, 2, 3, 4, 5, 6)
print(tuple(enumerate(x)))

#len():
print(len(x))


#max()
print(max(1,2,3,4,5))

#min()
print(min(1,2,3,4,5))


#sorted()
origin = (1,2,4,5,85)
tuple1 = sorted(origin)
print(tuple1)
print(origin)

#sum()
print(sum((1,2,3,4,5,6)))  #this functions is only work on numerical values in the tuple not in string value.

##################
data = input("data: ")
x = 12
print(len(data))












































