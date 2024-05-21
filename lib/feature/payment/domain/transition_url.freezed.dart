// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transition_url.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransitionUrl _$TransitionUrlFromJson(Map<String, dynamic> json) {
  return _TransitionUrl.fromJson(json);
}

/// @nodoc
mixin _$TransitionUrl {
  String get transitionUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransitionUrlCopyWith<TransitionUrl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransitionUrlCopyWith<$Res> {
  factory $TransitionUrlCopyWith(
          TransitionUrl value, $Res Function(TransitionUrl) then) =
      _$TransitionUrlCopyWithImpl<$Res, TransitionUrl>;
  @useResult
  $Res call({String transitionUrl});
}

/// @nodoc
class _$TransitionUrlCopyWithImpl<$Res, $Val extends TransitionUrl>
    implements $TransitionUrlCopyWith<$Res> {
  _$TransitionUrlCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transitionUrl = null,
  }) {
    return _then(_value.copyWith(
      transitionUrl: null == transitionUrl
          ? _value.transitionUrl
          : transitionUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransitionUrlImplCopyWith<$Res>
    implements $TransitionUrlCopyWith<$Res> {
  factory _$$TransitionUrlImplCopyWith(
          _$TransitionUrlImpl value, $Res Function(_$TransitionUrlImpl) then) =
      __$$TransitionUrlImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String transitionUrl});
}

/// @nodoc
class __$$TransitionUrlImplCopyWithImpl<$Res>
    extends _$TransitionUrlCopyWithImpl<$Res, _$TransitionUrlImpl>
    implements _$$TransitionUrlImplCopyWith<$Res> {
  __$$TransitionUrlImplCopyWithImpl(
      _$TransitionUrlImpl _value, $Res Function(_$TransitionUrlImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transitionUrl = null,
  }) {
    return _then(_$TransitionUrlImpl(
      transitionUrl: null == transitionUrl
          ? _value.transitionUrl
          : transitionUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransitionUrlImpl implements _TransitionUrl {
  const _$TransitionUrlImpl({required this.transitionUrl});

  factory _$TransitionUrlImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransitionUrlImplFromJson(json);

  @override
  final String transitionUrl;

  @override
  String toString() {
    return 'TransitionUrl(transitionUrl: $transitionUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransitionUrlImpl &&
            (identical(other.transitionUrl, transitionUrl) ||
                other.transitionUrl == transitionUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transitionUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransitionUrlImplCopyWith<_$TransitionUrlImpl> get copyWith =>
      __$$TransitionUrlImplCopyWithImpl<_$TransitionUrlImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransitionUrlImplToJson(
      this,
    );
  }
}

abstract class _TransitionUrl implements TransitionUrl {
  const factory _TransitionUrl({required final String transitionUrl}) =
      _$TransitionUrlImpl;

  factory _TransitionUrl.fromJson(Map<String, dynamic> json) =
      _$TransitionUrlImpl.fromJson;

  @override
  String get transitionUrl;
  @override
  @JsonKey(ignore: true)
  _$$TransitionUrlImplCopyWith<_$TransitionUrlImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
