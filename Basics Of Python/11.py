for i in range(12):
    print("5 X", i, "=", 5*i)
    if(i == 10):
        break



#############################  break statement
for i in range(12):
    if(i == 10):
        break
    print("5 X", i+1, "=", 5* (i+1))

print("Skip the loops")



############continue statement


for i in range(12):
    if(i == 10):
        print("Skip the loops")
        continue
    print("5 X", i+1, "=", 5* (i+1))


########## do while loops
i = 0
while True:
    print(i)
    i = i+1
    if(i%100==0):
        break









        
