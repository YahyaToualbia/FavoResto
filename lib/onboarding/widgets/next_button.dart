import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/navigation/navigation_menu.dart';
import 'package:flutter/material.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton.iconButton(
      onPressed: () => Navigator.pushReplacement(
        context,
        NavigationMenu.route(),
      ),
      icon: const Icon(Icons.arrow_forward),
      padding: const EdgeInsets.all(AppSpacing.lg),
    );
  }
}
