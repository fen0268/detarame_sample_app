// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PurchaseDataImpl _$$PurchaseDataImplFromJson(Map<String, dynamic> json) =>
    _$PurchaseDataImpl(
      merchantPaymentId: json['merchantPaymentId'] as String,
      productName: json['productName'] as String,
      productEnName: json['productEnName'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$PurchaseDataImplToJson(_$PurchaseDataImpl instance) =>
    <String, dynamic>{
      'merchantPaymentId': instance.merchantPaymentId,
      'productName': instance.productName,
      'productEnName': instance.productEnName,
      'description': instance.description,
      'price': instance.price,
    };
