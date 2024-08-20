# File to basics.

# file I/O in python

#python can used to perform operations on a file. (read&write the data)

# types of file
#1. text files: .txt. docx. log tec.
# Binary files: .mp4, mov, png, .jpeg tec..

# open, read and close files
#--------------------------------

we have to open a file before reading or writing..

f = open("file_name", "mode")

# file name       # r: read mode
sample.txt         # w : write mode..

data = f.read()
f.close()

'''
"r" - open file for reading - default mode
"w" -open a file for writing
"x" -creates file if not exists.
"a" - And more content to a file.
"t" - text mode - default mode
"b" - binary mode
"+" - read and write


'''

a = open("/Users/nitishkumar/Documents/Python Learning/File Handling/file.txt", "r")
data = a.read()
print(data)
print(type(data))
a.close()

# readline() - read only one lines..
# read = read entire line.

a = open("/Users/nitishkumar/Documents/Python Learning/File Handling/file.txt", "r")
data = a.readline()
print(data)

line2 = a.readline()
print(line2)
a.close()



# writing to a file..
f = open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "w")
f.write("I want to learn Javascript tommorow. 123 ")
f.close()


# append:

f = open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "a")
f.write("\nnniissh jcscb  hcbjkscs ")
f.close()



f = open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "r+")
f.write("niissh")
print(f.read())
f.close()


#### 

f = open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "w+")
# f.write("niissh")
print(f.read())
f.write("nitish") # nitish
f.close()


# another method:

with open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "r") as f:
    data = f.read()
    print(data)


with open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "w") as f:
    data = f.write("abc")
    print(data)


# deleting a file:
usign the os from django.utils.translation import ugettext_lazy as _
module (like a code libarary) is a file written by another programmers that generally has a functions we can use.


import os
os.remove("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt")


###

f = open("python.txt")
content = f.read()
print(content)

f.close()


#################

f = open("python.txt", "rt")
content = f.read(5)
print(content)

content = f.read(5)
print(content)
f.close()

#############

f = open("python.txt", "rt")
content = f.read(555)
print("1", content)

content = f.read(5555)
print("2", content)
f.close()


#######################  print new line character n each word
f = open("python.txt", "rt")
content = f.read()
for line in content:
    print(line)

f.close()



########## read each line


f = open("python.txt", "rt")
# content = f.read()
for line in f:
    print(line, end="")

f.close()


#########################

print("\n")
f = open("python.txt", "rt")
#print(f.readline())
#print(f.readline())
print(f.readlines()) # changes in lists in one line
# 
# 
# content = f.read()


f.close()


################################################################

f = open("python.txt", "w")
f.write("Nitish kumar is aab boy")
f.close()


########  append mode: a:  open an existing file for append operation. It won’t override existing data.

f = open("python.txt", "a")
f.write("Nitish kumar is aab boy\n")
f.close()


######################################
#w: open an existing file for a write operation. If the file already contains some data then it will be overridden but if the file is not present then it creates the file as well

f = open("python.txt", "w")
a = f.write("Nitish kumar is aab boy")
print(a)
f.close()

################  r+:  To read and write data into the file. The previous data in the file will be overridden.

f = open("python.txt", "r+")

print(f.read())
f.write("Thank you")



f.close()















# question practice..
with open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "w") as f:
    f.write("Hi everyone\n we are learning file I/O \n")
    f.write("using java.\n I am nitish kuamr.. java")

# repplace the word of java with python

with open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "r") as f:
    data = f.read()
    
new_data = data.replace("java", "python")
print(new_data)

# override the datas
with open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "w") as f:
    f.write(new_data)
    
    
# it is exit or not "learning."
def check_for_word():
    world = "learning"
    with open("/Users/nitishkumar/Documents/GitHub/Python_Learning/nitish.txt", "w") as f:
        data = f.read()
        if(data.find(word) != -1):
            print("Found")
      
        else:
            print("Not found!..") 
            
check_for_word()