import mongoose from "mongoose";
const { Schema } = mongoose;

const answerSchema = new Schema({
    userId: {
        type: mongoose.Schema.Types.ObjectId,
        require: true,
        ref: 'User'
    },
    quizId: {
        type: mongoose.Schema.Types.ObjectId,
        require: true,
        ref: 'Quiz'
    },
    answer: {
        type: String,
        require: true,
    },
},{timestamps: true})

export const Answer = mongoose.models.Answer || mongoose.model("Answer", answerSchema);