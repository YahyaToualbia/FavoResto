import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/survey/cubit/survey_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GoToQuestionPageButton extends StatelessWidget {
  const GoToQuestionPageButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppButton.iconButton(
      onPressed: () => context.read<SurveyCubit>().onShowSurveyQuestionPage(
            show: true,
          ),
      padding: const EdgeInsets.all(AppSpacing.lg),
      icon: const Icon(Icons.arrow_forward),
    );
  }
}
