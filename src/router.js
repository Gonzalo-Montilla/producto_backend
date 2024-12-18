const express = require('express');
const yup = require('yup');
const connection = require('./db');
const router = express.Router()

const schema = yup.object().shape({
    
})


router.get("/", function (req, res) {
    connection.query("select * from productos", function (err, results) {
        if (err) return res.status(400).json({ message: err.message });
        res.json(results)
    })
})

router.post("/productos", async (request, response) => {
    const datos = request.body;
    try {
        console.log("datos", request.body)
        const result = await schema.validate(datos) // validamos que el objeto cumpla con el esquema
        console.log(result)

        const query =
            "INSERT INTO productos (nombre, descripcion, precio, link_imagen) VALUES (?, ?, ?, ?)"
        connection.execute(query, Object.values(datos), (error, result) => {
            if (error) {
                response.status(400).json({
                    message: "Error al guardar el producto",
                    error: error,
                })
            } else {
                response.json({
                    message: "Producto guardado",
                    data: result,
                })
            }

        })

    }

    catch (error) {
        console.log(error)
        response.status(400).json({
            message: error.message,
        })

    }

})



module.exports = router