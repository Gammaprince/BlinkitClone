import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/home_bloc.dart';
import '../widgets/location_bar.dart';
import '../widgets/search_bar_widget.dart';
import '../widgets/categories_grid.dart';
import '../widgets/store_categories.dart';
import '../widgets/product_section.dart';
import '../widgets/cooking_ideas_section.dart';
import '../widgets/cleaning_section.dart';
import '../widgets/app_promotion_banner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is HomeLoaded) {
            return SafeArea(
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: LocationBar(),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                      child: SearchBarWidget(),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Text(
                        'Shop by category',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CategoriesGrid(categories: state.categories),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 16),
                      child: Text(
                        'Shop by store',
                        style: Theme.of(context).textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: StoreCategories(),
                  ),
                  SliverToBoxAdapter(
                    child: ProductSection(
                      title: 'Hot deals',
                      products: state.hotDeals,
                      showSeeAll: true,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: ProductSection(
                      title: 'Your daily fresh needs',
                      products: state.dailyNeeds,
                      showSeeAll: true,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CookingIdeasSection(
                      cookingIdeas: state.cookingIdeas,
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: CleaningSection(
                      cleaningItems: state.cleaningItems,
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: AppPromotionBanner(),
                  ),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 80),
                  ),
                ],
              ),
            );
          } else if (state is HomeError) {
            return Center(
              child: Text(state.message),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _bottomNavItem(Icons.home, 'Home', isSelected: true),
              _bottomNavItem(Icons.category, 'Categories'),
              _bottomNavItem(Icons.search, 'Search'),
              _bottomNavItem(Icons.shopping_cart, 'Cart'),
              _bottomNavItem(Icons.person, 'Account'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomNavItem(IconData icon, String label, {bool isSelected = false}) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: isSelected ? const Color(0xFFFFD600) : Colors.grey,
        ),
        Text(
          label,
          style: TextStyle(
            color: isSelected ? const Color(0xFFFFD600) : Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}