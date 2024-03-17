import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/finary_assets_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';
import 'package:finance/feature/assets/domain/repository/assets_repository.dart';
import 'package:finance/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:finance/feature/physical_assets/domain/repository/precious_metals_trade_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/assets_service.g.dart';

@riverpod
AssetsService assetsService(AssetsServiceRef ref) {
  return AssetsService(ref);
}

class AssetsService {
  AssetsService(this._ref);

  final AssetsServiceRef _ref;

  AssetsRepository get _assetsRepository => _ref.read(assetsRepositoryProvider);
  FinaryAuthenticationRepository get _finaryAuthenticationRepository =>
      _ref.read(finaryAuthenticationRepositoryProvider);
  LocalStorageRepository get _localStorageRepository => _ref.read(localStorageRepositoryProvider);
  PreciousMetalsTradeRepository get _preciousMetalsTradeRepository => _ref.read(preciousMetalsTradeRepositoryProvider);
  AppCache get _appCache => _ref.read(appCacheControllerProvider);
  AppCacheController get _appCacheController => _ref.read(appCacheControllerProvider.notifier);

  /// Finary Assets
  Future<FinaryAssetsModel> _getFinaryAssets() async {
    final token = await _finaryAuthenticationRepository.refreshToken(_appCache.finarySessionId);
    final assets = await _assetsRepository.getFinaryAssets(token);

    return assets;
  }

  Future<FinaryAssetsModel> getFinaryAssets() async {
    return _appCache.finaryAssets ??= await _getFinaryAssets();
  }

  Future<FinaryAssetsModel> refreshFinaryAssets() async {
    return _appCache.finaryAssets = await _getFinaryAssets();
  }

  /// Local Assets
  Future<List<AssetModel>> getLocalAssets() async {
    return _appCache.localAssets = await _localStorageRepository.readLocalAssets(
      goldTradePrice: (await _preciousMetalsTradeRepository.getGoldTradePrice())?.grams ?? 0,
      silverTradePrice: (await _preciousMetalsTradeRepository.getSilverTradePrice())?.grams ?? 0,
    );
  }

  Future<void> _refreshLocalAssets(List<AssetModel> assets) async {
    _appCacheController.refreshLocalAssets(assets);
  }

  Future<void> addLocalAsset(AssetModel asset) async {
    final tmp = _appCache.localAssets;
    final items = asset is PreciousMetalAssetModel && asset.numistaId.isNotEmpty
        ? _appCache.localAssets.where((e) => e is PreciousMetalAssetModel && e.numistaId == asset.numistaId)
        : _appCache.localAssets.where((e) => e.name == asset.name);

    if (items.isNotEmpty) {
      return;
    }

    await _localStorageRepository.saveLocalAssets(tmp..add(asset));
    return _refreshLocalAssets(tmp);
  }

  Future<void> removeLocalAsset(AssetModel asset) async {
    final tmp = _appCache.localAssets;
    final items = asset is PreciousMetalAssetModel && asset.numistaId.isNotEmpty
        ? _appCache.localAssets.where((e) => e is PreciousMetalAssetModel && e.numistaId == asset.numistaId)
        : _appCache.localAssets.where((e) => e.name == asset.name);

    if (items.isEmpty) {
      return;
    }

    await _localStorageRepository.saveLocalAssets(tmp..removeWhere((e) => e.name == asset.name));
    return _refreshLocalAssets(tmp);
  }

  Future<void> updateLocalAsset(AssetModel oldAsset, AssetModel newAsset) async {
    final items = newAsset is PreciousMetalAssetModel && newAsset.numistaId.isNotEmpty
        ? _appCache.localAssets.where((e) => e is PreciousMetalAssetModel && e.numistaId == newAsset.numistaId)
        : _appCache.localAssets.where((e) => e.name == oldAsset.name);

    if (items.isEmpty) {
      debugPrint('No element found when at least one should');
      return;
    }

    await removeLocalAsset(items.first);
    await addLocalAsset(newAsset);
  }

  /// Stocks Symbols
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
