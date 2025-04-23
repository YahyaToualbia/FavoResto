import 'package:favo_resto/models/survery_question_model.dart';

final List<SurveyQuestion> questions = [
  const SurveyQuestion(
    text: 'What is your average budget per restaurant meal?',
    options: [
      'Less than 1000DA 👀',
      'between 1000 and 2500DA 😄',
      'more than 5000DA 💸 ',
    ],
  ),
  const SurveyQuestion(
    text: 'How do you usually decide which restaurant to visit?',
    options: [
      'Social media (facebook..)📱',
      'Recommendations from friends 👥',
      'I go to places I’ve been before 👀',
    ],
  ),
  const SurveyQuestion(
    text: 'What is your preference when it comes to restaurant location?',
    options: [
      'Close to home/work 🚶',
      'In a lively neighborhood 🤩',
      "It doesn't matter 🚗",
    ],
  ),
];
