// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'merchandise_service.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$streamFetchMerchandiseHash() =>
    r'6b2e350e4821bfdf7ce1ff06a61c25c2a0d52833';

/// See also [streamFetchMerchandise].
@ProviderFor(streamFetchMerchandise)
final streamFetchMerchandiseProvider =
    AutoDisposeStreamProvider<List<ReadMerchandise>>.internal(
  streamFetchMerchandise,
  name: r'streamFetchMerchandiseProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$streamFetchMerchandiseHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef StreamFetchMerchandiseRef
    = AutoDisposeStreamProviderRef<List<ReadMerchandise>>;
String _$merchandiseListNotifierHash() =>
    r'2975e305388ed864e5f6741ce3ed88ba9d297d3a';

/// 管理者操作
///
/// Copied from [MerchandiseListNotifier].
@ProviderFor(MerchandiseListNotifier)
final merchandiseListNotifierProvider = AutoDisposeAsyncNotifierProvider<
    MerchandiseListNotifier, List<ReadMerchandise>>.internal(
  MerchandiseListNotifier.new,
  name: r'merchandiseListNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$merchandiseListNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MerchandiseListNotifier
    = AutoDisposeAsyncNotifier<List<ReadMerchandise>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
