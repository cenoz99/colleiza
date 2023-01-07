const Suceso = require("../models/sucesos.model.js");

// Create and Save a new suceso
exports.create = (req, res) => {

    if (!req.body) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    // Create a user
    const suceso = new Suceso({
        title: req.body.title,
        subtitle: req.body.subtitle,
        description: req.body.description,
        img: req.body.img,
    });

    // Save User in the database
    Suceso.create(suceso, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the Suceso."
            });
        else res.send(data);
    });
};

// Retrieve all Tutorials from the database (with condition).
//exports.findAll = (req, res) => {

exports.getAll = (req, res) => {
        Suceso.getAll((err,data)=>{
            if (err) {
                if (err.kind === "not_found") {
                    res.status(404).send({message: `Suceso not found.`});
                } else {
                    res.status(500).send({message: 'Error retrieving sucesos.'});
                }
            } else res.send(data);
        });
};

exports.delete = (req, res) => {
    Suceso.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found post with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete post with id " + req.params.id
                });
            }
        } else res.send({ message: `Post was deleted successfully!` });
    });
};