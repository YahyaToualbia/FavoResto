import express from "express";
import {
  createAnswer,
  getAllAnswers,
  getAnswersByFilter,
} from "../controllers/answer.controller.js";

const router = express.Router();

router.post("/", createAnswer);
router.get("/", getAnswersByFilter); 
router.get("/all", getAllAnswers); 

export default router;
