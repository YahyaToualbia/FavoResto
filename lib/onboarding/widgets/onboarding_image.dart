import 'dart:math' as math;
import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class OnboardingImage extends StatelessWidget {
  const OnboardingImage({super.key});

  @override
  Widget build(BuildContext context) {
    const angle = -15 * math.pi / 180;
    return Stack(
      children: [
        Positioned(
          bottom: 20,
          left: -50,
          child: Transform.rotate(
            angle: angle,
            child: Container(
              width: 360,
              height: 330,
              decoration: BoxDecoration(
                color: AppColors.neutralWhite,
                borderRadius: BorderRadius.circular(24),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -2,
          left: -45,
          child: Transform.rotate(
            angle: angle,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Assets.images.onboardingPageImage.image(
                width: 320,
                height: 320,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
