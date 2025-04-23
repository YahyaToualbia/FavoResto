import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

///{@template app_smooth_page_indicator}
/// A custom page indicator.
/// {@endtemplate}
class AppSmoothPageIndicator extends StatelessWidget {
  /// {@macro app_smooth_page_indicator}
  const AppSmoothPageIndicator({
    required this.controller,
    required this.count,
    this.dotWidth = 22,
    this.dotHeight = 6,
    this.paintStyle = PaintingStyle.stroke,
    this.dotColor = AppColors.primaryColor,
    this.activeDotColor = AppColors.primaryColor,
    super.key,
  });

  /// The page view controller
  final PageController controller;

  /// The number of pages.
  final int count;

  /// The dot width.
  final double dotWidth;

  /// The dotHeight
  final double dotHeight;

  /// The style of indicator.
  final PaintingStyle paintStyle;

  /// The color of the dot.
  final Color dotColor;

  /// The active color when a dot is active.
  final Color activeDotColor;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      effect:  WormEffect(
        dotWidth: dotWidth,
        dotHeight: dotHeight,
        paintStyle: paintStyle,
        dotColor: dotColor,
        activeDotColor: activeDotColor,
      ),
    );
  }
}
