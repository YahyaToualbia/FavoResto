import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class RestaurantInfo extends StatelessWidget {
  const RestaurantInfo({required this.restaurantName, super.key});

  final String restaurantName;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Restaurant Name & Save button
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              restaurantName.toUpperCase(),
              style: context.headlineSmall!.copyWith(
                fontWeight: AppFontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border_outlined,
                size: 32,
              ),
            ),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        // Restaurant location
        const Row(
          children: [
            Icon(Icons.location_on, color: Colors.blue),
            SizedBox(width: AppSpacing.xs),
            Text('124 Greenlake Avenue Rivertown, CA 90210'),
          ],
        ),
        const SizedBox(height: AppSpacing.sm),
        // Rating & Reviews
        const Row(
          children: [
            Icon(Icons.star, color: Colors.yellow),
            SizedBox(width: AppSpacing.xs),
            Text('8/10 Rating (44 Reviews)'),
          ],
        ),
      ],
    );
  }
}
