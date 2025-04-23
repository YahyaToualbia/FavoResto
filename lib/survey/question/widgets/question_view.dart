import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/data/survery_questions.dart';
import 'package:favo_resto/survey/question/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class QuestionView extends StatelessWidget {
  const QuestionView({super.key});

  @override
  Widget build(BuildContext context) {
    final currentQuestionIndex = context.select(
      (SurveyQuestionCubit cubit) => cubit.state.currentQuestionIndex,
    );
    final selections = context.select(
      (SurveyQuestionCubit cubit) => cubit.state.selections,
    );
    final question = questions[currentQuestionIndex];
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (child, animation) {
        final offsetAnimation =
            Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
                .animate(animation);
        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
      child: Column(
        key: ValueKey(currentQuestionIndex),
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question.text,
            style: context.titleMedium!.copyWith(
              fontWeight: AppFontWeight.semiBold,
            ),
          ),
          const SizedBox(height: AppSpacing.lg),
          Wrap(
            runSpacing: 12,
            spacing: AppSpacing.sm,
            children: List.generate(question.options.length, (index) {
              final selectedOptions = selections[currentQuestionIndex] ?? [];
              final isSelected = selectedOptions.contains(index);
              if (question.isMultiSelection) {
                return AppChip.filter(
                  label: Text(question.options[index]),
                  selected: isSelected,
                  labelStyle: context.labelLarge!.copyWith(
                    color: isSelected ? AppColors.lighGreen : AppColors.black,
                    fontWeight: AppFontWeight.semiBold,
                  ),
                  onSelected: (_) =>
                      context.read<SurveyQuestionCubit>().toggleOption(index),
                );
              } else {
                return AppChip(
                  label: Text(question.options[index]),
                  labelStyle: context.labelLarge!.copyWith(
                    color: isSelected ? AppColors.lighGreen : AppColors.black,
                    fontWeight: AppFontWeight.semiBold,
                  ),
                  selected: isSelected,
                  onSelected: (_) =>
                      context.read<SurveyQuestionCubit>().toggleOption(index),
                );
              }
            }),
          ),
        ],
      ),
    );
  }
}
