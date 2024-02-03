// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../app_cache_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppCacheImpl _$$AppCacheImplFromJson(Map<String, dynamic> json) =>
    _$AppCacheImpl(
      finarySessionId: json['finarySessionId'] as String? ?? '',
      investmentStocksSymbols:
          (json['investmentStocksSymbols'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$AppCacheImplToJson(_$AppCacheImpl instance) =>
    <String, dynamic>{
      'finarySessionId': instance.finarySessionId,
      'investmentStocksSymbols': instance.investmentStocksSymbols,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appCacheControllerHash() =>
    r'7ec9a2a1c5d8e86913ade4a137a3ac3e7c8f76e6';

/// See also [AppCacheController].
@ProviderFor(AppCacheController)
final appCacheControllerProvider =
    NotifierProvider<AppCacheController, AppCache>.internal(
  AppCacheController.new,
  name: r'appCacheControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$appCacheControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$AppCacheController = Notifier<AppCache>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
