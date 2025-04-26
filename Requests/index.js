import express from "express";
import bodyParser from "body-parser";
import {dirname} from "path";
import { fileURLToPath } from "url";

const __dirname = dirname(fileURLToPath(import.meta.url));


const app = express();
var port = 3000;
app.use(bodyParser.urlencoded({extended:true}));

function logger(req, res, next){
    console.log("URL: ", req.url);
    next();
}
app.use(logger); 

app.get("/", (req, res) => {
    res.sendFile(__dirname + "/public/index.html");
});
app.post("/submit", (req, res) => {
    console.log(req.body);
})
app.listen(port, (req, res) =>{
    console.log(`Listening on port ${port}`);
})