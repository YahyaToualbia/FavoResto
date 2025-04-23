import connectDB from "../db.js";
import { Restaurant } from "../models/restaurant.model.js";
import createError from "../utils/createError.js";


export const createRestaurant = async (req, res, next) => {
    try {
        await connectDB();
        const newRestaurant = new Restaurant(req.body);
        await newRestaurant.save();
        res.status(201).send({ message: "Restaurant added successfully!" });
    } catch (err) {
        next(err);
    }
};


export const getAllRestaurants = async (req, res, next) => {
    try {
        await connectDB();
        const restaurants = await Restaurant.find().sort({ createdAt: -1 });
        res.status(200).send(restaurants);
    } catch (err) {
        next(err);
    }
};


export const getRestaurantById = async (req, res, next) => {
    try {
        await connectDB();
        const restaurant = await Restaurant.findById(req.params.id);
        if (!restaurant) return next(createError(404, "Restaurant not found!"));
        res.status(200).send(restaurant);
    } catch (err) {
        next(err);
    }
};
