
module.exports = app => {
    const suceso = require("../controllers/sucesos.controller.js");

    var router = require("express").Router();

    // Create user
    router.post("/suceso", suceso.create);

    // Login
    router.get("/sucesos", suceso.getAll);

    // Delete a Tutorial with id
    router.delete("/suceso/:id", suceso.delete);

    app.use('/s', router);
};