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


##############
def square(n):
    ''' Takes in a number n, return the
square is n'''
    print(n**2)
square(5)
print(square.__doc__)
