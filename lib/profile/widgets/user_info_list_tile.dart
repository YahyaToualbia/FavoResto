import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:hugeicons/hugeicons.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: const EdgeInsets.all(AppSpacing.lg),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.primaryWhite,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Assets.images.circularAvatar.image(),
          ),
          const SizedBox(
            width: AppSpacing.sm,
          ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Yahya Toualbia',
                  style: context.bodyLarge!.copyWith(
                    fontWeight: AppFontWeight.bold,
                  ),
                ),
                Flexible(
                  child: Text(
                    'yahia.toualbia@univ-contantine2.dz',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: context.bodySmall!.copyWith(
                      color: AppColors.grey,
                      fontWeight: AppFontWeight.semiBold,
                    ),
                  ),
                ),
              ],
            ),
          ),
          HugeIcon(
            icon: HugeIcons.strokeRoundedPencilEdit02,
            color: AppColors.black,
          ),
        ],
      ),
    );
  }
}
