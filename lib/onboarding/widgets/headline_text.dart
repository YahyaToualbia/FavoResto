import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class HeadlineText extends StatelessWidget {
  const HeadlineText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Somewhere out there...',
          style: context.headlineMedium!.copyWith(
            fontWeight: AppFontWeight.semiBold,
            color: AppColors.primaryWhite,
          ),
          maxLines: 2,
          softWrap: true,
        ),
        const SizedBox(height: AppSpacing.xs),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'your dream meal is',
                style: context.headlineLarge!.copyWith(
                  fontWeight: AppFontWeight.semiBold,
                  color: AppColors.primaryWhite,
                ),
              ),
              TextSpan(
                text: ' waiting.',
                style: context.headlineLarge!.copyWith(
                  fontWeight: AppFontWeight.extraBold,
                  color: AppColors.primaryWhite,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
