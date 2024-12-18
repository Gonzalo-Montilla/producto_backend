const mysql = require("mysql2")
const connection= mysql.createConnection({
    host: process.env.MYSQL_HOST,
    port: process.env.MYSQL_PORT,
    user: process.env.MYSQL_USER,
    password: process.env.MYSQL_PASSWORD,
    database: process.env.MYSQL_DATABASE
})

connection.connect((err) => {
    if(err) return console.log(err)
    console.log("Connected to MySQL database")
})

module.exports = connection