part of 'search_cubit.dart';

enum SearchStatus { initial, loading, success, notFound }

class SearchState extends Equatable {
  const SearchState({
    this.status = SearchStatus.initial,
    this.filteredRestaurants = const <Restaurant>[],
  });

  final SearchStatus status;
  final List<Restaurant> filteredRestaurants;

  SearchState copyWith({
    SearchStatus? status,
    List<Restaurant>? filteredRestaurants,
  }) {
    return SearchState(
      status: status ?? this.status,
      filteredRestaurants: filteredRestaurants ?? this.filteredRestaurants,
    );
  }

  @override
  List<Object> get props => [status, filteredRestaurants];
}
