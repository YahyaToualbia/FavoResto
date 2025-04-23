import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/data/restaurant.dart';
import 'package:favo_resto/home/home.dart';
import 'package:flutter/material.dart';

class MostPopularSection extends StatelessWidget {
  const MostPopularSection({super.key});

  @override
  Widget build(BuildContext context) {
    final options = ['Top rated', 'Crowd favorites', 'Top picks'];
    final restaurants = mostPopularRestaurants;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // section title
        Text(
          'Most popular',
          style: context.titleSmall!.copyWith(
            fontWeight: AppFontWeight.bold,
          ),
        ),
        const SizedBox(height: AppSpacing.md),
        
        // Chips list
        SectionChips(options: options),

        const SizedBox(height: AppSpacing.md),

        // Restaurants List
        SizedBox(
          height: 150,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemExtent: 115,
            itemCount: restaurants.length,
            itemBuilder: (context, index) {
              return RestauarantItem(
                restaurant: restaurants[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
