const express = require("express");
const { initialPage } = require("./router/controllers");
const app = express();
const router = app.router();

router.get("/", initialPage);

app.listen(5000, () => console.log("server is running"));
