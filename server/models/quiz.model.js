import mongoose from "mongoose";
const { Schema } = mongoose;

const quizSchema = new Schema({
    quiz: {
        type: String,
        require: true,
    },
    answers: {
        type: [String],
        require: true,
    },
},{timestamps: true})

export const Quiz = mongoose.models.Quiz || mongoose.model("Quiz", quizSchema);