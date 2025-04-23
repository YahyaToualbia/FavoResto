import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class ProfileTabBar extends StatelessWidget {
  const ProfileTabBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primaryWhite,
      ),
      child: TabBar(
        splashBorderRadius: BorderRadius.circular(16),
        labelColor: AppColors.lighGreen,
        dividerColor: Colors.transparent,
        indicatorColor: AppColors.primaryWhite,
        unselectedLabelStyle: context.bodyLarge!.copyWith(
          fontWeight: AppFontWeight.semiBold,
        ),
        labelStyle: context.bodyLarge!.copyWith(
          fontWeight: AppFontWeight.semiBold,
        ),
        tabs: const [
          Tab(text: 'Settings'),
          Tab(text: 'favorites'),
        ],
      ),
    );
  }
}
