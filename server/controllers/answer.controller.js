import connectDB from "../db.js";
import { Answer } from "../models/answer.model.js";



export const createAnswer = async (req, res, next) => {
  try {
    await connectDB();
    const newAnswer = new Answer(req.body);
    await newAnswer.save();
    res.status(201).send({ message: "Answer submitted successfully!" });
  } catch (err) {
    next(err);
  }
};

export const getAllAnswers = async (req, res, next) => {
  try {
    await connectDB();
    const answers = await Answer.find()
      .populate("userId", "username email") 
      .populate("quidId", "quiz"); 
    res.status(200).send(answers);
  } catch (err) {
    next(err);
  }
};


export const getAnswersByFilter = async (req, res, next) => {
  try {
    await connectDB();
    const filter = {};
    if (req.query.userId) filter.userId = req.query.userId;
    if (req.query.quizId) filter.quidId = req.query.quizId;

    const answers = await Answer.find(filter)
      .populate("userId", "username")
      .populate("quidId", "quiz");

    res.status(200).send(answers);
  } catch (err) {
    next(err);
  }
};
