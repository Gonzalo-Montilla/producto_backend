const dotenv = require ("dotenv");
require("dotenv").config()



const express = require("express")
const router = require("./router")
const cors = require("cors")


const app = express()
app.use(cors({
    origin: ["http://127.0.0.1:5500"]
}))

app.use(express.json())

app.use(router)



app.listen(3000, function () {
    console.log("Server is running on port 3000")
})
