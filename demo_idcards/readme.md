# A Demo Project to showcase the kinds of automations I can build :muscle:

An Employee's ID Card script.

### Prerequisites

- You will need **NodeJS**, **Python**, **Powershell** and an **authentication token** for **Jira** as well as **Node Fetch** library.
- You will also need **system-level (Admin) privileges** to be able to run scripts/apps on **Jira REST API**.
- visit https://support.atlassian.com/atlassian-account/docs/manage-api-tokens-for-your-atlassian-account/ for more info

You can install Node Fetch with `npm i node-fetch`

### Overview

- File `fetchData.js` is used to fetch data from Jira using Jira's REST API. Then it will write the response to the `employee-data.json` file.
- File `pick_data.py` is used to read the `employee-data.json` file and to find, extract and store the relevant data from the file and write it to `employee.txt`.
- Finally `write-data.py` will read the `employee.txt` file and write the final data to an employees csv file used for printing employee id cards.
- `super-script.ps1` is used to call the scripts in order and to log additional messages to the console.

### Things to consider

This is a fully functioning script but some things to consider and improve are:

- e notation of certain numbers
- further optimize the code
- you will need to modify the paths in `super-scripts.ps1` depending on your operating system (**_Unix vs Windows_** paths)

### [:point_left: back to main directory](https://github.com/Mike-ops273/sysadmin#a-repo-with-handy-tools-and-scripts-for-automating-tasks-rocket)
