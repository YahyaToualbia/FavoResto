import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class SettingListTile extends StatelessWidget {
  const SettingListTile({
    required this.leading,
    required this.title,
    super.key,
  });

  final Widget leading;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      contentPadding: EdgeInsets.zero,
      title: Text(title),
      titleTextStyle: context.labelLarge!.copyWith(
        fontWeight: AppFontWeight.semiBold,
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
    );
  }
}
