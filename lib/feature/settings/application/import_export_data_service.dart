import 'package:finance/feature/settings/domain/repository/import_export_data_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/import_export_data_service.g.dart';

@riverpod
ImportExportDataService importExportDataService(ImportExportDataServiceRef ref) {
  return ImportExportDataService(
    ref.read(importExportDataRepositoryProvider),
    ref.read(localStorageRepositoryProvider),
    ref.read(appCacheControllerProvider.notifier),
  );
}

class ImportExportDataService {
  ImportExportDataService(
    this._importExportDataRepository,
    this._localStorageRepository,
    this._cacheController,
  );

  final ImportExportDataRepository _importExportDataRepository;
  final LocalStorageRepository _localStorageRepository;
  final AppCacheController _cacheController;

  Future<void> export() async {
    await _importExportDataRepository.export();
  }

  Future<void> import() async {
    final cache = await _importExportDataRepository.import();

    if (cache == null) {
      return;
    }

    // Store the data again
    await _localStorageRepository.saveInvestmentStocksSymbols(cache.investmentStocksSymbols);
    await _localStorageRepository.saveSessionId(cache.finarySessionId);

    _cacheController.importData(cache);
  }
}
