import express from "express";
import dotenv from "dotenv";
import cors from "cors";
import authRoute from "./routes/auth.route.js";
import restaurantRoute from "./routes/restaurant.route.js";
import quizRoute from "./routes/quiz.route.js";
import answerRoute from "./routes/answer.route.js";

const app = express();

app.use(express.json());
app.use(cors());
dotenv.config();

app.use("/api/auth", authRoute);
app.use("/api/restaurants", restaurantRoute);
app.use("/api/quizzes", quizRoute);
app.use("/api/answers", answerRoute);


app.use((err, req, res, next) => {
  const errorStatus = err.status || 500; 
  const errorMessage = err.message || "Something went Wrong!!";

  return res.status(errorStatus).send({message: errorMessage});
});

app.listen(5000, () => {
  console.log("Connected to server succussfully!");
});
