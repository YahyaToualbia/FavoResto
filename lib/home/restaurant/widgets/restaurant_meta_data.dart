import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/home/restaurant/restaurant.dart';
import 'package:flutter/material.dart';

class RestaurantMetaData extends StatelessWidget {
  const RestaurantMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = [
      'Vegetarian',
      'Vegan',
      'Budget-Friendly',
      'Fast Service',
      'Scenic View',
    ];
    final colors = [
      AppColors.lighGreen,
      AppColors.lighGreen,
      AppColors.purple,
      AppColors.yellow,
      AppColors.blue,
    ];
    final backgroundColors = [
      AppColors.secondaryWhite,
      AppColors.secondaryWhite,
      AppColors.lightPurple,
      AppColors.lightYellow,
      AppColors.lightBlue,
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Description',
          style: context.titleLarge!.copyWith(
            fontWeight: AppFontWeight.bold,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        const Text(
          'Nestled in the heart of the city, Green Leaf Bistro offers '
          'a cozy escape for veggie lovers. '
          'From fresh farm-to-table salads '
          'to creative plant-based dishes.',
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: AppSpacing.xlg),
        Text(
          'Tags',
          style: context.titleLarge!.copyWith(
            fontWeight: AppFontWeight.bold,
          ),
        ),
        const SizedBox(height: AppSpacing.sm),
        Wrap(
          spacing: AppSpacing.sm,
          children: List.generate(
            tags.length,
            (index) {
              final color = colors[index % colors.length];
              final backgroundColor =
                  backgroundColors[index % backgroundColors.length];
              return TagChip(
                label: tags[index],
                color: color,
                backgroundColor: backgroundColor,
              );
            },
          ),
        ),
      ],
    );
  }
}
