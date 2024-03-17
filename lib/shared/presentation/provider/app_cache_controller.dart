// ignore_for_file: avoid_final_parameters
import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/finary_assets_model.dart';
import 'package:finance/feature/authentication/application/finary_auth_service.dart';
import 'package:finance/feature/settings/presentation/page/physical_assets_settings_page.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/app_cache_controller.freezed.dart';
part '_generated/app_cache_controller.g.dart';

@unfreezed
sealed class AppCache with _$AppCache {
  factory AppCache({
    @JsonKey(includeFromJson: false, includeToJson: false) @Default('') final String applicationDirectory,
    @Default('') final String finarySessionId,
    @Default('') final String numistaApiKey,
    @Default(PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio) final double gsrGoldFavorableRatio,
    @Default(PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio) final double gsrSilverFavorableRatio,
    @Default(PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio) final double spgrSPFavorableRatio,
    @Default(PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio) final double spgrGoldFavorableRatio,
    @Default([]) final List<String> investmentStocksSymbols,
    @JsonKey(includeFromJson: false, includeToJson: false) FinaryAssetsModel? finaryAssets,
    @JsonKey(includeFromJson: false, includeToJson: false) @Default([]) List<AssetModel> localAssets,
  }) = _AppCache;

  factory AppCache.fromJson(JsonResponse json) => _$AppCacheFromJson(json);
}

@Riverpod(keepAlive: true)
class AppCacheController extends _$AppCacheController {
  @override
  AppCache build() => AppCache();

  Future<void> init() async {
    /// Authentication
    // Getting app's directory (cookies for authentication, import/export
    state = state.copyWith(
      applicationDirectory: (await path_provider.getApplicationDocumentsDirectory()).path,
    );

    // Finary authentication
    await ref.read(finaryAuthServiceProvider).getSessionId();
    if (state.finarySessionId.isEmpty) {
      await ref.read(finaryAuthServiceProvider).clearSession();
    }

    // Numista Api Key
    state = state.copyWith(
      numistaApiKey: await ref.read(localStorageRepositoryProvider).readNumistaApiKey() ?? '',
    );

    /// Assets
    // Stocks flagged as investments
    state = state.copyWith(
      investmentStocksSymbols: await ref.read(assetsServiceProvider).getStocksSymbols(),
    );

    // Assets
    state = state.copyWith(
      gsrGoldFavorableRatio: await ref.read(localStorageRepositoryProvider).getGSRGoldFavorableRatio(),
      gsrSilverFavorableRatio: await ref.read(localStorageRepositoryProvider).getGSRSilverFavorableRatio(),
      spgrSPFavorableRatio: await ref.read(localStorageRepositoryProvider).getSPGRSPFavorableRatio(),
      spgrGoldFavorableRatio: await ref.read(localStorageRepositoryProvider).getSPGRGoldFavorableRatio(),
      finaryAssets: state.finarySessionId.isNotEmpty ? await ref.read(assetsServiceProvider).getFinaryAssets() : null,
      localAssets: await ref.read(assetsServiceProvider).getLocalAssets(),
    );
  }

  void refreshSessionId({required String? sessionId}) {
    state = state.copyWith(
      finarySessionId: sessionId ?? '',
    );
  }

  void refreshApiKey({required String? key}) {
    state = state.copyWith(
      numistaApiKey: key ?? '',
    );
  }

  void refreshStocksSymbol(List<String> stocksSymbols) {
    state = state.copyWith(
      investmentStocksSymbols: stocksSymbols,
    );
  }

  void refreshLocalAssets(List<AssetModel> assets) {
    state = state.copyWith(
      localAssets: assets,
    );
  }

  void refreshRatios({
    double? gsrGoldFavorableRatio,
    double? gsrSilverFavorableRatio,
    double? spgrSPFavorableRatio,
    double? spgrGoldFavorableRatio,
  }) {
    state = state.copyWith(
      gsrGoldFavorableRatio: gsrGoldFavorableRatio ?? state.gsrGoldFavorableRatio,
      gsrSilverFavorableRatio: gsrSilverFavorableRatio ?? state.gsrSilverFavorableRatio,
      spgrSPFavorableRatio: spgrSPFavorableRatio ?? state.spgrSPFavorableRatio,
      spgrGoldFavorableRatio: spgrGoldFavorableRatio ?? state.spgrGoldFavorableRatio,
    );
  }

  void importData(AppCache importedCache) {
    if (importedCache == state) {
      return;
    }

    state = state.copyWith(
      investmentStocksSymbols: importedCache.investmentStocksSymbols,
      finarySessionId: importedCache.finarySessionId,
      gsrGoldFavorableRatio: importedCache.gsrGoldFavorableRatio,
      gsrSilverFavorableRatio: importedCache.gsrSilverFavorableRatio,
      spgrSPFavorableRatio: importedCache.spgrSPFavorableRatio,
      spgrGoldFavorableRatio: importedCache.spgrGoldFavorableRatio,
      numistaApiKey: importedCache.numistaApiKey,
      localAssets: importedCache.localAssets,
    );
  }
}
