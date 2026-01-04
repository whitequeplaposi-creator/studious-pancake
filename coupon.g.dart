// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coupon _$CouponFromJson(Map<String, dynamic> json) => Coupon(
      id: json['id'] as String,
      code: json['code'] as String,
      discount: (json['discount'] as num).toDouble(),
      discountType: $enumDecode(_$CouponDiscountTypeEnumMap, json['discountType']),
      minPurchase: (json['minPurchase'] as num).toDouble(),
      maxDiscount: (json['maxDiscount'] as num?)?.toDouble(),
      validFrom: DateTime.parse(json['validFrom'] as String),
      validUntil: DateTime.parse(json['validUntil'] as String),
      usageLimit: json['usageLimit'] as int,
      usedCount: json['usedCount'] as int,
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$CouponToJson(Coupon instance) {
  final val = <String, dynamic>{
    'id': instance.id,
    'code': instance.code,
    'discount': instance.discount,
    'discountType': _$CouponDiscountTypeEnumMap[instance.discountType]!,
    'minPurchase': instance.minPurchase,
  };

  if (instance.maxDiscount != null) {
    val['maxDiscount'] = instance.maxDiscount;
  }

  val['validFrom'] = instance.validFrom.toIso8601String();
  val['validUntil'] = instance.validUntil.toIso8601String();
  val['usageLimit'] = instance.usageLimit;
  val['usedCount'] = instance.usedCount;
  val['isActive'] = instance.isActive;

  return val;
}

const _$CouponDiscountTypeEnumMap = {
  CouponDiscountType.percentage: 'percentage',
  CouponDiscountType.fixed: 'fixed',
};

T $enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  return enumValues.entries
      .singleWhere((e) => e.value == source)
      .key;
}
