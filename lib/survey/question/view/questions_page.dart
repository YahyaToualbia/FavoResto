import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/data/survery_questions.dart';
import 'package:favo_resto/survey/question/cubit/cubit.dart';
import 'package:favo_resto/survey/question/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionsPage extends StatelessWidget {
  const QuestionsPage({super.key});

  static Route<void> route = MaterialPageRoute(
    builder: (context) => const QuestionsPage(),
  );
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SurveyQuestionCubit(questions),
      child: const AppBackground.withOneLogo(
        child: AppScaffold(
          body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: AppSpacing.xlg,
              vertical: AppSpacing.xxxlg,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Survey Progress Indicator
                SurveyProgressIndicator(),
                SizedBox(height: AppSpacing.lg),
                // Question View
                Flexible(child: QuestionView()),
                // Navigation buttons
                Flexible(child: NavigationButtons()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
