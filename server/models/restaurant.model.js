import mongoose from "mongoose";
const { Schema } = mongoose;

const restaurantSchema = new Schema({
    name: {
        type: String,
        require: true,
    },
    desc: {
        type: String,
        require: true,
    },
    address: {
        type: String,
        require: true,
    },
    images: {
        type: [String],
        require: true,
    },
    rating: {
        type: Number,
        require: true,
    },
    tags: {
        type: [String],
        require: false,
    },
},{timestamps: true})

export const Restaurant = mongoose.models.Restaurant || mongoose.model("Restaurant", restaurantSchema);