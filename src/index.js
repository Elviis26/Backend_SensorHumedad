const express = require('express'); 
const { PrismaClient } = require('@prisma/client');
require('dotenv').config();
const prisma = new PrismaClient();
const app = express();
const PORT = process.env.PORT;
app.use(express.json());

//Sensor Temperatura & Humedad

app.get('/datos', async (req, res)=>{
    const datos = await prisma.datos.findMany();
    res.json(datos);
})

app.post('/datos', async (req, res)=>{
    const datos = await prisma.datos.create({
        data: req.body
    }) 
    res.json(datos);
});

app.listen(PORT, () => {
console.log(`Server is running on port ${PORT}`);
});
