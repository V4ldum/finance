// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../app_cache_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppCacheImpl _$$AppCacheImplFromJson(Map<String, dynamic> json) =>
    _$AppCacheImpl(
      finarySessionId: json['finarySessionId'] as String? ?? '',
      numistaApiKey: json['numistaApiKey'] as String? ?? '',
      gsrGoldFavorableRatio:
          (json['gsrGoldFavorableRatio'] as num?)?.toDouble() ??
              PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio,
      gsrSilverFavorableRatio:
          (json['gsrSilverFavorableRatio'] as num?)?.toDouble() ??
              PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio,
      spgrSPFavorableRatio:
          (json['spgrSPFavorableRatio'] as num?)?.toDouble() ??
              PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio,
      spgrGoldFavorableRatio:
          (json['spgrGoldFavorableRatio'] as num?)?.toDouble() ??
              PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio,
      investmentStocksSymbols:
          (json['investmentStocksSymbols'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
    );

Map<String, dynamic> _$$AppCacheImplToJson(_$AppCacheImpl instance) =>
    <String, dynamic>{
      'finarySessionId': instance.finarySessionId,
      'numistaApiKey': instance.numistaApiKey,
      'gsrGoldFavorableRatio': instance.gsrGoldFavorableRatio,
      'gsrSilverFavorableRatio': instance.gsrSilverFavorableRatio,
      'spgrSPFavorableRatio': instance.spgrSPFavorableRatio,
      'spgrGoldFavorableRatio': instance.spgrGoldFavorableRatio,
      'investmentStocksSymbols': instance.investmentStocksSymbols,
    };

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appCacheControllerHash() =>
    r'880efa15bd30961d362cc57274d101d5c33d2ebf';

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
