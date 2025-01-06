import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:finance/features/assets/domain/models/asset_type_model.dart';
import 'package:finance/features/assets/domain/models/finary_assets_model.dart';
import 'package:finance/features/assets/domain/models/physical_assets_model.dart';
import 'package:finance/features/assets/domain/models/precious_metal_asset_model.dart';
import 'package:finance/features/assets/domain/repositories/assets_repository.dart';
import 'package:finance/features/authentication/domain/repositories/authentication_repository.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/domain/repositories/precious_metals_trade_repository.dart';
import 'package:finance/shared/domain/repositories/local_storage_repository.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/assets_service.g.dart';

@riverpod
AssetsService assetsService(Ref ref) {
  return AssetsService(ref);
}

class AssetsService {
  AssetsService(this._ref);

  final Ref _ref;

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

  /// Physical Assets
  Future<PhysicalAssetsModel> _getPhysicalAssets() async {
    final assets = await _assetsRepository.getPhysicalAssets(
      goldTradePrice: (await _preciousMetalsTradeRepository.getGoldTradeValue()).grams,
      silverTradePrice: (await _preciousMetalsTradeRepository.getSilverTradeValue()).grams,
    );

    return assets;
  }

  Future<PhysicalAssetsModel> getPhysicalAssets() async {
    return _appCache.physicalAssets ??= await _getPhysicalAssets();
  }

  Future<PhysicalAssetsModel> refreshPhysicalAssets() async {
    final assets = await _getPhysicalAssets();
    _appCacheController.refreshPhysicalAssets(assets);
    return assets;
  }

  Future<void> addCoinPhysicalAsset({required String coinId, required int possessed}) async {
    await _assetsRepository.addCoinPhysicalAsset(coinId: coinId, possessed: possessed);
    await refreshPhysicalAssets();
  }

  Future<void> updateCoinPhysicalAsset({required String coinId, required int possessed}) async {
    await _assetsRepository.updateCoinPhysicalAsset(coinId: coinId, possessed: possessed);
    await refreshPhysicalAssets();
  }

  Future<void> addCashPhysicalAsset({
    required String name,
    required int possessed,
    required int unitValue,
  }) async {
    await _assetsRepository.addCashPhysicalAsset(name: name, possessed: possessed, unitValue: unitValue);
    await refreshPhysicalAssets();
  }

  Future<void> updateCashPhysicalAsset({
    required String id,
    required String name,
    required int possessed,
    required int unitValue,
  }) async {
    await _assetsRepository.updateCashPhysicalAsset(id: id, name: name, possessed: possessed, unitValue: unitValue);
    await refreshPhysicalAssets();
  }

  Future<void> addRawPhysicalAsset({
    required String name,
    required int possessed,
    required double unitWeight,
    required PreciousMetalTypeModel metalType,
    required double purity,
  }) async {
    await _assetsRepository.addRawPhysicalAsset(
      name: name,
      possessed: possessed,
      unitWeight: unitWeight,
      metalType: metalType,
      purity: purity,
    );
    await refreshPhysicalAssets();
  }

  Future<void> updateRawPhysicalAsset({
    required String id,
    required String name,
    required int possessed,
    required double unitWeight,
    required PreciousMetalTypeModel metalType,
    required double purity,
  }) async {
    await _assetsRepository.updateRawPhysicalAsset(
      id: id,
      name: name,
      possessed: possessed,
      unitWeight: unitWeight,
      metalType: metalType,
      purity: purity,
    );
    await refreshPhysicalAssets();
  }

  Future<void> removePhysicalAsset(AssetModel asset) async {
    final _ = switch (asset.type) {
      AssetTypeModel.cash => await _assetsRepository.removeCashPhysicalAsset(id: asset.id),
      AssetTypeModel.preciousMetal => (asset as PreciousMetalAssetModel).numistaId.isEmpty
          ? await _assetsRepository.removeRawPhysicalAsset(id: asset.id)
          : await _assetsRepository.removeCoinPhysicalAsset(id: asset.id),
      _ => throw UnimplementedError('This should not happen'),
    };
    await refreshPhysicalAssets();
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
