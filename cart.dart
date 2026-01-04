import 'package:json_annotation/json_annotation.dart';

part 'cart.g.dart';

@JsonSerializable()
class Cart {
  final String id;
  final String userId;
  final List<CartItem> items;
  final String? couponCode;
  final double discount;
  final double subtotal;
  final double total;
  final DateTime updatedAt;
  
  Cart({
    required this.id,
    required this.userId,
    required this.items,
    this.couponCode,
    required this.discount,
    required this.subtotal,
    required this.total,
    required this.updatedAt,
  });
  
  factory Cart.fromJson(Map<String, dynamic> json) => _$CartFromJson(json);
  Map<String, dynamic> toJson() => _$CartToJson(this);
  
  // Helper method to get total item count
  int get itemCount => items.fold(0, (sum, item) => sum + item.quantity);
  
  // Helper method to check if cart is empty
  bool get isEmpty => items.isEmpty;
  
  // Helper method to check if cart has discount
  bool get hasDiscount => discount > 0;
}

@JsonSerializable()
class CartItem {
  final String productId;
  final int quantity;
  final double price;
  
  CartItem({
    required this.productId,
    required this.quantity,
    required this.price,
  });
  
  factory CartItem.fromJson(Map<String, dynamic> json) => _$CartItemFromJson(json);
  Map<String, dynamic> toJson() => _$CartItemToJson(this);
  
  // Helper method to calculate item total
  double get itemTotal => price * quantity;
}
