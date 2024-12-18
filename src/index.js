require("dotenv").config()



const express = require("express")
const cors = require("cors")

const router = require("./router")
const app = express()
app.use(cors())
app.use(router)



app.listen(3000, function () {
    console.log("Server is running on port 3000")
})