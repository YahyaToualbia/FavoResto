import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:favo_resto/data/restaurant.dart';
import 'package:favo_resto/models/restauarant.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState());

  void initializeSearchRestaurants() {
    final newState = state.copyWith(
      filteredRestaurants: List.from(allRestaurants),
    );
    emit(newState);
  }

  Future<void> onSearchInputChanged(String query) async {
    emit(state.copyWith(status: SearchStatus.loading));
    await Future<void>.delayed(const Duration(seconds: 1));
    final filteredRestaurants = allRestaurants
        .where(
          (restaurant) =>
              restaurant.name.toLowerCase().contains(query.toLowerCase()),
        )
        .toList();

    emit(
      state.copyWith(
        status: filteredRestaurants.isEmpty
            ? SearchStatus.notFound
            : SearchStatus.success,
        filteredRestaurants: filteredRestaurants,
      ),
    );
  }
}
