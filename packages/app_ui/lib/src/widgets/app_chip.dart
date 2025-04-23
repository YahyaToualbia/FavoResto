import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

/// {@template app_chip}
/// A custom chip widget that is used for content filtering.
/// {@endtemplate}
class AppChip extends StatelessWidget {
  ///{@macro app_chip}
  const AppChip({
    required this.label,
    required this.selected,
    this.onSelected,
    this.labelStyle,
    this.isFilterChip = false,
    super.key,
  });

  /// {@macro app_chip}
  const AppChip.filter({
    required Text label,
    required bool selected,
    required ValueChanged<bool>? onSelected,
    TextStyle? labelStyle,
    Key? key,
  }) : this(
          label: label,
          selected: selected,
          onSelected: onSelected,
          labelStyle: labelStyle,
          isFilterChip: true,
          key: key,
        );

  /// chip label.
  final Text label;

  /// Text Style of the label.
  final TextStyle? labelStyle;

  /// Wether the chip is selected or not.
  final bool selected;

  /// Wether the chip is filter chip or not.
  /// if this is false, a [ChoiceChip] is the default chip.
  final bool isFilterChip;

  /// Callback function when the chip is selected.
  // ignore: avoid_positional_boolean_parameters
  final ValueChanged<bool>? onSelected;

  @override
  Widget build(BuildContext context) {
    final chipLabelStyle = labelStyle ??
        context.bodySmall!.copyWith(
          color: selected ? AppColors.lighGreen : AppColors.black,
          fontWeight: AppFontWeight.semiBold,
        );

    final chipShape = RoundedRectangleBorder(
      side: BorderSide(
        color: selected ? AppColors.lighGreen : AppColors.black,
        width: 0.5,
      ),
      borderRadius: BorderRadius.circular(24),
    );

    final effectiveChip = isFilterChip
        ? FilterChip(
            label: label,
            onSelected: onSelected,
            selected: selected,
            selectedColor: AppColors.lightGreenWithOpacity,
            backgroundColor: Colors.transparent,
            shape: chipShape,
            labelStyle: chipLabelStyle,
          )
        : ChoiceChip(
            label: label,
            selected: selected,
            onSelected: onSelected,
            shape: chipShape,
            labelStyle: chipLabelStyle,
            color: WidgetStatePropertyAll(
              selected ? AppColors.lightGreenWithOpacity : Colors.transparent,
            ),
          );
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      splashFactory: NoSplash.splashFactory,
      child: effectiveChip,
    );
  }
}
