f = open("python2.txt")
#print(f.tell())   # iys starts from bottom of the body.. 
print(f.readline())
#print(f.tell())
f.seek(10)  # means code strats run from the written nuber in perenthethesis. 
print(f.readline())
#print(f.tell())
f.close()


############################
with open("python2.txt") as f:
    #a = f.read(4)
    a = f.readlines()
    print(a)

    
# f = open("python2.txt")


#f.close()










