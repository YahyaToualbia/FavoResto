import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/data/restaurant.dart';
import 'package:favo_resto/home/home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(builder: (context) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
     
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpacing.lg,
          vertical: AppSpacing.xlg,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: AppSpacing.md),
              child: HomeHeadline(),
            ),
            // Banner
            const HomeBanner(),

            // Most popular.
            Padding(
              padding: const EdgeInsets.symmetric(vertical: AppSpacing.xxlg),
              child: HomeSection(
                title: 'Most popular',
                restaurants: mostPopularRestaurants,
                options: const ['Top rated', 'Crowd favorites', 'Top picks'],
              ),
            ),

            // New & Trending.
            HomeSection(
              title: 'Trending & New Restaurants',
              restaurants: trendingRestaurant,
              options: const [
                'just Opened',
                'Dine with a view',
                'Vegan delights',
              ],
            ),
          ],
        ),
      ),
    );
  }
}
