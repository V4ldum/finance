import 'package:finance/shared/domain/repositories/local_storage_repository.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_service.g.dart';

@riverpod
PreciousMetalsService preciousMetalsService(Ref ref) {
  return PreciousMetalsService(ref);
}

class PreciousMetalsService {
  PreciousMetalsService(this._ref);

  final Ref _ref;

  LocalStorageRepository get _localStorageRepository => _ref.read(localStorageRepositoryProvider);
  AppCacheController get _appCacheController => _ref.read(appCacheControllerProvider.notifier);

  Future<void> saveCustomBackApiKey(String key) async {
    await _localStorageRepository.saveCustomBackApiKey(key);
    _appCacheController.refreshCustomBackApiKey(key: key);
  }
}
