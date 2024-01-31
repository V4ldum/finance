import 'dart:convert';

import 'package:finance/shared/data/data_source/local_storage_data_source.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/local_storage_repository.g.dart';

@riverpod
LocalStorageRepository localStorageRepository(LocalStorageRepositoryRef ref) {
  final dataSource = ref.read(localStorageDataSourceProvider);

  return LocalStorageRepository(dataSource);
}

class LocalStorageRepository {
  LocalStorageRepository(this._dataSource);

  final LocalStorageDataSource _dataSource;

  static const _finarySessionIdKey = 'FINARY_SESSION_ID_KEY';
  static const _investmentStocksSymbolsKey = 'INVESTMENT_STOCKS_SYMBOL';

  Future<void> saveSessionId(String sessionId) async {
    await _dataSource.write(_finarySessionIdKey, sessionId);
  }

  Future<String?> readSessionId() async {
    return _dataSource.read(_finarySessionIdKey);
  }

  Future<void> clearSessionId() async {
    await _dataSource.delete(_finarySessionIdKey);
  }

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
}
