import 'dart:convert';

import 'package:finance/feature/assets/data/dto/local_asset_dto.dart';
import 'package:finance/feature/assets/data/dto/local_precious_metal_dto.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';
import 'package:finance/feature/settings/presentation/page/physical_assets_settings_page.dart';
import 'package:finance/shared/data/data_source/local_storage_data_source.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/local_storage_repository.g.dart';

@riverpod
LocalStorageRepository localStorageRepository(LocalStorageRepositoryRef ref) {
  return LocalStorageRepository(ref);
}

class LocalStorageRepository {
  LocalStorageRepository(this._ref);

  final LocalStorageRepositoryRef _ref;

  LocalStorageDataSource get _dataSource => _ref.read(localStorageDataSourceProvider);

  static const _finarySessionIdKey = 'FINARY_SESSION_ID';
  static const _numistaApiKeyKey = 'NUMISTA_API_KEY';
  static const _customBackApiKeyKey = 'CUSTOM_BACK_API_KEY';
  static const _investmentStocksSymbolsKey = 'INVESTMENT_STOCKS_SYMBOL';
  static const _preciousMetalsLocalAssetsKey = 'PRECIOUS_METAL_LOCAL_ASSETS';
  static const _cashLocalAssetsKey = 'CASH_LOCAL_ASSETS';
  static const _gsrGoldFavorableRatioKey = 'GSR_GOLD_FAVORABLE';
  static const _gsrSilverFavorableRatioKey = 'GSR_SILVER_FAVORABLE';
  static const _spgrSPFavorableRatioKey = 'SPGR_SP500_FAVORABLE';
  static const _spgrGoldFavorableRatioKey = 'SPGR_GOLD_FAVORABLE';

  /// Finary Session Id
  Future<void> saveSessionId(String sessionId) async {
    await _dataSource.write(_finarySessionIdKey, sessionId);
  }

  Future<String?> readSessionId() async {
    return _dataSource.read(_finarySessionIdKey);
  }

  Future<void> clearSessionId() async {
    await _dataSource.delete(_finarySessionIdKey);
  }

  /// Numista Api Key
  Future<void> saveNumistaApiKey(String apiKey) async {
    await _dataSource.write(_numistaApiKeyKey, apiKey);
  }

  Future<String?> readNumistaApiKey() async {
    return _dataSource.read(_numistaApiKeyKey);
  }

  /// Custom Back Api Key
  Future<void> saveCustomBackApiKey(String apiKey) async {
    await _dataSource.write(_customBackApiKeyKey, apiKey);
  }

  Future<String?> readCustomBackApiKey() async {
    return _dataSource.read(_customBackApiKeyKey);
  }

  /// Investment Stocks Symbols
  Future<List<String>> readInvestmentStocksSymbols() async {
    final symbols = await _dataSource.read(_investmentStocksSymbolsKey);

    if (symbols == null) {
      return [];
    }
    return List<String>.from(jsonDecode(symbols) as List);
  }

  Future<void> saveInvestmentStocksSymbols(List<String> stocksSymbols) async {
    await _dataSource.write(_investmentStocksSymbolsKey, jsonEncode(stocksSymbols));
  }

  /// Local Assets
  Future<List<AssetModel>> readLocalAssets({
    required double goldTradePrice,
    required double silverTradePrice,
  }) async {
    final preciousMetals = await _dataSource.read(_preciousMetalsLocalAssetsKey) ?? '[]';
    final cash = await _dataSource.read(_cashLocalAssetsKey) ?? '[]';

    final preciousMetalsJson =
        (jsonDecode(preciousMetals) as List).map((e) => LocalPreciousMetalDto.fromJson(e as JsonResponse));
    final cashJson = (jsonDecode(cash) as List).map((e) => LocalAssetDto.fromJson(e as JsonResponse));

    return [
      ...preciousMetalsJson.map(
        (e) => PreciousMetalAssetModel.fromDto(
          e,
          switch (e.metalType) {
            PreciousMetalTypeDto.gold => goldTradePrice,
            PreciousMetalTypeDto.silver => silverTradePrice,
            PreciousMetalTypeDto.other => 0,
          },
        ),
      ),
      ...cashJson.map(AssetModel.fromLocalDto),
    ];
  }

  Future<void> saveLocalAssets(List<AssetModel> assets) async {
    final preciousMetals = assets
        .where((e) => e.type == AssetTypeModel.preciousMetal)
        .map((e) => LocalPreciousMetalDto.fromModel(e as PreciousMetalAssetModel))
        .toList();
    final cash = assets.where((e) => e.type == AssetTypeModel.cash).map(LocalAssetDto.fromModel).toList();

    await _dataSource.write(_preciousMetalsLocalAssetsKey, jsonEncode(preciousMetals));
    await _dataSource.write(_cashLocalAssetsKey, jsonEncode(cash));
  }

  /// Physical Assets Ratios
  Future<double> getGSRGoldFavorableRatio() async {
    final value = await _dataSource.read(_gsrGoldFavorableRatioKey);

    if (value == null) {
      return PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio;
    }
    return double.parse(value);
  }

  Future<void> saveGSRGoldFavorableRatio(double ratio) async {
    await _dataSource.write(_gsrGoldFavorableRatioKey, ratio.toString());
  }

  Future<void> deleteGSRGoldFavorableRatio() async {
    await _dataSource.delete(_gsrGoldFavorableRatioKey);
  }

  Future<double> getGSRSilverFavorableRatio() async {
    final value = await _dataSource.read(_gsrSilverFavorableRatioKey);

    if (value == null) {
      return PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio;
    }
    return double.parse(value);
  }

  Future<void> saveGSRSilverFavorableRatio(double ratio) async {
    await _dataSource.write(_gsrSilverFavorableRatioKey, ratio.toString());
  }

  Future<void> deleteGSRSilverFavorableRatio() async {
    await _dataSource.delete(_gsrSilverFavorableRatioKey);
  }

  Future<double> getSPGRSPFavorableRatio() async {
    final value = await _dataSource.read(_spgrSPFavorableRatioKey);

    if (value == null) {
      return PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio;
    }
    return double.parse(value);
  }

  Future<void> saveSPGRSPFavorableRatio(double ratio) async {
    await _dataSource.write(_spgrSPFavorableRatioKey, ratio.toString());
  }

  Future<void> deleteSPGRSPFavorableRatio() async {
    await _dataSource.delete(_spgrSPFavorableRatioKey);
  }

  Future<double> getSPGRGoldFavorableRatio() async {
    final value = await _dataSource.read(_spgrGoldFavorableRatioKey);

    if (value == null) {
      return PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio;
    }
    return double.parse(value);
  }

  Future<void> saveSPGRGoldFavorableRatio(double ratio) async {
    await _dataSource.write(_spgrGoldFavorableRatioKey, ratio.toString());
  }

  Future<void> deleteSPGRGoldFavorableRatio() async {
    await _dataSource.delete(_spgrGoldFavorableRatioKey);
  }
}
