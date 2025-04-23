import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/home/restaurant/restaurant.dart';
import 'package:favo_resto/models/restauarant.dart';
import 'package:flutter/material.dart';

class RestauarantItem extends StatelessWidget {
  const RestauarantItem({required this.restaurant, super.key});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: AppSpacing.md),
      child: Hero(
        tag: restaurant.id,
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (context) => RestaurantDetailPage(
                restaurant: restaurant,
              ),
            ),
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: restaurant.image.image(
                  height: double.infinity,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                height: 70,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(16),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.transparent,
                      Colors.black38,
                      Colors.black87,
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 14,
                child: Text(
                  restaurant.name.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: context.bodyLarge!.copyWith(
                    color: AppColors.primaryWhite,
                    fontWeight: AppFontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
