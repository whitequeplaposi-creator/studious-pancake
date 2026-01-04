import 'package:json_annotation/json_annotation.dart';

part 'coupon.g.dart';

@JsonSerializable()
class Coupon {
  final String id;
  final String code;
  final double discount;
  final CouponDiscountType discountType;
  final double minPurchase;
  final double? maxDiscount;
  final DateTime validFrom;
  final DateTime validUntil;
  final int usageLimit;
  final int usedCount;
  final bool isActive;
  
  Coupon({
    required this.id,
    required this.code,
    required this.discount,
    required this.discountType,
    required this.minPurchase,
    this.maxDiscount,
    required this.validFrom,
    required this.validUntil,
    required this.usageLimit,
    required this.usedCount,
    required this.isActive,
  });
  
  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);
  Map<String, dynamic> toJson() => _$CouponToJson(this);
  
  // Helper method to check if coupon is valid
  bool get isValid {
    final now = DateTime.now();
    return isActive &&
           now.isAfter(validFrom) &&
           now.isBefore(validUntil) &&
           usedCount < usageLimit;
  }
  
  // Helper method to check if coupon can be used for a purchase amount
  bool canBeUsedFor(double amount) {
    return isValid && amount >= minPurchase;
  }
  
  // Helper method to calculate discount amount
  double calculateDiscount(double amount) {
    if (!canBeUsedFor(amount)) {
      return 0;
    }
    
    double discountAmount;
    if (discountType == CouponDiscountType.percentage) {
      discountAmount = amount * (discount / 100);
      if (maxDiscount != null && discountAmount > maxDiscount!) {
        discountAmount = maxDiscount!;
      }
    } else {
      discountAmount = discount;
    }
    
    return discountAmount;
  }
  
  // Helper method to get discount display text
  String get discountText {
    if (discountType == CouponDiscountType.percentage) {
      return '${discount.toInt()}%';
    } else {
      return '${discount.toStringAsFixed(0)} kr';
    }
  }
  
  // Helper method to get remaining uses
  int get remainingUses => usageLimit - usedCount;
}

enum CouponDiscountType {
  @JsonValue('percentage')
  percentage,
  @JsonValue('fixed')
  fixed,
}
