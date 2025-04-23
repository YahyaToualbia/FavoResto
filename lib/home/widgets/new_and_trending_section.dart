import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/data/restaurant.dart';
import 'package:favo_resto/home/home.dart';
import 'package:flutter/material.dart';

class NewAndTrendingSection extends StatelessWidget {
  const NewAndTrendingSection({super.key});

  @override
  Widget build(BuildContext context) {
    final restaurants = trendingRestaurant;
    final options = [
      'just Opened',
      'Dine with a view',
      'Vegan delights',
    ];

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Section title
        Text(
          'Trending & New Restaurants ',
          style: context.titleSmall!.copyWith(fontWeight: AppFontWeight.bold),
        ),
        const SizedBox(height: AppSpacing.md),

        // Chips List
        SectionChips(options:options),

        const SizedBox(height: AppSpacing.md),

        // Restaurant list
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemExtent: 115,
            itemCount: restaurants.length,
            itemBuilder: (context, index) => RestauarantItem(
              restaurant: restaurants[index],
            ),
          ),
        ),
      ],
    );
  }
}
