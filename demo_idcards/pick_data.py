import json # for reading json
import csv # for writing to csv

with open("employee-data.json", "r") as f:
    string = f.read() 
    data = json.loads(string) 
    print("> customfield_XXX 'name' =", data["fields"]["customfield_XXX"]["displayName"])
    name =  data["fields"]["customfield_XXX"]["displayName"]
    print("> customfield_XXX 'language' =", data["fields"]["customfield_XXX"][0]["value"])
    language = data["fields"]["customfield_XXX"][0]["value"]
    print("> customfield_XXX 'tax-number' (with decimal after parse) =", data["fields"]["customfield_10108"]) 
    taxNumber = data["fields"]["customfield_XXX"] 
    print("> extracted:", name, ",", language, ",", taxNumber)

# data that will be written to the employees id-card
cardData = [name, language, taxNumber]


with open('employee.txt', 'w', encoding='UTF8', newline='') as f:
    writer = csv.writer(f)
    writer.writerow(cardData) 
    print("data written to helper text file", cardData)