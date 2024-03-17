import 'package:finance/feature/settings/presentation/page/physical_assets_settings_page.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/ratio_service.g.dart';

@riverpod
RatioService ratioService(RatioServiceRef ref) {
  return RatioService(ref);
}

class RatioService {
  RatioService(this._ref);

  final RatioServiceRef _ref;

  LocalStorageRepository get _localStorageRepository => _ref.read(localStorageRepositoryProvider);
  AppCacheController get _appCacheController => _ref.read(appCacheControllerProvider.notifier);
  AppCache get _appCache => _ref.read(appCacheControllerProvider);

  Future<void> updateGSRGoldFavorableRatio(double ratio) async {
    if (ratio == _appCache.gsrGoldFavorableRatio) {
      return;
    }

    if (ratio != PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio) {
      await _localStorageRepository.saveGSRGoldFavorableRatio(ratio);
      _appCacheController.refreshRatios(gsrGoldFavorableRatio: ratio);
    } else {
      await _localStorageRepository.deleteGSRGoldFavorableRatio();
      _appCacheController.refreshRatios(gsrGoldFavorableRatio: PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio);
    }
  }

  Future<void> updateGSRSilverFavorableRatio(double ratio) async {
    if (ratio == _appCache.gsrSilverFavorableRatio) {
      return;
    }

    if (ratio != PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio) {
      await _localStorageRepository.saveGSRSilverFavorableRatio(ratio);
      _appCacheController.refreshRatios(gsrSilverFavorableRatio: ratio);
    } else {
      await _localStorageRepository.deleteGSRSilverFavorableRatio();
      _appCacheController.refreshRatios(
        gsrSilverFavorableRatio: PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio,
      );
    }
  }

  Future<void> updateSPGRSPFavorableRatio(double ratio) async {
    if (ratio == _appCache.spgrSPFavorableRatio) {
      return;
    }

    if (ratio != PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio) {
      await _localStorageRepository.saveSPGRSPFavorableRatio(ratio);
      _appCacheController.refreshRatios(spgrSPFavorableRatio: ratio);
    } else {
      await _localStorageRepository.deleteSPGRSPFavorableRatio();
      _appCacheController.refreshRatios(spgrSPFavorableRatio: PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio);
    }
  }

  Future<void> updateSPGRGoldFavorableRatio(double ratio) async {
    if (ratio == _appCache.spgrGoldFavorableRatio) {
      return;
    }

    if (ratio != PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio) {
      await _localStorageRepository.saveSPGRGoldFavorableRatio(ratio);
      _appCacheController.refreshRatios(spgrGoldFavorableRatio: ratio);
    } else {
      await _localStorageRepository.deleteSPGRGoldFavorableRatio();
      _appCacheController.refreshRatios(
        spgrGoldFavorableRatio: PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio,
      );
    }
  }
}
