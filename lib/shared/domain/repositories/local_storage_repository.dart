import 'dart:convert';

import 'package:finance/features/settings/presentation/pages/physical_assets_settings_page.dart';
import 'package:finance/shared/data/data_sources/local_storage_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/local_storage_repository.g.dart';

@riverpod
LocalStorageRepository localStorageRepository(Ref ref) {
  return LocalStorageRepository(ref);
}

class LocalStorageRepository {
  LocalStorageRepository(this._ref);

  final Ref _ref;

  LocalStorageDataSource get _dataSource => _ref.read(localStorageDataSourceProvider);

  static const _finarySessionIdKey = 'FINARY_SESSION_ID';
  static const _customBackApiKeyKey = 'CUSTOM_BACK_API_KEY';
  static const _investmentStocksSymbolsKey = 'INVESTMENT_STOCKS_SYMBOL';
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
