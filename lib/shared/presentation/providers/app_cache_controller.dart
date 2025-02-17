// Silence issue with Freeze not recognizing syntax
// ignore_for_file: avoid_final_parameters
import 'package:finance/features/assets/application/assets_service.dart';
import 'package:finance/features/assets/domain/models/finary_assets_model.dart';
import 'package:finance/features/assets/domain/models/physical_assets_model.dart';
import 'package:finance/features/authentication/application/finary_auth_service.dart';
import 'package:finance/features/settings/presentation/pages/physical_assets_settings_page.dart';
import 'package:finance/shared/domain/repositories/local_storage_repository.dart';
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
    @Default('') final String customBackApiKey,
    @Default(PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio) final double gsrGoldFavorableRatio,
    @Default(PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio) final double gsrSilverFavorableRatio,
    @Default(PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio) final double spgrSPFavorableRatio,
    @Default(PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio) final double spgrGoldFavorableRatio,
    @Default([]) final List<String> investmentStocksSymbols,
    @JsonKey(includeFromJson: false, includeToJson: false) FinaryAssetsModel? finaryAssets,
    @JsonKey(includeFromJson: false, includeToJson: false) PhysicalAssetsModel? physicalAssets,
  }) = _AppCache;

  factory AppCache.fromJson(JsonMapResponse json) => _$AppCacheFromJson(json);
}

@Riverpod(keepAlive: true)
class AppCacheController extends _$AppCacheController {
  @override
  AppCache build() => AppCache();

  Future<void> init() async {
    /// Authentication
    // Getting app's directory (cookies for authentication, import/export
    state = state.copyWith(applicationDirectory: (await path_provider.getApplicationDocumentsDirectory()).path);

    // Finary authentication
    await ref.read(finaryAuthServiceProvider).getSessionId();
    if (state.finarySessionId.isEmpty) {
      await ref.read(finaryAuthServiceProvider).clearSession();
    }

    /// Assets
    // Stocks flagged as investments & Custom Back Api Key
    state = state.copyWith(
      investmentStocksSymbols: await ref.read(assetsServiceProvider).getStocksSymbols(),
      customBackApiKey: await ref.read(localStorageRepositoryProvider).readCustomBackApiKey() ?? '',
    );

    // Assets
    state = state.copyWith(
      gsrGoldFavorableRatio: await ref.read(localStorageRepositoryProvider).getGSRGoldFavorableRatio(),
      gsrSilverFavorableRatio: await ref.read(localStorageRepositoryProvider).getGSRSilverFavorableRatio(),
      spgrSPFavorableRatio: await ref.read(localStorageRepositoryProvider).getSPGRSPFavorableRatio(),
      spgrGoldFavorableRatio: await ref.read(localStorageRepositoryProvider).getSPGRGoldFavorableRatio(),
      finaryAssets: state.finarySessionId.isNotEmpty ? await ref.read(assetsServiceProvider).getFinaryAssets() : null,
      physicalAssets:
          state.customBackApiKey.isNotEmpty ? await ref.read(assetsServiceProvider).getPhysicalAssets() : null,
    );
  }

  void refreshSessionId({required String? sessionId}) {
    state = state.copyWith(finarySessionId: sessionId ?? '');
  }

  void refreshCustomBackApiKey({required String? key}) {
    var tmp = state.copyWith(customBackApiKey: key ?? '');

    if (key == null || key.isEmpty) {
      tmp = tmp.copyWith(physicalAssets: null);
    }

    state = tmp;
  }

  void refreshPhysicalAssets(PhysicalAssetsModel assets) {
    state = state.copyWith(physicalAssets: assets);
  }

  void refreshStocksSymbol(List<String> stocksSymbols) {
    state = state.copyWith(investmentStocksSymbols: stocksSymbols);
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
      customBackApiKey: importedCache.customBackApiKey,
    );
  }
}
