import 'package:finance/feature/physical_assets/domain/repository/precious_metals_trade_repository.dart';
import 'package:finance/feature/settings/domain/repository/import_export_data_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/import_export_data_service.g.dart';

@riverpod
ImportExportDataService importExportDataService(ImportExportDataServiceRef ref) {
  return ImportExportDataService(ref);
}

class ImportExportDataService {
  ImportExportDataService(this._ref);

  final ImportExportDataServiceRef _ref;

  ImportExportDataRepository get _importExportDataRepository => _ref.read(importExportDataRepositoryProvider);
  LocalStorageRepository get _localStorageRepository => _ref.read(localStorageRepositoryProvider);
  PreciousMetalsTradeRepository get _preciousMetalsTradeRepository => _ref.read(preciousMetalsTradeRepositoryProvider);
  AppCacheController get _cacheController => _ref.read(appCacheControllerProvider.notifier);

  Future<void> export() async {
    await _importExportDataRepository.export();
  }

  Future<void> import() async {
    final cache = await _importExportDataRepository.import(
      goldTradePriceFuture: _preciousMetalsTradeRepository.getGoldTradeValue,
      silverTradePriceFuture: _preciousMetalsTradeRepository.getSilverTradeValue,
    );

    if (cache == null) {
      return;
    }

    // Store the data again
    await _localStorageRepository.saveInvestmentStocksSymbols(cache.investmentStocksSymbols);
    await _localStorageRepository.saveSessionId(cache.finarySessionId);
    await _localStorageRepository.saveCustomBackApiKey(cache.customBackApiKey);

    _cacheController.importData(cache);
  }
}
