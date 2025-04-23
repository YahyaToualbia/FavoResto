import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/survey/question/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigationButtons extends StatelessWidget {
  const NavigationButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurveyQuestionCubit, SurveyQuestionState>(
      builder: (context, state) {
        final cubit = context.read<SurveyQuestionCubit>();
        final last = cubit.questions.length - 1;
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppButton.iconButton(
              onPressed:
                  state.currentQuestionIndex > 0 ? cubit.onPrevious : null,
              icon: const Icon(Icons.arrow_back),
              padding: const EdgeInsets.all(AppSpacing.md),
            ),
            AppButton.iconButton(
              onPressed: state.canProceed
                  ? (state.currentQuestionIndex < last ? cubit.onNext : () {})
                  : null,
              icon: const Icon(Icons.arrow_forward),
              padding: const EdgeInsets.all(AppSpacing.md),
            ),
          ],
        );
      },
    );
  }
}
