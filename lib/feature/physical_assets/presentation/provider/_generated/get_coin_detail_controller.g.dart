// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../get_coin_detail_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCoinDetailControllerHash() =>
    r'8f90e213af0e760a30406b35d33a5c2fc6f08744';

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
    extends BuildlessAutoDisposeAsyncNotifier<CoinDataModel> {
  late final String coinId;

  FutureOr<CoinDataModel> build(
    String coinId,
  );
}

/// See also [GetCoinDetailController].
@ProviderFor(GetCoinDetailController)
const getCoinDetailControllerProvider = GetCoinDetailControllerFamily();

/// See also [GetCoinDetailController].
class GetCoinDetailControllerFamily extends Family<AsyncValue<CoinDataModel>> {
  /// See also [GetCoinDetailController].
  const GetCoinDetailControllerFamily();

  /// See also [GetCoinDetailController].
  GetCoinDetailControllerProvider call(
    String coinId,
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
        CoinDataModel> {
  /// See also [GetCoinDetailController].
  GetCoinDetailControllerProvider(
    String coinId,
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

  final String coinId;

  @override
  FutureOr<CoinDataModel> runNotifierBuild(
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
  AutoDisposeAsyncNotifierProviderElement<GetCoinDetailController,
      CoinDataModel> createElement() {
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

mixin GetCoinDetailControllerRef
    on AutoDisposeAsyncNotifierProviderRef<CoinDataModel> {
  /// The parameter `coinId` of this provider.
  String get coinId;
}

class _GetCoinDetailControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<GetCoinDetailController,
        CoinDataModel> with GetCoinDetailControllerRef {
  _GetCoinDetailControllerProviderElement(super.provider);

  @override
  String get coinId => (origin as GetCoinDetailControllerProvider).coinId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
