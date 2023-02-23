const { PrismaClient } = require("@prisma/client");
const { reset } = require("nodemon");
const prisma = new PrismaClient();
var cors = require("cors");
const express = require("express");

const app = express();
app.use(cors());

app.get("/get_heading", async (req, res) => {
  // sending static json data as an example
  //   const heading = {
  //     title: "title1",
  //     subtitle: "sub1",
  //   };

  const heading_data = await prisma.heading.findFirst();
  res.json(heading_data);
});

app.listen(5001);
