#take input from the users
'''
as.integer(n); —> convert to integer
as.numeric(n); —> convert to numeric type (float, double etc)
as.complex(n); —> convert to complex number (i.e 3+2i)
as.Date(n) —> convert to date …, etc

'''


a<-readline(prompt="enter the number")
a<-as.integer(a) #converting into integer


# take two input from the user.
{
rollno<-readline(prompt="enter the number : ")
rollno<-as.integer(rollno)
name<-readline(prompt="enter name :  ")
name<-as.character(name). # converting into characters.
cat("roll number is= ", rollno, "name is =", name);
}

#conditional statement

#if, if-else, ladder if, switch


# checking number is positive or not.
a<-5
if(a>0)
{
  print("positive")
}else{
  print("negative")
}


# wheather the person is allowed to vote.
#>=18 -> vote, else not
{
age<-as.integer(readline(prompt = "enter age"))
if(age>=18)
{
  print("IT can vote")
  
}else{
  print("It can't vote")
}
}


#find out wheather number is odd or even.
{
a<-as.integer(readline(prompt = "enter number : "))
if(a%%2==0)
{
  print("even")
}else{
  print("odd")
}

}

# max betwwen the three numbers.
{
a<-as.integer(readline(prompt = "enter of a number : "))
b<-as.integer(readline(prompt = "enter of b number : "))
c<-as.integer(readline(prompt = "enter of c number : "))
if(a>b && a>c)
{
  print(" a is greater")
  
}else if(b>a && b>c){
  print("b is greater")
}else if(c>a && c>b){
  print("c is greater")
}
}


# ************* NESTED IF ELSE ****************
# R Nested if else statement Example
a <- 10
b <- 11


if(a == 19)
{
  if(b == 10)
  {
    print("a:10 b:10") 
  } else
  {
    print("a:10 b:11")	 
  }
} else
{
  if(a == 11)
  {
    print("a:11 b:10")
  } else
  {
    print("a:11 b:11")
  }
}


#**************  SWITCH ************* switch(expression, case1, case2, case3, case4,......)
#switch(expression, "a"=case1, "b"=case2, "c"=case3)

a<-2
x<-switch(a, "CSE", "ECE", "ME", "CIVIL")
print(x)

# print even or odd using switch in R.
{
a<-as.integer(readline(prompt = "enter number : "))
p<-a%%2
a<-switch(p+1, "even", "odd")

print(a)
  
}

# another method.
{
  a<-as.integer(readline(prompt = "enter number : "))
  p=a%%2
  p<-as.character(p)
  a<-switch(p, "0"="even","1"="odd")
  
  print(a)
  
}

# take the two input from the user if the user press s->a+b; f-> a/b; c->a-b; m->a%%b;
{
a<-as.integer(readline(prompt = "enter number of a : "))
b<-as.integer(readline(prompt = "enter number of b : "))
d<-as.character(readline(prompt = "enter s for add, f for division, c for sub, m for mul : "))
x<-switch (d,"s"=a+b,"f"=a%/%b,"g"=a-b,"h"=a%%b)
print(x)
}



#// for 

x<-c(11,2,44,10,6)
x
x[c(-1)]
x[c(2,3)]

x<-1:5;
x #1 2 3 4 5 
x<-1.1:5.5
x 

list1 -> hetero





list1[1]="KK"
list1


append(list1, "hi", after = 3)


A<-as.integer(readline(prompt = "enter number"))
f=1;
for(int i in l:n);






tajke the values of sno, gen



x




list1()


bool my_bool = true;
cout << my_bool << endl;
my_bool = test;
cout << my_bool << endl;



int my_int = first_num;
cout << my_int << endl;
my_int = second_num;
cout << my_int << endl;
my_int = third_num;
cout << my_int << endl;


cout << line1 << endl;
cout << line2 << endl;

double my_double = 3.14;
cout << my_double << endl;
my_double = number; 
cout << my_double << endl;

cout << "Okay, it is time to ";
cout << "learn about operators." << endl;












a)int b = 9;
b)int a = 4;
int b = 9;

cout << boolalpha << ( 5 == 4 ) << endl;
cout << boolalpha << ( ! (5 < 8 && 6 >= 2) ) << endl;
cout << boolalpha << ( 5 > 8 || 6 < 2 );

string a = "Hello ";
string b = "world";
cout << (a + b) << endl;

double seven = 7.0;
double two = 2.0;
cout << ( seven / two ) << endl;

int sum = stoi(num1) + stoi(num2);
cout << ( num1 + " + " + num2 + " = " + to_string(sum) ) << endl;




















if ((x >= 0) && (x <= 25)) { 
  cout << to_string(x) + " is between 0 and 25 or 75 and 100"; 
}
else if ((x >= 75) && (x <= 100)) {
  cout << to_string(x) + " is between 0 and 25 or 75 and 100";
}
else {
  cout << "";
}



if (x % 5 == 0) { 
  cout << to_string(x) + " is divisible by 5";
}
else {
  cout << to_string(x) + " is not divisible by 5";
}



if ((x % 5 == 0) && (x % 2 == 0)) { 
  cout << to_string(x) + " is divisible by 5 and even";
}
else {
  cout << to_string(x) + " is not divisible by 5 or it is odd";
}


int num;
if (x == "red") {
  num = 1;
}
else if (x == "blue") {
  num = 2;
}
else if (x == "yellow") {
  num = 3;
}
else {
  num = 0;
}

switch (num) {
  case 1: cout << x + " is a primary color"; break;
  case 2: cout << x + " is a primary color"; break;
  case 3: cout << x + " is a primary color"; break;
  default: cout << x + " is not a primary color";
  
  
  
  
  if ((x == "a") || (x == "e") || (x == "i") || (x == "o") || (x == "u")) {
    cout << x + " is a vowel";
  }
  else {
    cout << x + " is not a vowel";
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  for(int i = 0; i < 3; i++) {
    tina.forward(100);
    tina.left(120);
  }
  
  
  
  
  for (int i = 0; i < 10; i++) {
    cout << x << endl;
  }
  
  
  
  
  int sum = 0;
  
  for (int iter = a; iter <= b; iter++) {
    sum += iter;
  }
  
  if (a == b) {
    sum = a;
  }
  
  cout << sum << endl;
  
  
  
  for (int i = 100; i <= 100; i--) {
    if (i == 0) {
      cout << "Print me!" << endl;
      break;
    }
    else {
      while (true) {
        break;
        i++;
        cout << "Don't print me!" << endl;
      }
    }
  }
  
  
  
  
  for (int i = 1; i < 6; i++) {
    for (int j = 5 - i; j > 0; j--) {
      cout << ".";
    }
    cout << i << endl;
  }
  
  






























