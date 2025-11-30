import express from "express";
import { logger } from "./middleware/logger";
const app = express();
app.use(express.json()); 
app.use(express.urlencoded());

app.get("/",logger, (req, res) => {
  res.send("Hello World!");
});



export default app;