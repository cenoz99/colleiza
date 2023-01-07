module.exports = app => {
    const comment = require("../controllers/comments.controller.js");

    var router = require("express").Router();

    //create cat
    router.post("/comment", comment.create);

    //Retrive all cats
    router.get("/comments/:idpost", comment.findById);

    // Delete a Tutorial with id
    router.delete("/comment/:id", comment.delete);

    app.use('/co', router);
};