import 'package:finance/features/physical_assets/domain/repositories/precious_metals_trade_repository.dart';
import 'package:finance/features/settings/domain/repositories/import_export_data_repository.dart';
import 'package:finance/shared/domain/repositories/local_storage_repository.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/import_export_data_service.g.dart';

@riverpod
ImportExportDataService importExportDataService(Ref ref) {
  return ImportExportDataService(ref);
}

class ImportExportDataService {
  ImportExportDataService(this._ref);

  final Ref _ref;

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
