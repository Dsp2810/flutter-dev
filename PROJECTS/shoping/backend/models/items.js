const mongoose = require('mongoose')
const ItemSchema = new mongoose.Schema(
    {
        name: String,
        category: String,
        Quantity: Number
    }
)
module.exports = mongoose.model('Item',ItemSchema)
