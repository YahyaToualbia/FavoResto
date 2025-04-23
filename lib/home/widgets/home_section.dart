import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/home/home.dart';
import 'package:favo_resto/models/restauarant.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    required this.title,
    required this.restaurants,
    required this.options,
    super.key,
  });

  final String title;
  final List<Restaurant> restaurants;
  final List<String> options;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // section title
        Text(
          title,
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
                key: ValueKey(index),
                restaurant: restaurants[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
