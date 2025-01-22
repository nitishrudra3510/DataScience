      16.08.2024-> datatypes, vectors, 
___________________________________________________________________________________


x<-c(30,25,0)
y<-c(25,33,0)
print(x+y)
print(x*y)
print(x/y)
print(x-y)
print(x%%y)
print(x&&y)
print(x&y)# in the mac, here it has  check each element  and outputs will be of each elements(true / false)
print(x|y)
print(x||y) # in the mac, here it has only check first element only and outputs will be only one(true / false)
print(x%/%y)
print(x%%y)


x1<-c(30,40)
y1<-c(40,50, 70)
print(x1+y1)
print(x1*y1)
print(y1-x1)
print(x1/y1)
print(x1%%y1)
print(x1^y1)



___________________________________________________________________________________

1. numeric
2. integer
3. logical
4. raw
5. complex()
6. character()

___________________________________________________________________________________

var1<-c(10, 20L, 5+10i, as.raw(55), TRUE, "nitish")
class(var1)


var2<-c(10, 20L, 5+10i, as.raw(55), TRUE)
class(var2)

var2<-c(10, 20L,  as.raw(55))
class(var2)

var3<-c(20L, as.raw(55))
class(var3)

var4<-c(10, 20L,  TRUE as.raw(55))
class(var4)


var5<-c(10L,as)
class(var5)

var4<-c(TRUE)
class(var4)


var6<-c(as.raw(55))
class(var6)

___________________________________________________________________________________

# the presedence of data types in R..
charcater->complex->numeric->integer->logical->raw
  
  
___________________________________________________________________________________

xy1<-5+20L+TRUE+3+10i
xy1


___________________________________________________________________________________
# Scan has taken multiple inputs and readline has taken single inputs.

# if we want to terminate the input in scan() then enter double times.

# readlines():
 # it takes by default characters value as in inputs.

a1<-as.numeric(readline(prompt = "Enter number1 "))
class(a1)
a2<-as.numeric(readline(prompt = "Enter number2 "))
a2
print(a1+a2)


# Scan() : it can take multiple inputs in a single times.
# its takes by default numeric. 
a3<-scan()
a4<-scan()
A5 <-scan(what='character')
A5
class(a3)
print(a3+a4)
print(a3*a3)


a1+a4

________________________________________________________________________
# LISTS:

my_list <- list(name = "Nitish", age = 25, scores = c(90, 85, 95))
my_list[1]
my_list[2]
my_list[3]
my_list[3][1]
my_list[3][3]


a3<-c(20, 30, 40, 50)
a3<-a3[-2] 
a3
a3[2]<-90 # it will replace all the number only it,s leave 2nd positions.
a3


n1<-c(10, 20, 30)
I1<- c(20L, 30L)
C1<-c("aa", "bb", "c")
Com1<- c(10+5i, 2+3i, 90+3i)
L1<-c(TRUE, FALSE, TRUE)

list1<-list(n1, I1, C1, Com1, L1)
list1
list1[1]
list1[2]
list1[3]
list1[4]
list1[5]
list1[5]<-NULL
list1[5]
list1[[4]][2]
list1[[4]][2]<-0
list1[[4]][2]

charac1<-c("djksh", "oifnoksc", "jdcsc")
list2<-list(n1, list(charac1), C1, Com1, L1)
list2




_____________________________________________________________________________________________
             21.08.24
             
             
#Relational operators:
            
a<-5
b<-6
print(a<b)
print(a>b)
print(a>=b)
print(a<=b)


# misllenious operators:
1. :
2. %in%
3. %*%
  
a1<-5:20
print(a1)
print(5 %in% a1)
seq(5:20)

2# matrix
c<-matrix(c(1:6),nrow = 3, ncol = 2, byrow = TRUE)
c
m2<-t(c)
m2

c%*%m2


## Arrays:
col_names <- c("c1", "c2", "c3")
row_names <- c("r1", "r2")
a1<-array(1:9, dim = c(2,3,3)) # byrow , it is not working in the array only it's work in the matrixs.
a1


# fcators:

level<-c("A+", "A-", "AB+", "B+", "B-", "O+", "O-")
data1<-factor(level, ordered = TRUE)
print(data1)

level1<-c("A+", "O", "AB+", "B+")
data1<-factor(level1, labels = c("AB", "A+", "B+", "O"))
data1


data2<-factor(c("A+", "A-", "AB+", "B+", "B-", "O+", "O-"), levels = c("A+", "A-", "AB+", "B+", "B-", "O+", "O-"))
data2

temp<-factor(c('30F', '45F', '50F'), levels = c('30F', '40F', '20F'))
temp


temp<-factor(c('30F', '45F', '50F'), levels = c('30F', '40F', '20F'))
temp


temp1<-factor(c('30F', '45F'),  levels = c('30F', '45F', '25F'), labels = c('30F', '40F', '20F'))
temp1


# import csv files:
df<-read.csv(file.choose()) # choose the file by the file managers
df
getwd() # : to give the path of the files.
class(df)
View(df)


data1<-read.csv("")






# if-else
{
a<-30
if(a==33){
  print("Hello world")
}else if(a!=30){
  print("Not matching")
}else{
  print('matching')
}

}


a<-c(2,3,4,5,6,7)
even<-a[a %% 2 == 0]
number_of_even <- length(even)
print(number_of_even)

num_of_even = 0
for(i in a){
  if(i%%2==0){
    num_of_even=num_of_even+1
    print(i)
  }
}
print(num_of_even)



# take the user input for creating a tables

a<-as.integer(readline(prompt = "Enter a number : "))

for (i in 1:10) {
  result <- a * i
  # print(paste(a," x", i, "=", result))
  cat(a, "x ", i, " = ",result, "\n")
}                                                                                                                                                                                                                                                                 

##*******************************************************************************#####


getwd()
wbcd <- read.csv(file.choose(), stringsAsFactors = FALSE)
str(wbcd)
View(wbcd)



##*******************************************************************************#####



















