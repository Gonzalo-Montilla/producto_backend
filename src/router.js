const express = require('express');
const yup = require('yup');
const connection = require('./db');
const router = express.Router()

const schema = yup.object().shape({
    
})


router.get("/productos", function (req, res) {
    connection.query("select * from productos", function (err, results) {
        if (err) return res.status(400).json({ message: err.message });
        res.json(results)
        
    })
})

router.post("/producto", async function (request, response)  {
    const datos = request.body;
    try {
        console.log("datos", request.body)
        const result = await schema.validate(datos) // validamos que el objeto cumpla con el esquema
        console.log(result)

        const query =
            "INSERT INTO productos (nombre, descripcion, precio, link_imagen) VALUES (?, ?, ?, ?)"
        connection.execute(query, Object.values(datos), function (error, result) {
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

router.get("/producto/:id", (request, response) => {
    const { id } = request.params
  
    const query = "SELECT * FROM productos WHERE id = ?"
  
    connection.query(query, [id], (error, result) => {
      if (error) {
        response.status(400).json({
          message: "Error al obtener el producto",
          error,
        })
      } else {
        if (result.length > 0) {
          response.json(result[0])
        } else {
          response.status(404).json({
            message: "Producto no encontrado",
          })
        }
      }
    })
  })
  
  router.put("/producto/:id", async (request, response) => {
    const data = request.body
    const { id } = request.params
  
    try {
      await schema.validate(data)
      const query = "UPDATE productos SET nombre = ?, descripcion = ?, precio = ?, link_imagen = ? WHERE ID = ?"
  
      connection.execute(query, Object.values(data).concat(id), (error, result) => {
        if (error) {
          response.status(400).json({
            message: "Error al actualizar el producto",
            error,
          })
        } else {
          response.json({
            message: "Producto actualizado",
            data: result,
          })
        }
      })
    } catch (error) {
      response.status(400).json({
        message: error.message,
      })
      return
    }
  
  
  })
  
  router.delete("/producto/:id", (request, response) => {
    const { id } = request.params
  
    const query = "DELETE FROM productos WHERE ID = ?"
  
    connection.execute(query, [id], (error, result) => {
      if (error) {
        console.log('entra en delete fail ???', id)
        response.status(400).json({
          message: "Error al borrar el producto",
          error,
        })
      } else {
        console.log('entra en delete ok???', id)
        response.json({
          message: "Producto borrado",
          data: result,
        })
      }
    })
  })



module.exports = router