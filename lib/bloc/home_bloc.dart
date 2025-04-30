import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/category_model.dart';
import '../models/product_model.dart';
import '../data/dummy_data.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<LoadHomeData>(_onLoadHomeData);
  }

  void _onLoadHomeData(LoadHomeData event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    try {
      final categories = DummyData.getCategories();
      final hotDeals = DummyData.getHotDeals();
      final dailyNeeds = DummyData.getDailyNeeds();
      final cookingIdeas = DummyData.getCookingIdeas();
      final cleaningItems = DummyData.getCleaningItems();

      emit(HomeLoaded(
        categories: categories,
        hotDeals: hotDeals,
        dailyNeeds: dailyNeeds,
        cookingIdeas: cookingIdeas,
        cleaningItems: cleaningItems,
      ));
    } catch (e) {
      emit(HomeError(message: e.toString()));
    }
  }
}