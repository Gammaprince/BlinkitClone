part of 'home_bloc.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<CategoryModel> categories;
  final List<ProductModel> hotDeals;
  final List<ProductModel> dailyNeeds;
  final List<CategoryModel> cookingIdeas;
  final List<CategoryModel> cleaningItems;

  const HomeLoaded({
    required this.categories,
    required this.hotDeals,
    required this.dailyNeeds,
    required this.cookingIdeas,
    required this.cleaningItems,
  });

  @override
  List<Object> get props => [categories, hotDeals, dailyNeeds, cookingIdeas, cleaningItems];
}

class HomeError extends HomeState {
  final String message;

  const HomeError({required this.message});

  @override
  List<Object> get props => [message];
}