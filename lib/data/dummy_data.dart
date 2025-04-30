import '../models/category_model.dart';
import '../models/product_model.dart';

class DummyData {
  static List<CategoryModel> getCategories() {
    return [
      CategoryModel(
        id: '1',
        name: 'Vegetables & Fruits',
        imageUrl: 'assets/images/categories/vegetables.jpg',
      ),
      CategoryModel(
        id: '2',
        name: 'Dairy & Breakfast',
        imageUrl: 'assets/images/categories/dairy.jpg',
      ),
      CategoryModel(
        id: '3',
        name: 'Munchies',
        imageUrl: 'assets/images/categories/munchies.jpg',
      ),
      CategoryModel(
        id: '4',
        name: 'Cold Drinks & Juices',
        imageUrl: 'assets/images/categories/cold_drinks.jpg',
      ),
      CategoryModel(
        id: '5',
        name: 'Instant & Frozen Food',
        imageUrl: 'assets/images/categories/frozen.jpg',
      ),
      CategoryModel(
        id: '6',
        name: 'Tea, Coffee & Health Drinks',
        imageUrl: 'assets/images/categories/tea.jpg',
      ),
      CategoryModel(
        id: '7',
        name: 'Bakery & Biscuits',
        imageUrl: 'assets/images/categories/bakery.jpg',
      ),
      CategoryModel(
        id: '8',
        name: 'Sweet Tooth',
        imageUrl: 'assets/images/categories/sweet.jpg',
      ),
      CategoryModel(
        id: '9',
        name: 'Atta, Rice & Dal',
        imageUrl: 'assets/images/categories/wheat.jpg',
      ),
      CategoryModel(
        id: '10',
        name: 'Dry Fruits, Masala & Oil',
        imageUrl: 'assets/images/categories/dry_fruits.jpg',
      ),
      CategoryModel(
        id: '11',
        name: 'Sauces & Spreads',
        imageUrl: 'assets/images/categories/vegetables.jpg',
      ),
      CategoryModel(
        id: '12',
        name: 'Chicken, Meat & Fish',
        imageUrl: 'assets/images/categories/dairy.jpg',
      ),
      CategoryModel(
        id: '13',
        name: 'Paan Corner',
        imageUrl: 'assets/images/categories/munchies.jpg',
      ),
      CategoryModel(
        id: '14',
        name: 'Organic & Premium',
        imageUrl: 'assets/images/categories/cold_drinks.jpg',
      ),
      CategoryModel(
        id: '15',
        name: 'Baby Care',
        imageUrl: 'assets/images/categories/frozen.jpg',
      ),
      CategoryModel(
        id: '16',
        name: 'Pharma & Wellness',
        imageUrl: 'assets/images/categories/tea.jpg',
      ),
      CategoryModel(
        id: '17',
        name: 'Cleaning Essentials',
        imageUrl: 'assets/images/categories/bakery.jpg',
      ),
      CategoryModel(
        id: '18',
        name: 'Home & Office',
        imageUrl: 'assets/images/categories/sweet.jpg',
      ),
      CategoryModel(
        id: '19',
        name: 'Personal Care',
        imageUrl: 'assets/images/categories/wheat.jpg',
      ),
      CategoryModel(
        id: '20',
        name: 'Pet Care',
        imageUrl: 'assets/images/categories/dry_fruits.jpg',
      ),
      CategoryModel(
        id: '21',
        name: 'Fashion & Accessories',
        imageUrl: 'assets/images/categories/vegetables.jpg',
      ),
    ];
  }

  static List<CategoryModel> getStores() {
    return [
      CategoryModel(
        id: '1',
        name: 'Pet Store',
        imageUrl: 'assets/images/categories/dairy.jpg',
      ),
      CategoryModel(
        id: '2',
        name: 'Beauty Store',
        imageUrl: 'assets/images/categories/munchies.jpg',
      ),
      CategoryModel(
        id: '3',
        name: 'Print Store',
        imageUrl: 'assets/images/categories/cold_drinks.jpg',
      ),
      CategoryModel(
        id: '4',
        name: 'Electronic Store',
        imageUrl: 'assets/images/categories/frozen.jpg',
      ),
    ];
  }

  static List<ProductModel> getHotDeals() {
    return [
      ProductModel(
        id: '1',
        name: 'Catch Cumin Seeds / Jeera',
        imageUrl: 'assets/images/categories/dairy.jpg',
        price: 57,
        originalPrice: 79,
        quantity: '100 g',
        discount: 28,
      ),
      ProductModel(
        id: '2',
        name: 'Wholesome Farm Grocery Cashew',
        imageUrl: 'assets/images/categories/vegetables.jpg',
        price: 226,
        originalPrice: 299,
        quantity: '200 g',
        discount: 24,
      ),
      ProductModel(
        id: '3',
        name: 'Wholesome Farm Grocery Raisins',
        imageUrl: 'assets/images/categories/dry_fruits.jpg',
        price: 91,
        originalPrice: 130,
        quantity: '200 g',
        discount: 30,
      ),
    ];
  }

  static List<ProductModel> getDailyNeeds() {
    return [
      ProductModel(
        id: '1',
        name: 'Lotus Stem (Kamal Kakdi)',
        imageUrl: 'assets/images/categories/vegetables.jpg',
        price: 61,
        originalPrice: 68,
        quantity: '250 g',
        discount: 10,
      ),
      ProductModel(
        id: '2',
        name: 'Snacking Cucumber',
        imageUrl: 'assets/images/categories/dairy.jpg',
        price: 45,
        originalPrice: 60,
        quantity: '500 g',
        discount: 25,
      ),
      ProductModel(
        id: '3',
        name: 'Organic Ginger',
        imageUrl: 'assets/images/categories/dry_fruits.jpg',
        price: 20,
        originalPrice: 25,
        quantity: '100 g',
        discount: 20,
      ),
    ];
  }

  static List<CategoryModel> getCookingIdeas() {
    return [
      CategoryModel(
        id: '1',
        name: 'Chole Bhature',
        imageUrl: 'assets/images/categories/tea.jpg',
      ),
      CategoryModel(
        id: '2',
        name: 'Masala Vermicelli',
        imageUrl: 'assets/images/categories/bakery.jpg',
      ),
      CategoryModel(
        id: '3',
        name: 'Onion Paratha',
        imageUrl: 'assets/images/categories/sweet.jpg',
      ),
      CategoryModel(
        id: '4',
        name: 'Paneer Butter Masala',
        imageUrl: 'assets/images/categories/wheat.jpg',
      ),
    ];
  }

  static List<CategoryModel> getCleaningItems() {
    return [
      CategoryModel(
        id: '1',
        name: 'Surface Cleaners',
        imageUrl: 'assets/images/categories/dry_fruits.jpg',
      ),
      CategoryModel(
        id: '2',
        name: 'Cleaning Tools',
        imageUrl: 'assets/images/categories/vegetables.jpg',
      ),
      CategoryModel(
        id: '3',
        name: 'Trash Disposal',
        imageUrl: 'assets/images/categories/dairy.jpg',
      ),
      CategoryModel(
        id: '4',
        name: 'Cleaning Gadgets',
        imageUrl: 'assets/images/categories/munchies.jpg',
      ),
    ];
  }
}
