import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class TagChip extends StatelessWidget {
  const TagChip({
    required this.label,
    required this.color,
    required this.backgroundColor,
    super.key,
  });

  final String label;
  final Color color;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.sm),
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpacing.sm,
        vertical: AppSpacing.sm,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Text(
        label,
        style: context.bodyMedium!.copyWith(
          fontWeight: AppFontWeight.semiBold,
          color: color,
        ),
        maxLines: 2,
      ),
    );
  }
}
