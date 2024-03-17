// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../precious_metal_estimated_value_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$preciousMetalEstimatedValueControllerHash() =>
    r'fa79af8bee10da7cdaa50d97254884597988feaf';

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

abstract class _$PreciousMetalEstimatedValueController
    extends BuildlessAutoDisposeAsyncNotifier<double> {
  late final PreciousMetalTypeModel? metal;
  late final double purity;
  late final double weight;

  FutureOr<double> build(
    PreciousMetalTypeModel? metal,
    double purity,
    double weight,
  );
}

/// See also [PreciousMetalEstimatedValueController].
@ProviderFor(PreciousMetalEstimatedValueController)
const preciousMetalEstimatedValueControllerProvider =
    PreciousMetalEstimatedValueControllerFamily();

/// See also [PreciousMetalEstimatedValueController].
class PreciousMetalEstimatedValueControllerFamily
    extends Family<AsyncValue<double>> {
  /// See also [PreciousMetalEstimatedValueController].
  const PreciousMetalEstimatedValueControllerFamily();

  /// See also [PreciousMetalEstimatedValueController].
  PreciousMetalEstimatedValueControllerProvider call(
    PreciousMetalTypeModel? metal,
    double purity,
    double weight,
  ) {
    return PreciousMetalEstimatedValueControllerProvider(
      metal,
      purity,
      weight,
    );
  }

  @override
  PreciousMetalEstimatedValueControllerProvider getProviderOverride(
    covariant PreciousMetalEstimatedValueControllerProvider provider,
  ) {
    return call(
      provider.metal,
      provider.purity,
      provider.weight,
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
  String? get name => r'preciousMetalEstimatedValueControllerProvider';
}

/// See also [PreciousMetalEstimatedValueController].
class PreciousMetalEstimatedValueControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        PreciousMetalEstimatedValueController, double> {
  /// See also [PreciousMetalEstimatedValueController].
  PreciousMetalEstimatedValueControllerProvider(
    PreciousMetalTypeModel? metal,
    double purity,
    double weight,
  ) : this._internal(
          () => PreciousMetalEstimatedValueController()
            ..metal = metal
            ..purity = purity
            ..weight = weight,
          from: preciousMetalEstimatedValueControllerProvider,
          name: r'preciousMetalEstimatedValueControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$preciousMetalEstimatedValueControllerHash,
          dependencies:
              PreciousMetalEstimatedValueControllerFamily._dependencies,
          allTransitiveDependencies: PreciousMetalEstimatedValueControllerFamily
              ._allTransitiveDependencies,
          metal: metal,
          purity: purity,
          weight: weight,
        );

  PreciousMetalEstimatedValueControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.metal,
    required this.purity,
    required this.weight,
  }) : super.internal();

  final PreciousMetalTypeModel? metal;
  final double purity;
  final double weight;

  @override
  FutureOr<double> runNotifierBuild(
    covariant PreciousMetalEstimatedValueController notifier,
  ) {
    return notifier.build(
      metal,
      purity,
      weight,
    );
  }

  @override
  Override overrideWith(
      PreciousMetalEstimatedValueController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PreciousMetalEstimatedValueControllerProvider._internal(
        () => create()
          ..metal = metal
          ..purity = purity
          ..weight = weight,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        metal: metal,
        purity: purity,
        weight: weight,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PreciousMetalEstimatedValueController,
      double> createElement() {
    return _PreciousMetalEstimatedValueControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PreciousMetalEstimatedValueControllerProvider &&
        other.metal == metal &&
        other.purity == purity &&
        other.weight == weight;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, metal.hashCode);
    hash = _SystemHash.combine(hash, purity.hashCode);
    hash = _SystemHash.combine(hash, weight.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PreciousMetalEstimatedValueControllerRef
    on AutoDisposeAsyncNotifierProviderRef<double> {
  /// The parameter `metal` of this provider.
  PreciousMetalTypeModel? get metal;

  /// The parameter `purity` of this provider.
  double get purity;

  /// The parameter `weight` of this provider.
  double get weight;
}

class _PreciousMetalEstimatedValueControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PreciousMetalEstimatedValueController,
        double> with PreciousMetalEstimatedValueControllerRef {
  _PreciousMetalEstimatedValueControllerProviderElement(super.provider);

  @override
  PreciousMetalTypeModel? get metal =>
      (origin as PreciousMetalEstimatedValueControllerProvider).metal;
  @override
  double get purity =>
      (origin as PreciousMetalEstimatedValueControllerProvider).purity;
  @override
  double get weight =>
      (origin as PreciousMetalEstimatedValueControllerProvider).weight;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
