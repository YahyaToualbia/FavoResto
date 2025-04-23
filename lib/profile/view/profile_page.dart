import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/profile/view/view.dart';
import 'package:favo_resto/profile/widgets/widgets.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static Route<void> route() => MaterialPageRoute(
        builder: (context) => const ProfilePage(),
      );

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: AppScaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSpacing.xlg,
            vertical: AppSpacing.xlg,
          ),
          child: Column(
            children: [
              const UserInfoListTile(),
              const SizedBox(height: AppSpacing.lg),
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Assets.images.profileCoupon.image(
                  width: double.infinity,
                  height: 120,
                  fit: BoxFit.fitWidth,
                ),
              ),
              const SizedBox(height: AppSpacing.lg),
              const ProfileTabBar(),
              const SizedBox(height: AppSpacing.md),
              const Expanded(
                child: TabBarView(
                  children: [
                    SettingsTabView(),
                    FavoritesView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
