const mysql = require('mysql');
const fs = require('fs');
const exp = require('constants');

const connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : 'user123456',
  database : 'store'
});


// fs.readFile('products.json', (err, data) => {
//   if (err) throw err;
//   var jsonData = JSON.parse(data);
//   module.exports = jsonData;
// });



connection.connect();

connection.query('SELECT * FROM products', function (error, results, fields) {
    console.log(results)
  if (error) console.log(error);
  
  // Convert the results to a JSON string
  const jsonString = JSON.stringify(results);

//   Write the JSON string to a file
  fs.writeFile('products.json', jsonString, function(err) {
    if(err) {
        console.log("error occured");
    } else {
        console.log("JSON data is saved to products.json file.");
    }
  });
});

connection.end();
