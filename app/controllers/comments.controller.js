const Comment = require("../models/comments.model.js");
const Cat = require("../models/cat.model");

// Create and Save a new comment
exports.create = (req, res) => {

    if (!req.body) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    // Create a cat
    const comment = new Comment({
        description: req.body.description,
        idpost: req.body.idpost,
        writer: req.body.writer,
    });

    // Save User in the database
    Comment.create(comment, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the comment."
            });
        else res.send(data);
    });
};

// Find a single Tutorial with an id
exports.findById = (req, res) => {
    Comment.findById(req.params.idpost, (err,data)=>{
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({message: `Comments not found.`});
            } else {
                res.status(500).send({message: 'Error retrieving cats.'});
            }
        } else res.send(data);
    });
};

exports.delete = (req, res) => {
    Comment.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found comment with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete comment with id " + req.params.id
                });
            }
        } else res.send({ message: `Comment was deleted successfully!` });
    });
};
