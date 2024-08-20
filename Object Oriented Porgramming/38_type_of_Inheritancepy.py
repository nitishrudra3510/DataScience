# single inheritance:


# class parent():
#     def first(self):
#         parent("parent function")
#
# class child(parent):
#     def second(self):
#         print("child function")
#
# object1 = child()
# object1.first()
# object1.second()


class Employee:
    no_of_leaves = 8
    def __init__(self, aname, asalary, arole):
        self.name = aname
        self.salary = asalary
        self.role = arole

    def printdetails(self):
        return f"The name is {self.name}. salary is {self.salary} and role is {self.role}"

    @classmethod
    def change_leaves(cls, newleaves):
        cls.no_of_leaves = newleaves

    @classmethod
    def from_das(cls, string):
        return cls(*string.split("-"))

    @staticmethod
    def print_good(string):
        print("This good for " + string)

        
class Programmer(Employee):
    no_of_holiday = 56
    def __init__(self, aname, asalary, arole, languages):
        self.name = aname
        self.salary = asalary
        self.role = arole
        self.language = languages


    def printprog(self):
        return f"The programme's name is {self.name}. Salary is {self.salary} and role is {self.role}. the language are {self.language}"


harry = Employee("Harry", 255, "Instructor")
rohan = Employee("Rohan", 555, "Student")
karan = Employee.from_das("Karan-480-Students")


shubham = Programmer("Shubham", 555, "Programmer", ["python"])
karan = Programmer("Karan", 777, "Programmer", ["python", "Cpp"])

Employee.print_good("rohan")
print(karan.printprog())







#######################################################################################################################################################################

#================Multiple Inheritance=================================\


class Employee:
    no_of_leaves = 8

    def __init__(self, aname, asalary, arole):
        self.name = aname
        self.salary = asalary
        self.role = arole

    def printdetails(self):
        return f"The name is {self.name}. salary is {self.salary} and role is {self.role}"

    @classmethod
    def change_leaves(cls, newleaves):
        cls.no_of_leaves = newleaves

    @classmethod
    def from_das(cls, string):
        return cls(*string.split("-"))

    @staticmethod
    def print_good(string):
        print("This good for " + string)


class Programmer(Employee):
    no_of_holiday = 56

    def __init__(self, aname, asalary, arole, languages):
        self.name = aname
        self.salary = asalary
        self.role = arole
        self.language = languages

    def printprog(self):
        return f"The programme's name is {self.name}. Salary is {self.salary} and role is {self.role}. the language are {self.language}"

class player:
    def __init__(self, name, game):
        self.name = name
        self.game = game
    def printdetails(self):
        return f"The name is {self.name}. salary is {self.salary} and role is {self.role}"

class colprogrammer(Employee, player):
    language = "c++"
    def printlanguage(self):
        print(self.language)
    #pass


harry = Employee("Harry", 255, "Instructor")
rohan = Employee("Rohan", 555, "Student")


shubham = Programmer("Shubham", 555, "Programmer", ["python"])
karan = colprogrammer("karan", 5876, "coolprogrammer")
det  = karan.printdetails()
print(det)




############################################################################################################################################
#====================MULTIPLELEVEL INHERITANCE=======================================\

class Dad:
    basketball =  6
    #pass

class Son(Dad):
    dance = 1
    basketball = 9
    def isdance(self):
        return f"Yes I dance {self.dance} no. f times."
    #pass

class Grandson(Son):
    dance = 1
    guiter = 6
    #pass
    def isdance(self):
        return f"Jackson yeah!"\
            f"Yes I sance very awesome {self.dance} no. of times."
darry = Dad()
larry = Son()
harry = Grandson()

print(harry.guiter)




##################################################=========================QuestionPractice===========================

class Electronic_device:
    device = 6

class pocket_gadget(Electronic_device):
    device = 5
    model = 9
    def isdevice(self):
        f"Yes I am going to buy {self.device} mobile. "
class phone(pocket_gadget):
    model = 10
    device = 7
    def isdevice(self):
        return f"nitish_rudra!" \
               f"Yes I am going to buy {self.device} mobile. "
nitish = Electronic_device()
larry = pocket_gadget()
rudra = phone()

print(rudra.model)
print(nitish.device)
print(larry.model)