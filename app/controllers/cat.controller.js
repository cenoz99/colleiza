const Cat = require("../models/cat.model.js");




// Create and Save a new user
exports.create = (req, res) => {

    if (!req.body) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    // Create a cat
    const cat = new Cat({
        name: req.body.name,
        description: req.body.description,
        img: req.body.img,
    });

    // Save User in the database
    Cat.create(cat, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the cat."
            });
        else res.send(data);
    });
};

// Find a single Tutorial with a id
exports.getAll = (req, res) => {
    Cat.getAll((err,data)=>{
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({message: `Cats not found.`});
            } else {
                res.status(500).send({message: 'Error retrieving cats.'});
            }
        } else res.send(data);
    });
};

exports.delete = (req, res) => {
    Cat.remove(req.params.id, (err, data) => {
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({
                    message: `Not found cat with id ${req.params.id}.`
                });
            } else {
                res.status(500).send({
                    message: "Could not delete cat with id " + req.params.id
                });
            }
        } else res.send({ message: `Cat was deleted successfully!` });
    });
};
