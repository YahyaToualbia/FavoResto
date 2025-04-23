import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class FiltersChips extends StatefulWidget {
  const FiltersChips({super.key});

  @override
  State<FiltersChips> createState() => _FiltersChipsState();
}

class _FiltersChipsState extends State<FiltersChips> {
  int? selectedIndex;
  final filters = [
    'Vegetarian',
    'Vegan',
    'Budget-Fiendly',
    'Fast-Service',
    'Quiet',
    'Popular',
    'Local Cuisine',
    'Live Music',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        spacing: AppSpacing.sm,
        children: List.generate(
          filters.length,
          (index) {
            final isSelected = selectedIndex == index;
            return AppChip.filter(
              label: Text(filters[index]),
              selected: isSelected,
              onSelected: (selected) => setState(() {
                selectedIndex = selected ? index : null;
              }),
            );
          },
        ),
      ),
    );
  }
}
