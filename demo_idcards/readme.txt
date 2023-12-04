Employee id-card script. 

You will need NodeJS, Python, Powershell and an authentication token for Jira. 
You will also need system-level (Admin) privileges to be able to run scripts/apps on Jira REST API. 
https://support.atlassian.com/atlassian-account/docs/manage-api-tokens-for-your-atlassian-account/

Run "npm init -y" to initialize a new NodeJS project. 

Run "npm i node-fetch" to install Node Fetch. 

File fetchData.js is used to fetch data from Jira using Jira REST API, then it will 
write the response to employee-data.json file. 
File pick_data.py is used to read employee-data.json file and find/store the relevant data 
from the employee-data.json file and write it to employee.txt.
Finally write-data.py will read the employee.txt file and write the final data to an employees 
csv file used for printing employee id cards.
super-script.ps1 is used to call the scripts in order and to log additional messages to the 
console.

Things to consider: 
-e notation of numbers 
-paths written for windows fs ".\" vs "./" 
-further optimize the code, perhaps figure out how to reduce the number of helper files 
being written.