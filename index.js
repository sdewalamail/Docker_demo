'use strict';

import express from 'express';

const app = express();
const PORT = process.env.PORT || 8080;


app.get("/", (req, res) => { console.log("requset is comming on server."); return res.send("<h2>Hello champ!</h2>") })

function startServer() {
    app.listen( PORT, () => { console.log(`Server is running on port ${PORT}`) });
};

startServer()


