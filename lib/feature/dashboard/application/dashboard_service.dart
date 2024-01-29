import 'package:finance/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:finance/feature/dashboard/domain/model/assets_model.dart';
import 'package:finance/feature/dashboard/domain/repository/assets_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/dashboard_service.g.dart';

@riverpod
DashboardService dashboardService(DashboardServiceRef ref) {
  print('build service');
  return DashboardService(
    ref.read(assetsRepositoryProvider),
    ref.read(finaryAuthenticationRepositoryProvider),
    ref.read(appCacheControllerProvider),
  );
}

class DashboardService {
  DashboardService(
    this._assetsRepository,
    this._finaryAuthenticationRepository,
    this._appCache,
  );

  final AssetsRepository _assetsRepository;
  final FinaryAuthenticationRepository _finaryAuthenticationRepository;
  final AppCache _appCache;

  Future<AssetsModel> _getAssets() async {
    print('sessionId Service : ${_appCache.finarySessionId}');
    final token = await _finaryAuthenticationRepository.refreshToken(_appCache.finarySessionId);
    print('token Service : $token');
    final assets = await _assetsRepository.getAssets(token);
    print('assets Service : $assets');

    return assets;
  }

  Future<AssetsModel> getAssets() async {
    return _appCache.assets ??= await _getAssets();
  }

  Future<AssetsModel> refreshAssets() async {
    return _appCache.assets = await _getAssets();
  }
}
