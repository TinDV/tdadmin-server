const db = require("../db-connect");

// Router
const router = (app) => {
  app.get("/", (req, res) => {
    db.query("SELECT * FROM vslog", function (err, result, fields) {
      if (err) throw err;
      res.json(result)
    });
  });

  app.post("/create-vs", (req, res) => {
    db.query("SELECT * FROM vslog", function (err, result, fields) {
      if (err) throw err;
      const body = req.body
      const sql = `INSERT INTO vslog (type, time, date, note) VALUES ('${body.type}', '${body.time}', '${body.date}', '${body.note}')`;
      
      db.query(sql, function (err, result) {
        if (err) throw err;
        res.status(200).json(req.body)
      });
    });
  });

  app.delete("/delete-vs/:id", (req, res) => {
    const id = req.params.id
    const sql = `DELETE FROM vslog WHERE id = '${id}'`;
    db.query(sql, function (err, result) {
      if (err) throw err;
      res.status(200).json("Delete success")
    });
  })

};

// Export the router
module.exports = router;
