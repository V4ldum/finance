import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_service.g.dart';

@riverpod
PreciousMetalsService preciousMetalsService(PreciousMetalsServiceRef ref) {
  return PreciousMetalsService(ref);
}

class PreciousMetalsService {
  PreciousMetalsService(this._ref);

  final PreciousMetalsServiceRef _ref;

  LocalStorageRepository get _localStorageRepository => _ref.read(localStorageRepositoryProvider);
  AppCacheController get _appCacheController => _ref.read(appCacheControllerProvider.notifier);

  Future<void> saveNumistaApiKey(String key) async {
    await _localStorageRepository.saveNumistaApiKey(key);
    _appCacheController.refreshApiKey(key: key);
  }
}
