import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/survey/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.xlg,
        vertical: AppSpacing.xxxlg,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Headline
          OnBoardingHeadline(),
          SizedBox(height: AppSpacing.xxlg),
          // Go to survey Button
          Padding(
            padding: EdgeInsets.only(left: AppSpacing.lg),
            child: GoToQuestionPageButton(),
          ),
        ],
      ),
    );
  }
}
