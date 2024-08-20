class Employee:
    no_of_leaves = 8
    def __init__(self, aname, asalary, arole):
        self.name = aname
        self.salary = asalary
        self.role = arole

    def printdetails(self):
        return f"The name is {self.name}. salary is {self.salary} and role is {self.role}"


harry = Employee("Harry", 255, "Instructor")


# rohan = Employee()
#
# harry.name = "Rohan"
# harry.salary = 455
# harry.role = "Instructor"
#
# rohan.name = "Rohan"
# rohan.salary = 555
# rohan.role = "Student"

#print(rohan.printdetails())
#print(rohan.no_of_leaves)


print(harry.role)


#==========================CLASS METHOD AS ABSOLUTE.==================

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


harry = Employee("Harry", 255, "Instructor")
rohan = Employee("Rohan", 555, "Student")
#Employee.no_of_leaves = 100
#print(rohan.salary)
#print(Employee.no_of_leaves)

rohan.change_leaves(34)
print(rohan.no_of_leaves)



#============CLASS METHOD AS ALTERNATE============\

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
        # params = string.split("-")
        # print(params)
        # return cls(params[0], params[1], params[2])
        return cls(*string.split("-"))

harry = Employee("Harry", 255, "Instructor")
rohan = Employee("Rohan", 555, "Student")
karan = Employee.from_das("Karan-480-Students")

#Employee.no_of_leaves = 100
#print(rohan.salary)
#print(Employee.no_of_leaves)

print(karan.salary)
# rohan.change_leaves(34)
# print(rohan.no_of_leaves)




#=================Static methods===========================\

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
        # params = string.split("-")
        # print(params)
        # return cls(params[0], params[1], params[2])
        return cls(*string.split("-"))
    @staticmethod
    def print_good(string):
        print("This good for " + string)


harry = Employee("Harry", 255, "Instructor")
rohan = Employee("Rohan", 555, "Student")
karan = Employee.from_das("Karan-480-Students")

Employee.print_good("rohan")
harry.print_good("rohan") # employee and rohan and harry, those are same instantance objects