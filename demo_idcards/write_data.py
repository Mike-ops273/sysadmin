#script to read text file and split the string into n parts using ","
with open("employee.txt", "r") as file:
    contents = file.read()
    print(contents)
    print(type(contents))
    print(len(contents))
 
input_string = contents

substrings = {} 

for i, substring in enumerate(input_string.split(",")):
    substrings[i] = substring

print(substrings) 

x = substrings[0] 
y = substrings[1] 
z = substrings[2]
print(x)
print(y)
print(z) 

# now write to the final csv: 
import csv 
dataToWrite = x, y, z 
field = ["Name", "Language", "Tax Number",]
with open("employee-db.csv", "a") as f:
    writer = csv.writer(f, delimiter=";", lineterminator="\n")
    # writer.writerow(field) # you dont need this line if you already have a header row
    writer.writerow(dataToWrite)
  
