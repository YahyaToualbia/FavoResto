import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/profile/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class SettingsTabView extends StatelessWidget {
  const SettingsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primaryWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(AppSpacing.lg),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  SettingListTile(
                    title: 'set profile',
                    leading: HugeIcon(
                      icon: HugeIcons.strokeRoundedUser03,
                      color: AppColors.black,
                    ),
                  ),
                  SettingListTile(
                    title: 'your location',
                    leading: HugeIcon(
                      icon: HugeIcons.strokeRoundedLocation01,
                      color: AppColors.black,
                    ),
                  ),
                  SettingListTile(
                    title: 'preferences',
                    leading: HugeIcon(
                      icon: HugeIcons.strokeRoundedPreferenceVertical,
                      color: AppColors.black,
                    ),
                  ),
                  SettingListTile(
                    title: 'foodie badges',
                    leading: HugeIcon(
                      icon: HugeIcons.strokeRoundedStarAward01,
                      color: AppColors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: AppButton.auth(
                text: 'Connect with Facebook',
                color: AppColors.darkerkBlue,
                onPressed: () {},
                textStyle: context.bodyMedium!.copyWith(
                  fontWeight: AppFontWeight.bold,
                  color: AppColors.primaryWhite,
                ),
              ),
            ),
            const SizedBox(height: AppSpacing.md),
            SizedBox(
              width: double.infinity,
              child: AppButton.outlined(
                text: 'Connect with Google',
                textStyle: context.bodyMedium!.copyWith(
                  fontWeight: AppFontWeight.bold,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
