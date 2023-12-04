// This script is using 'node-fetch' library:
// https://www.npmjs.com/package/node-fetch
import fetch from "node-fetch";
import fs from "fs";

// wait for response before calling fs
// ticket number xxx
//fetch the data from url
fetch("https://YOUR-COMPANY.atlassian.net/rest/api/3/issue/TICKET-XXX", {
  method: "GET",
  headers: {
    Authorization: `Basic ${Buffer.from(
      "YOUR-CREDENTIALS@YOUR-COMPANY.com:YOUR-AUTH-TOKEN"
    ).toString("base64")}`,
    Accept: "application/json",
  },
})
  // handle the response
  .then((response) => {
    console.log(
      `Response status and code: ${response.status} ${response.statusText}`
    );
    return response.text();
  })
  .then(function (employeeData) {
    // use filesystem to write a file - this will help store the data
    fs.writeFile("employee-data.json", employeeData, function (err) {
      if (err) throw err;
      console.log("Saved!");
    });
    return employeeData;
  })
  //view data for debugging:
  .then((foo) => console.log("debug:", foo)) //comment out this line if it distracts
  .catch((err) => console.error(err));
