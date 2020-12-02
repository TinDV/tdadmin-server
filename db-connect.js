const dotenv = require("dotenv");
const mysql = require("mysql");
dotenv.config();

const db = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USERNAME,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_DATABASE
});

db.connect(function (err) {
  if (err) throw err;
  console.log("DB Connected!");
});

module.exports = db;