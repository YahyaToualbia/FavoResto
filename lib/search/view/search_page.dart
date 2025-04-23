import 'package:app_ui/app_ui.dart';
import 'package:favo_resto/search/cubit/cubit.dart';
import 'package:favo_resto/search/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchCubit()..initializeSearchRestaurants(),
      child: const SearchView(),
    );
  }
}

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      releaseFocus: true,
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSpacing.xlg,
            vertical: AppSpacing.xlg,
          ),
          child: Column(
            children: [
              // Search bar
              AppSearchBar(),

              SizedBox(height: AppSpacing.lg),

              // Filters list
              FiltersChips(),

              SizedBox(height: AppSpacing.xlg),

              // Restaurants List.
              RestaurantsList(),
            ],
          ),
        ),
      ),
    );
  }
}
