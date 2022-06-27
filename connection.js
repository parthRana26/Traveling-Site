var myaql = require("mysql")

var con = mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"1111",
    database:"project"
});

module.exports = con;