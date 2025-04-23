import mongoose from "mongoose";
const { Schema } = mongoose;

const userSchema = new Schema({
    username: {
        type: String,
        require: true,
        unique: true,
        lowercase: true,
    },
    firstName: {
        type: String,
        require: true,
    },
    LastName: {
        type: String,
        require: true,
    },
    email: {
        type: String,
        require: true,
        unique: true,
    },
    password: {
        type: String,
        require: true,
    },
    phone: {
        type: Number,
        require: false,
    },
    isAdmin: {
        type: Boolean,
        default: false,
    },
},{timestamps: true})

export const User = mongoose.models.User || mongoose.model("User", userSchema);