// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchaseData _$PurchaseDataFromJson(Map<String, dynamic> json) {
  return _PurchaseData.fromJson(json);
}

/// @nodoc
mixin _$PurchaseData {
  String get merchantPaymentId => throw _privateConstructorUsedError;
  String get productName => throw _privateConstructorUsedError;
  String get productEnName => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PurchaseDataCopyWith<PurchaseData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseDataCopyWith<$Res> {
  factory $PurchaseDataCopyWith(
          PurchaseData value, $Res Function(PurchaseData) then) =
      _$PurchaseDataCopyWithImpl<$Res, PurchaseData>;
  @useResult
  $Res call(
      {String merchantPaymentId,
      String productName,
      String productEnName,
      String description,
      double price});
}

/// @nodoc
class _$PurchaseDataCopyWithImpl<$Res, $Val extends PurchaseData>
    implements $PurchaseDataCopyWith<$Res> {
  _$PurchaseDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantPaymentId = null,
    Object? productName = null,
    Object? productEnName = null,
    Object? description = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      merchantPaymentId: null == merchantPaymentId
          ? _value.merchantPaymentId
          : merchantPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productEnName: null == productEnName
          ? _value.productEnName
          : productEnName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseDataImplCopyWith<$Res>
    implements $PurchaseDataCopyWith<$Res> {
  factory _$$PurchaseDataImplCopyWith(
          _$PurchaseDataImpl value, $Res Function(_$PurchaseDataImpl) then) =
      __$$PurchaseDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String merchantPaymentId,
      String productName,
      String productEnName,
      String description,
      double price});
}

/// @nodoc
class __$$PurchaseDataImplCopyWithImpl<$Res>
    extends _$PurchaseDataCopyWithImpl<$Res, _$PurchaseDataImpl>
    implements _$$PurchaseDataImplCopyWith<$Res> {
  __$$PurchaseDataImplCopyWithImpl(
      _$PurchaseDataImpl _value, $Res Function(_$PurchaseDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? merchantPaymentId = null,
    Object? productName = null,
    Object? productEnName = null,
    Object? description = null,
    Object? price = null,
  }) {
    return _then(_$PurchaseDataImpl(
      merchantPaymentId: null == merchantPaymentId
          ? _value.merchantPaymentId
          : merchantPaymentId // ignore: cast_nullable_to_non_nullable
              as String,
      productName: null == productName
          ? _value.productName
          : productName // ignore: cast_nullable_to_non_nullable
              as String,
      productEnName: null == productEnName
          ? _value.productEnName
          : productEnName // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseDataImpl implements _PurchaseData {
  const _$PurchaseDataImpl(
      {required this.merchantPaymentId,
      required this.productName,
      required this.productEnName,
      required this.description,
      required this.price});

  factory _$PurchaseDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseDataImplFromJson(json);

  @override
  final String merchantPaymentId;
  @override
  final String productName;
  @override
  final String productEnName;
  @override
  final String description;
  @override
  final double price;

  @override
  String toString() {
    return 'PurchaseData(merchantPaymentId: $merchantPaymentId, productName: $productName, productEnName: $productEnName, description: $description, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseDataImpl &&
            (identical(other.merchantPaymentId, merchantPaymentId) ||
                other.merchantPaymentId == merchantPaymentId) &&
            (identical(other.productName, productName) ||
                other.productName == productName) &&
            (identical(other.productEnName, productEnName) ||
                other.productEnName == productEnName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, merchantPaymentId, productName,
      productEnName, description, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseDataImplCopyWith<_$PurchaseDataImpl> get copyWith =>
      __$$PurchaseDataImplCopyWithImpl<_$PurchaseDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseDataImplToJson(
      this,
    );
  }
}

abstract class _PurchaseData implements PurchaseData {
  const factory _PurchaseData(
      {required final String merchantPaymentId,
      required final String productName,
      required final String productEnName,
      required final String description,
      required final double price}) = _$PurchaseDataImpl;

  factory _PurchaseData.fromJson(Map<String, dynamic> json) =
      _$PurchaseDataImpl.fromJson;

  @override
  String get merchantPaymentId;
  @override
  String get productName;
  @override
  String get productEnName;
  @override
  String get description;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$PurchaseDataImplCopyWith<_$PurchaseDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
