import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class SectionChips extends StatefulWidget {
  const SectionChips({required this.options, super.key});

  final List<String> options;

  @override
  State<SectionChips> createState() => _SectionChipsState();
}

class _SectionChipsState extends State<SectionChips> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: AppSpacing.sm,
      children: List.generate(
        widget.options.length,
        (int index) {
          final isSelected = selectedIndex == index;
          return AppChip(
            label: Text(widget.options[index]),
            selected: isSelected,
            onSelected: (selected) => setState(() {
              selectedIndex = selected ? index : null;
            }),
          );
        },
      ).toList(),
    );
  }
}
