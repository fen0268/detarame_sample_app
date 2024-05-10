import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_data.freezed.dart';
part 'purchase_data.g.dart';

// functions の HTTP リクエストで使用するデータクラス
@freezed
class PurchaseData with _$PurchaseData {
  const factory PurchaseData({
    required String merchantPaymentId,
    required String productName,
    required String productEnName,
    required String description,
    required double price,
  }) = _PurchaseData;

  factory PurchaseData.fromJson(Map<String, dynamic> json) => _$PurchaseDataFromJson(json);
}
