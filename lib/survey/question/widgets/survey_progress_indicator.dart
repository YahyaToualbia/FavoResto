import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/survey/survey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SurveyProgressIndicator extends StatelessWidget {
  const SurveyProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final totalQuestion = context.select(
      (SurveyQuestionCubit cubit) => cubit.questions.length,
    );
    final currentQuestionIndex = context.select(
      (SurveyQuestionCubit cubit) => cubit.state.currentQuestionIndex,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // eg: 5 of 10
        Text(
          '${currentQuestionIndex + 1} of $totalQuestion',
          style: context.bodyLarge!.copyWith(
            fontWeight: AppFontWeight.semiBold,
          ),
        ),

        const SizedBox(height: AppSpacing.xs),
        // progress
        Row(
          children: List.generate(totalQuestion, (index) {
            final isVisited = context.select(
              (SurveyQuestionCubit cubit) =>
                  cubit.state.visitedQuestionsIndexes.contains(index),
            );
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.only(right: AppSpacing.xs),
              width: isVisited ? 32 : 28,
              height: 6,
              decoration: BoxDecoration(
                color: isVisited ? AppColors.lighGreen : AppColors.grey,
                borderRadius: BorderRadius.circular(6),
              ),
            );
          }),
        ),
      ],
    );
  }
}
