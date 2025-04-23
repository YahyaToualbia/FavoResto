import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/onboarding/widgets/widgets.dart';
import 'package:flutter/material.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppBackground(
      color: AppColors.lighGreen,
        child: AppScaffold(
          resizeToAvoidBottomInset: true,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSpacing.xxxlg * 1.5),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSpacing.xlg),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadlineText(),

                      SizedBox(height: AppSpacing.xxxlg),

                      Padding(
                        padding: EdgeInsets.only(left: AppSpacing.md + 10),
                        child: NextButton(),
                      ),
                    ],
                  ),
                ),
              ),
              // onBoard image preview
              Expanded(
                flex: 3,
                child: OnboardingImage(),
              ),
            ],
          ),
        ),
      
    );
  }
}
