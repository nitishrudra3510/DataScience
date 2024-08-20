a = "Rudra!!!!!!" #list is immutable
print(len(a))
print(a)
print(a.upper())
print(a.lower())
print(a.rstrip("!")) #it strips of !, its removes only from right sides(!) because runs start from right sides..
print(a.replace("Rudra", "nitish"))  # Its removes all occurence strings with other strings

print(a.split(" "))  # Its used of split then returns aslist items.

str1=a.capitalize()
print(str1)  # ony print first characters of strings rest of other characters of the strings


print(str1.center(50))  #  it used (center) in the strings to the center as per the parameters given by the users
print(str1.center(50, "."))

str2="Abracadabra"
print(str2.count("r")) #the numbers of times values has occured within the given string.


print(str2.endswith("bra"))


str1 = "Welcome to the Console !!!"
print(str1.endswith("to", 4, 10))

'''
print(str1.find("the"))
print(str1.find("bhh"))

print(str1.index("the"))

##print(str1.index("bhhhh"))

print(str1.isprintable())
str2="12345789"
print(str2.isprintable())

str2= '12345789jhghdfbdfjm'
print(str2.isprintable())
'''
print(str1.swapcase())
print(str1.swapcase())
print(str1.title())








