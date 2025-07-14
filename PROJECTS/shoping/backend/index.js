require('dotenv').config()
const express = require('express')
const mongoose = require("mongoose")
const cors = require('cors')
const Item = require("./models/items")
const app = express()

app.use(express.json())
app.use(cors())

mongoose.connect(process.env.MONGO_URI)
    .then(() => console.log("Mongo Db connected"))
    .catch((err) => console.err("Mongo Db error", err))

// now making theb apis for the fetching the data
app.get("/items", async (req, res) => {
    const items = await Item.find()
    res.json(items)
})

// post new
app.post('/items', async (req, res) => {
    console.log("incoming data",req.body)
    const item = new Item(req.body)
    await item.save()
    res.status(201).json(item)
})

// put using for the updates
app.put('/items/:id', async (req, res) => {
    const updated = await Item.findByIdAndUpdate(req.params.id, req.body, { new: true })
    res.json(updated)
})

//now task for the deleting
app.delete('/items/:id',async(req,res)=>{
    await Item.findByIdAndDelete(req.params.id)
    res.json({message:"Item has been deleted"})
})

app.listen(process.env.PORT,()=>{
console.log(`Server is runnig on the http://localhost:${process.env.PORT}`)
}
)