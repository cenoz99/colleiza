const express = require("express");
const cors = require("cors");

const path = require('path');

const app = express();

app.use(express.static(path.join(__dirname,'./front/dist')));

app.use(cors());

// parse requests of content-type - application/json
app.use(express.json());

// parse requests of content-type - application/x-www-form-urlencoded
app.use(express.urlencoded({ extended: true }));


app.get('/', (req, res)=>{
    res.sendFile(path.join(_dirame, './front/build/index.html'));
});

// simple route
app.get("/", (req, res) => {
    res.json({ message: "Bienvenido la api de la colonia de Leiza" });
});

require("./app/routes/col.routes.js")(app);

require("./app/routes/cat.routes.js")(app);

require("./app/routes/sucesos.routes.js")(app);

require("./app/routes/comments.routes.js")(app);

// set port, listen for requests
const PORT = process.env.PORT || 8000;

app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}.`);
});