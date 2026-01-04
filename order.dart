import 'package:json_annotation/json_annotation.dart';
import 'user.dart';

part 'order.g.dart';

@JsonSerializable()
class Order {
  final String id;
  final String orderNumber;
  final String userId;
  final List<OrderItem> items;
  final Address shippingAddress;
  final String paymentMethod;
  final double subtotal;
  final double discount;
  final double shippingCost;
  final double total;
  final OrderStatus status;
  final String? trackingNumber;
  final DateTime createdAt;
  final DateTime updatedAt;
  
  Order({
    required this.id,
    required this.orderNumber,
    required this.userId,
    required this.items,
    required this.shippingAddress,
    required this.paymentMethod,
    required this.subtotal,
    required this.discount,
    required this.shippingCost,
    required this.total,
    required this.status,
    this.trackingNumber,
    required this.createdAt,
    required this.updatedAt,
  });
  
  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
  Map<String, dynamic> toJson() => _$OrderToJson(this);
  
  // Helper method to check if order can be cancelled
  bool get canBeCancelled => 
      status == OrderStatus.pending || status == OrderStatus.confirmed;
  
  // Helper method to check if order is delivered
  bool get isDelivered => status == OrderStatus.delivered;
  
  // Helper method to get status display text
  String get statusText {
    switch (status) {
      case OrderStatus.pending:
        return 'Väntar';
      case OrderStatus.confirmed:
        return 'Bekräftad';
      case OrderStatus.processing:
        return 'Behandlas';
      case OrderStatus.shipped:
        return 'Skickad';
      case OrderStatus.delivered:
        return 'Levererad';
      case OrderStatus.cancelled:
        return 'Avbruten';
    }
  }
}

@JsonSerializable()
class OrderItem {
  final String productId;
  final String productName;
  final int quantity;
  final double price;
  
  OrderItem({
    required this.productId,
    required this.productName,
    required this.quantity,
    required this.price,
  });
  
  factory OrderItem.fromJson(Map<String, dynamic> json) => _$OrderItemFromJson(json);
  Map<String, dynamic> toJson() => _$OrderItemToJson(this);
  
  // Helper method to calculate item total
  double get itemTotal => price * quantity;
}

enum OrderStatus {
  @JsonValue('pending')
  pending,
  @JsonValue('confirmed')
  confirmed,
  @JsonValue('processing')
  processing,
  @JsonValue('shipped')
  shipped,
  @JsonValue('delivered')
  delivered,
  @JsonValue('cancelled')
  cancelled,
}
