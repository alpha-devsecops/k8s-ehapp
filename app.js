const express = require("express");

const app = express();
const port = 4000;

app.get("/", (req, res) => {
  res.send("Hello World!");
});

app.get("/health", (req, res) => {
  res.json({ message: "I am green" }).status("200");
});

app.listen(port, () => {
  console.log(`app listening on port ${port}`);
});
