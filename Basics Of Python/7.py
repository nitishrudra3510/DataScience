a = int(input("Enter your age: "))
print("your age: ", a)
#conditional opertors
# >,<, <=, >=, !=, ==
'''
print(a>18)
print(a<18)
print(a<=18)
print(a>=18)
print(a==18)
print(a!=18)
'''

if (a>18):
    print("you can drive")
    print("yes")
else:
    print("you cannot drive")
    print("not")
    print("I WILL  MANAGE THAT")


appleprice = 10
budget = 200
if (budget - appleprice < 50):
    print("Alexa, add 1 kg apples to the carts.")
elif (budget - appleprice > 50):
    print("Its okay you can boy!")
else:
    print("Alexa, do not add Apples to the cart!")



num = int(input("Enter number:"))
if num < 0:
    print("NUMBER IS negatives")
elif (num == 0):
    print("Number is zeros.")
elif (num == 999):
    print("Number is special")
else:
    print("Number is positive.")
print("I am happy now!")



# Nested methods:


num = 18
if (num < 0):
    print("Number is negative.")
elif (num > 0):
    if (num <=10):
        print("Number is between 1-10")
    elif (num > 10  and num<=30):
        print("Number is between 11-30")
    else:
        print("Number is greater than 30")
else:
    print("Number is zero")
print("\n Thank you")

