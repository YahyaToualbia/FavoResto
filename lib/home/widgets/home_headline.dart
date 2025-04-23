import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class HomeHeadline extends StatelessWidget {
  const HomeHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            'Welcome home.',
            style: context.titleLarge!.copyWith(fontWeight: AppFontWeight.bold),
          ),
        ),
        Assets.images.appLogo.svg(height: 48, width: 48),
      ],
    );
  }
}
