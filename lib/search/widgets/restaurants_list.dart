import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/home/restaurant/restaurant.dart';
import 'package:favo_resto/models/restauarant.dart';
import 'package:favo_resto/search/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RestaurantsList extends StatelessWidget {
  const RestaurantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        switch (state.status) {
          case SearchStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case SearchStatus.notFound:
            return const Center(
              child: Text('Oops!, restaurant not found'),
            );
          case SearchStatus.initial:
          case SearchStatus.success:
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: state.filteredRestaurants.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return _RestauarantCard(
                  restaurant: state.filteredRestaurants[index],
                );
              },
            );
        }
      },
    );
  }
}

class _RestauarantCard extends StatelessWidget {
  const _RestauarantCard({required this.restaurant});

  final Restaurant restaurant;
  @override
  Widget build(BuildContext context) {
    final screenHeight = context.screenHeight;
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) => RestaurantDetailPage(restaurant: restaurant),
        ),
      ),
      child: Container(
        width: double.infinity,
        height: screenHeight * 0.1,
        margin: const EdgeInsets.only(bottom: AppSpacing.md),
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.sm,
          vertical: AppSpacing.sm,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(),
            BoxShadow(),
          ],
          color: AppColors.primaryWhite,
        ),
        child: Row(
          children: [
            // Restaurant image
            Expanded(
              flex: 2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: restaurant.image.image(fit: BoxFit.fitWidth),
              ),
            ),
            const SizedBox(width: AppSpacing.sm),
            Flexible(
              flex: 3,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Restaurant name
                        _RestaurantName(restaurant: restaurant),

                        // restaurant location
                        const _RestaurantLocation(),
                      ],
                    ),
                  ),
                  const Row(
                    children: [
                      // Rate
                      _RestaurantRate(),
                      SizedBox(width: AppSpacing.sm),
                      // Save Icon
                      Icon(
                        Icons.bookmark_border,
                        size: 16,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RestaurantLocation extends StatelessWidget {
  const _RestaurantLocation();

  @override
  Widget build(BuildContext context) {
    return Text(
      'Ali Mendjeli El Khroub 207, El Khroub, Constantine',
      style: context.labelSmall!.copyWith(
        fontWeight: AppFontWeight.medium,
        color: AppColors.grey,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
    );
  }
}

class _RestaurantName extends StatelessWidget {
  const _RestaurantName({required this.restaurant});

  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    return Text(
      restaurant.name,
      style: context.bodyLarge!.copyWith(
        fontWeight: AppFontWeight.bold,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _RestaurantRate extends StatelessWidget {
  const _RestaurantRate();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'RATE : ',
            style: context.bodySmall!.copyWith(
              fontWeight: AppFontWeight.bold,
            ),
          ),
          TextSpan(
            text: '9/10',
            style: context.bodySmall!.copyWith(
              fontWeight: AppFontWeight.bold,
              color: AppColors.lighGreen,
            ),
          ),
        ],
      ),
    );
  }
}
