# decorate functions
def function1():
    print("Subcribe now")

func2 = function1
del function1
func2()



#=================================================\

def funcret(num):
    if num==0:
        return print
    if num==1:
      # return int
        return sum
a = funcret(0)
print(a)


#=========================================\

def executor(func):
    func("sum")


executor(print)



##################################===================== decotrator fun ====================

def dec1(func1):
    def nowexec():
        print("Executing now")
        func1()
        print("Executed")
    return nowexec
def who_is_rudra():
    print("Rudra is a good boy")

who_is_rudra = dec1(who_is_rudra)
who_is_rudra()





# treating the functions as objects
def shout(text):
    return text.upper()
print(shout("Hello"))
yell = shout
print(yell("Hello"))


#Passing te function as an argument

def shout(text):
    return text.upper()
def whisper(text):
    return text.lower()

def greet(func):
    greeting = func("""Hi, I am created by a function passed as an arguments""")
    print(greeting)
greet(shout)
greet(whisper)

# returing functions from another functions'

def create_adder(x):
    def adder(y):
        return x+y
    return adder
add_15 = create_adder(15)
print(add_15(10))



















