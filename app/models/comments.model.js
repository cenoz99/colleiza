const sql = require("./db.js");

// constructor
const Comment = function(comment) {
    this.description = comment.description;
    this.idpost = comment.idpost;
    this.writer = comment.writer;
};

Comment.create = (newComment, result) => {
    sql.query("INSERT INTO comment SET ?", newComment, (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(err, null);
            return;
        }

        console.log("created comment: ", { id: res.insertId, ...newComment });
        result(null, { id: res.insertId, ...newComment });
    });
};

Comment.findById = (idpost, result) => {
    sql.query("SELECT * FROM comment WHERE idpost = "+idpost, (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(err, null);
            return;
        }

        if (res.length) {
            console.log("found comments: ", res);
            result(null, res);
            return;
        }

        // not found Tutorial with the id
        result({ kind: "not_found" }, null);
    });
};








Comment.findById = (idpost, result) => {

    sql.query("SELECT * FROM comment where idpost =?",[idpost], (err, res) => {
        if (err) {
            console.log("error: ", err);
            result(null, err);
            return;
        }

        if (res.length) {
            console.log("found comments from post "+idpost+": ", res);
            result(null, res);
            return;
        }

        // not found user with the credentials
        result({ kind: "not_found" }, null);
    });
};

Comment.remove = (id, result) => {
    sql.query("DELETE FROM comment WHERE idcomment = ?", [id], (err, res) => {
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

        console.log("deleted comment with id: ", id);
        result(null, res);
    });
};

module.exports = Comment;