module.exports = app => {
    const cat = require("../controllers/cat.controller.js");

    var router = require("express").Router();

    //create cat
    router.post("/cat", cat.create);

    //Retrive all cats
    router.get("/cats", cat.getAll);
    app.use('/c', router);


    // Delete a Tutorial with id
    router.delete("/cat/:id", cat.delete);
};