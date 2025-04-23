import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/home/restaurant/restaurant.dart';
import 'package:favo_resto/models/restauarant.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class RestaurantDetailPage extends StatelessWidget {
  const RestaurantDetailPage({required this.restaurant, super.key});

  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: AppColors.neutralWhite,
      child: AppScaffold(
       
        safeArea: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Header(
              restaurantId: restaurant.id,
              restaurantImage: restaurant.image,
            ),

            const SizedBox(height: AppSpacing.lg),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xlg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Restaurant info
                  RestaurantInfo(restaurantName: restaurant.name),
                  const SizedBox(height: AppSpacing.xxlg),
                  // Description
                  const RestaurantMetaData(),
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: IconButton(
          onPressed: () {},
          icon: HugeIcon(
            size: 32,
            icon: HugeIcons.strokeRoundedMapsSearch,
            color: AppColors.lighGreen,
          ),
        ),
      ),
    );
  }
}
