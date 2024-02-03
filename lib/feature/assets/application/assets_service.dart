import 'package:finance/feature/assets/domain/model/assets_model.dart';
import 'package:finance/feature/assets/domain/repository/assets_repository.dart';
import 'package:finance/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/assets_service.g.dart';

@riverpod
AssetsService assetsService(AssetsServiceRef ref) {
  return AssetsService(
    ref.read(assetsRepositoryProvider),
    ref.read(finaryAuthenticationRepositoryProvider),
    ref.read(localStorageRepositoryProvider),
    ref.read(appCacheControllerProvider),
    ref.read(appCacheControllerProvider.notifier),
  );
}

class AssetsService {
  AssetsService(
    this._assetsRepository,
    this._finaryAuthenticationRepository,
    this._localStorageRepository,
    this._appCache,
    this._appCacheController,
  );

  final AssetsRepository _assetsRepository;
  final FinaryAuthenticationRepository _finaryAuthenticationRepository;
  final LocalStorageRepository _localStorageRepository;
  final AppCache _appCache;
  final AppCacheController _appCacheController;

  Future<AssetsModel> _getAssets() async {
    final token = await _finaryAuthenticationRepository.refreshToken(_appCache.finarySessionId);
    final assets = await _assetsRepository.getAssets(token);

    return assets;
  }

  Future<AssetsModel> getAssets() async {
    return _appCache.assets ??= await _getAssets();
  }

  Future<AssetsModel> refreshAssets() async {
    return _appCache.assets = await _getAssets();
  }

  Future<List<String>> getStocksSymbols() async {
    return _localStorageRepository.readInvestmentStocksSymbols();
  }

  Future<void> _refreshStocksSymbol() async {
    _appCacheController.refreshStocksSymbol(await getStocksSymbols());
  }

  Future<void> addInvestmentStockSymbol(String stockSymbol) async {
    final stockSymbols = _appCache.investmentStocksSymbols;

    if (stockSymbols.contains(stockSymbol)) {
      return;
    }

    await _localStorageRepository.saveInvestmentStocksSymbols(
      stockSymbols
        ..add(stockSymbol)
        ..sort(),
    );
    await _refreshStocksSymbol();
  }

  Future<void> removeInvestmentStockSymbol(String stockSymbol) async {
    final stockSymbols = _appCache.investmentStocksSymbols;

    if (!stockSymbols.contains(stockSymbol)) {
      return;
    }

    await _localStorageRepository.saveInvestmentStocksSymbols(
      stockSymbols
        ..remove(stockSymbol)
        ..sort(),
    );
    await _refreshStocksSymbol();
  }

  Future<void> addInvestmentStockSymbols(List<String> stockSymbols) async {
    await _localStorageRepository.saveInvestmentStocksSymbols(stockSymbols);
    await _refreshStocksSymbol();
  }
}
