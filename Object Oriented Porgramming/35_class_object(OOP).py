# class - Template
# Objext - Instanceof the class

# DRY - Do not repeat yourself




class Student:
    pass
harry = Student()
larry = Student()

harry.name = "Harry"
harry.std = 12
harry.section = "A"
print(harry, larry)
larry.subjects = ["hindi", "physics"]
print(harry.name, harry.std, harry.section, harry.section, larry.subjects)


####===========================
class Employee:
    no_of_leaves = 8
    pass

harry = Employee()
rohan = Employee()

harry.name = "Rohan"
harry.salary = 455
harry.role = "Instructor"

rohan.name = "Rohan"
rohan.salary = 555
rohan.role = "Student"

print(Employee.no_of_leaves)
print(rohan.__dict__)
Employee.no_of_leaves = 9  #no_of_leaves only changed with emplyee function not any other variables.
rohan.no_of_leaves = 9
print(rohan.__dict__)  # dict func. means to return by dictionary and add in print no_of_leaves
print(Employee.no_of_leaves)

