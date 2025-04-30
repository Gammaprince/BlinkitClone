class ProductModel {
  final String id;
  final String name;
  final String imageUrl;
  final double price;
  final double? originalPrice;
  final String quantity;
  final int discount;
  final int deliveryTime;

  ProductModel({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.price,
    this.originalPrice,
    required this.quantity,
    this.discount = 0,
    this.deliveryTime = 8,
  });
}