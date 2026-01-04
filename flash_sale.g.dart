// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flash_sale.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlashSale _$FlashSaleFromJson(Map<String, dynamic> json) => FlashSale(
      id: json['id'] as String,
      name: json['name'] as String,
      productIds: (json['productIds'] as List<dynamic>).map((e) => e as String).toList(),
      discount: (json['discount'] as num).toDouble(),
      startTime: DateTime.parse(json['startTime'] as String),
      endTime: DateTime.parse(json['endTime'] as String),
      isActive: json['isActive'] as bool,
    );

Map<String, dynamic> _$FlashSaleToJson(FlashSale instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'productIds': instance.productIds,
      'discount': instance.discount,
      'startTime': instance.startTime.toIso8601String(),
      'endTime': instance.endTime.toIso8601String(),
      'isActive': instance.isActive,
    };
