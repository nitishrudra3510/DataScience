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


harry = Employee("Harry", 255, "Instructor")
rohan = Employee("Rohan", 555, "Student")
karan = Employee.from_das("Karan-480-Students")

Employee.print_good("rohan")





