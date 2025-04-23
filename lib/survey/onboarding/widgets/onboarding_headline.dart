import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class OnBoardingHeadline extends StatelessWidget {
  const OnBoardingHeadline({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      style: context.headlineMedium,
      TextSpan(
        children: [
          const TextSpan(text: 'Drop a quick\n'),
          TextSpan(
            text: 'survey,\n',
            style: context.headlineLarge!.copyWith(
              fontWeight: AppFontWeight.bold,
            ),
          ),
          const TextSpan(
            text: 'and let us tell you where to\n',
          ),
          TextSpan(
            text: 'eat! ✨',
            style: context.headlineLarge!
                .copyWith(fontWeight: AppFontWeight.bold),
          ),
        ],
      ),
    );
  }
}
