import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_background}
/// Background image for scaffold, that contains a backround color
/// and the app logo.
/// {@endtemplate}
class AppBackground extends StatelessWidget {
  ///{@macro app_background}
  const AppBackground({
    required this.child,
    this.color = AppColors.secondaryWhite,
    super.key,
    this.withOneLogo = false,
  });

  ///{@macro app_background}
  const AppBackground.withOneLogo({
    required Widget child,
    Color? color,
    Key? key,
  }) : this(
          color: color,
          child: child,
          withOneLogo: true,
          key: key,
        );

  /// Wether the background shows one logo or not.
  final bool withOneLogo;

  /// Color of the backround.
  final Color? color;

  /// The scaffold widget that will be displayed upon the backround.
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: color ?? AppColors.neutralWhite,
      child: Stack(
        children: [
          if (!withOneLogo)
            Positioned(
              right: 0,
              top: -200,
              child: Assets.images.appLogo.svg(
                width: 750,
                height: 750,
                colorFilter: const ColorFilter.mode(
                  Colors.black26,
                  BlendMode.srcIn,
                ),
              ),
            ),
          Positioned(
            bottom: -200,
            left: -50,
            child: Assets.images.appLogo.svg(
              width: 750,
              height: 750,
              colorFilter: const ColorFilter.mode(
                Colors.black26,
                BlendMode.srcIn,
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
