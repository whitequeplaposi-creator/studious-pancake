import 'package:json_annotation/json_annotation.dart';

part 'product.g.dart';

@JsonSerializable()
class Product {
  final String id;
  final String name;
  final String description;
  final double price;
  final double originalPrice;
  final double discount;
  final String category;
  final List<String> images;
  final Map<String, String> specifications;
  final int stock;
  final double rating;
  final int reviewCount;
  final DateTime createdAt;
  final DateTime updatedAt;
  
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.originalPrice,
    required this.discount,
    required this.category,
    required this.images,
    required this.specifications,
    required this.stock,
    required this.rating,
    required this.reviewCount,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory Product.fromJson(Map<String, dynamic> json) => _$ProductFromJson(json);
  Map<String, dynamic> toJson() => _$ProductToJson(this);
  
  // Helper method to calculate if product is on sale
  bool get isOnSale => discount > 0;
  
  // Helper method to get discount percentage
  String get discountPercentage => '${discount.toInt()}%';
  
  // Helper method to check if in stock
  bool get inStock => stock > 0;
}
