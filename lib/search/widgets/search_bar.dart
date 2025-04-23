import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/search/cubit/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppSearchBar extends StatelessWidget {
  const AppSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SearchBar(
      onChanged: (value) =>
          context.read<SearchCubit>().onSearchInputChanged(value),
      hintText: 'Search ...',
      hintStyle: WidgetStatePropertyAll(context.bodyLarge),
      textStyle: WidgetStatePropertyAll(
        context.bodyLarge!.copyWith(fontWeight: AppFontWeight.semiBold),
      ),
      textInputAction: TextInputAction.search,
      trailing: const [
        Icon(
          Icons.tune,
          color: AppColors.grey,
        ),
        SizedBox(width: AppSpacing.sm),
        Icon(
          Icons.search,
          color: AppColors.grey,
        ),
      ],
    );
  }
}
