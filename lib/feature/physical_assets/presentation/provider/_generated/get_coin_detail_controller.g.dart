// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_coin_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCoinDetailControllerHash() =>
    r'071cf5920aa251258226a68c1e02ac943dbb634c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$GetCoinDetailController
    extends BuildlessAutoDisposeAsyncNotifier<CoinModel> {
  late final int coinId;

  FutureOr<CoinModel> build(
    int coinId,
  );
}

/// See also [GetCoinDetailController].
@ProviderFor(GetCoinDetailController)
const getCoinDetailControllerProvider = GetCoinDetailControllerFamily();

/// See also [GetCoinDetailController].
class GetCoinDetailControllerFamily extends Family<AsyncValue<CoinModel>> {
  /// See also [GetCoinDetailController].
  const GetCoinDetailControllerFamily();

  /// See also [GetCoinDetailController].
  GetCoinDetailControllerProvider call(
    int coinId,
  ) {
    return GetCoinDetailControllerProvider(
      coinId,
    );
  }

  @override
  GetCoinDetailControllerProvider getProviderOverride(
    covariant GetCoinDetailControllerProvider provider,
  ) {
    return call(
      provider.coinId,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getCoinDetailControllerProvider';
}

/// See also [GetCoinDetailController].
class GetCoinDetailControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<GetCoinDetailController,
        CoinModel> {
  /// See also [GetCoinDetailController].
  GetCoinDetailControllerProvider(
    int coinId,
  ) : this._internal(
          () => GetCoinDetailController()..coinId = coinId,
          from: getCoinDetailControllerProvider,
          name: r'getCoinDetailControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getCoinDetailControllerHash,
          dependencies: GetCoinDetailControllerFamily._dependencies,
          allTransitiveDependencies:
              GetCoinDetailControllerFamily._allTransitiveDependencies,
          coinId: coinId,
        );

  GetCoinDetailControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.coinId,
  }) : super.internal();

  final int coinId;

  @override
  FutureOr<CoinModel> runNotifierBuild(
    covariant GetCoinDetailController notifier,
  ) {
    return notifier.build(
      coinId,
    );
  }

  @override
  Override overrideWith(GetCoinDetailController Function() create) {
    return ProviderOverride(
      origin: this,
      override: GetCoinDetailControllerProvider._internal(
        () => create()..coinId = coinId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        coinId: coinId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<GetCoinDetailController, CoinModel>
      createElement() {
    return _GetCoinDetailControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetCoinDetailControllerProvider && other.coinId == coinId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, coinId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin GetCoinDetailControllerRef
    on AutoDisposeAsyncNotifierProviderRef<CoinModel> {
  /// The parameter `coinId` of this provider.
  int get coinId;
}

class _GetCoinDetailControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetCoinDetailController,
        CoinModel> with GetCoinDetailControllerRef {
  _GetCoinDetailControllerProviderElement(super.provider);

  @override
  int get coinId => (origin as GetCoinDetailControllerProvider).coinId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
