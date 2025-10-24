const mongoose = require('mongoose');

const restaurantSchema = new mongoose.Schema({
  name: { type: String, required: true },
  image: { type: String },
  categories: [{ type: mongoose.Schema.Types.ObjectId, ref: 'Category' }],
});

module.exports = mongoose.model('Restaurant', restaurantSchema);
