letter = "Hey my name {0} andd I am from {1}"
country = "India"
name = "Harry"

print(letter.format(country, name))
print(f"Hey my name is {name} and I am from {country}")
print(f"We use f-strings liks this: Hey my name is {{name}} and I am from {{country}}")

price = 49.0999
txt = f"For only {price:.2f} dollers!"
print(txt)
#print(txt.format(price))
print(type(f"{2*30}"))


import math
me = "Rudra"
a1 = 3
a = f"This is {me} {a1}   {math.sin(65)}"
print(a)


##############         # docstrings only written on the above of function name and write above the functions body
def square(n):
    ''' Takes in a number n, return the
square is n'''
    print(n**2)
square(5)
print(square.__doc__)



