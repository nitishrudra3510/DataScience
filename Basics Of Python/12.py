
'''
def calculateGmean(a, b):
    mean = (a*b)/(a+b)
    print(mean)


def is Greater(a, b):
    if(a>b):
        print("First number is greater)
    else:
        print("Second number is gretaer or equal")

def isLesser(a, b):
    pass

a = 9
b = 8
isGreater(a, b)
calculateGmean(a, b)

c = 8
              
'''



def average(a=9, b=5):
    print("The average is ", (a+b)/2)


#average(1, 6)
#average()
average(b = 8)


####keyword arguments

def average(a=9, b=5):
    print("The average is ", (a+b)/2)


average(a=5)
average(b = 8, a = 5)


###required arguments
def average(a,b,c=4):
    print("The average is ", (a+b)/2)



average(2,5)




##


def average(*numbers):
    print(type(average))
    sum = 0
    for i in numbers:
        sum = sum + i
    #print("Average is:", sum / len(numbers))
    return sum/len(numbers)

c = average(2,6,5,5)
print(c)



###### RETURN STATEMENTS

def name(fname, mname, lname):
    return "Hello, " + fname + " " + mname + " " + lname

print(name("James", "Buchanan", "Barnes"))














