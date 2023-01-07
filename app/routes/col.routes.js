module.exports = app => {
    const user = require("../controllers/col.controller.js");

    var router = require("express").Router();

    // Create user
    router.post("/user", user.create);

    // Login
    router.get("/login/:email", user.login);

    app.use('/u', router);
};