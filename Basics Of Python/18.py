dic = {
    "Nitish": "Human being",
    456 : "shubham"
    }
print(dic[456])

info = {"name":"karan", "age":19, "eligible":"True"}

'''
print(info)
print(info["name"])
print(info.get("name2"))
print(info.keys())
print(info.values())

for key in info.keys():
    print(f"The value coressponding to the {key} is {info[key]}")

'''

print(info.items())
for key,value in info.items():
    print(f"The value corresponding to the {key} is {value}")


ep1 = {122: 45, 123: 89, 567:69}
ep2 = {222:22, 235:65, 564: 89}


#ep1.update(ep2)
#ep1.clear()
#ep1.pop(122)
#ep2.popitem()
#print(ep2)
del ep1[122]
print(ep1)










info = {
    "key": "value",
    "name":"lpu",
    "learnig":"coding",
    "age": 18,
    "topics":("dict", "set"),
    "is_adult":True,
    12:94.3

} 
print(info.values())
print(info.keys())
print(info.items())
print(info)
print(type(info))
print(info["learnig"])

info["name"] = "nitish"
info["surname"] = "rudra"

print(info)

# null dictionary
null_dict = {}
print(null_dict)
null_dict["name"] = "ap"
print(null_dict)



# nested dictionary
studemt = {
    "name":"rahul",
    "subject":{
        "phy":90,
        "maths":35,
        "sci": 45
    }
}
print(studemt)
print(studemt["subject"])
print(studemt["subject"]["maths"])

print(student.values())

print(student.items())