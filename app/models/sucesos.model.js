const sql = require("./db.js");

// constructor
const Suceso = function(suceso) {
    this.title = suceso.title;
    this.subtitle = suceso.subtitle;
    this.description = suceso.description;
    this.img = suceso.img;
};

Suceso.create = (newSuceso, result) => {
    sql.query("INSERT INTO post SET ?", newSuceso, (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(err, null);
            return;
        }

        console.log("created post: ", { id: res.insertId, ...newSuceso });
        result(null, { id: res.insertId, ...newSuceso });
    });
};

Suceso.getAll = result => {

    sql.query("SELECT * FROM post", (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(null, err);
            return;
        }

        console.log("Sucesos: ", res);
        result(null, res);
    });
};

Suceso.remove = (id, result) => {
    sql.query("DELETE FROM post WHERE idpost = ?", [id], (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(null, err);
            return;
        }

        if (res.affectedRows == 0) {
            // not found Tutorial with the id
            result({ kind: "not_found" }, null);
            return;
        }

        console.log("deleted post with id: ", id);
        result(null, res);
    });
};

module.exports = Suceso;