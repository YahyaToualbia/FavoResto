import bcrypt from "bcrypt";
import jwt from "jsonwebtoken";
import connectDB from "../db.js";
import { User } from "../models/user.model.js";
import createError from "../utils/createError.js";

export const register = async (req, res, next) => {
    try {
        await connectDB();
        const salt = bcrypt.genSaltSync(10);
        const hash = bcrypt.hashSync(req.body.password, salt);
        const newUser = new User({
            ...req.body,
            password: hash,
        });

        await newUser.save();
        res.status(201).send({ message: "User has been created successfully!" });
    } catch (err) {
        next(err)
    }
};



export const login = async (req, res, next) => {
    try {
        await connectDB()
        const user = await User.findOne({ username: req.body.username });

        if (!user) return next(createError(404, "User not found!"));

        const isCorrect = bcrypt.compareSync(req.body.password, user.password);
        if (!isCorrect)
            return next(createError(400, "Wrong password or username!"));

        const token = jwt.sign(
            {
                id: user._id,
                isAdmin: user.isAdmin,
            },
            process.env.JWT_TOKEN
        );

        const { password, ...info } = user._doc;
        res
            .cookie("accessToken", token, {
                sameSite: "none",
                httpOnly: true,
            })
            .status(200)
            .send(info);
    } catch (err) {
        next(err);
    }
};

export const logout = (req, res, next) => {
    res
        .cookie("accessToken", "", {
            httpOnly: true,
            secure: true,
            sameSite: "none",
            expires: new Date(1),
        })
        .status(200)
        .send("User has been logged out!");
};