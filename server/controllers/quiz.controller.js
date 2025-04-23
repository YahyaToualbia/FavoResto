import connectDB from "../db.js";
import { Quiz } from "../models/quiz.model.js";


export const createQuiz = async (req, res, next) => {
  try {
    await connectDB();
    const newQuiz = new Quiz(req.body);
    await newQuiz.save();
    res.status(201).send({ message: "Quiz created successfully!" });
  } catch (err) {
    next(err);
  }
};


export const getAllQuizzes = async (req, res, next) => {
  try {
    await connectDB();
    const quizzes = await Quiz.find().sort({ createdAt: -1 });
    res.status(200).send(quizzes);
  } catch (err) {
    next(err);
  }
};


