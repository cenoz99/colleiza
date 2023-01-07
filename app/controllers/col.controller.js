const User = require("../models/col.model.js");

// Create and Save a new user
exports.create = (req, res) => {

    if (!req.body) {
        res.status(400).send({
            message: "Content can not be empty!"
        });
    }

    // Create a user
    const user = new User({
        email: req.body.email,
        password: req.body.password,
        name: req.body.name,
        surname: req.body.surname,
        contactEmail: req.body.contactEmail,
    });

    // Save User in the database
    User.create(user, (err, data) => {
        if (err)
            res.status(500).send({
                message:
                    err.message || "Some error occurred while creating the User."
            });
        else res.send(data);
    });
};

// Retrieve all Tutorials from the database (with condition).
//exports.findAll = (req, res) => {

//};
// Find a single Tutorial with a id
exports.login = (req, res) => {
    User.login(req.params.email, (err,data)=>{
        if (err) {
            if (err.kind === "not_found") {
                res.status(404).send({message: `Not found user ${req.params.email}.`});
            } else {
                res.status(500).send({message: "Error retrieving user with email " + req.params.email});
            }
        } else res.send(data);
    });
};

/* find all published Tutorials
exports.findAllPublished = (req, res) => {

};

// Update a Tutorial identified by the id in the request
exports.update = (req, res) => {

};

// Delete a Tutorial with the specified id in the request
exports.delete = (req, res) => {

};

// Delete all Tutorials from the database.
exports.deleteAll = (req, res) => {

};*/