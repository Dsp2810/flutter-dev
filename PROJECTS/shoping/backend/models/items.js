const mongoose = require('mongoose')
const ItemSchema = new mongoose.Schema(
    {
        name: String,
        category: String,
        quantity: Number,
        price: Number
    }
)
module.exports = mongoose.model('cart', ItemSchema,'cart')
// here we have to use the collecction name...
