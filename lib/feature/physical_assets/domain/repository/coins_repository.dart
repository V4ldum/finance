import 'package:dio/dio.dart';
import 'package:finance/feature/assets/domain/exception/custom_back_exception.dart';
import 'package:finance/feature/physical_assets/data/data_source/coin_data_source.dart';
import 'package:finance/feature/physical_assets/domain/model/coin_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/coins_repository.g.dart';

@riverpod
CoinsRepository coinsRepository(Ref ref) {
  return CoinsRepository(ref);
}

class CoinsRepository {
  CoinsRepository(this._ref);

  final Ref _ref;

  CoinDataSource get _dataSource => _ref.read(coinDataSourceProvider);

  Future<List<CoinModel>> searchCoin({required String query}) async {
    try {
      final search = await _dataSource.searchCoin(query);

      return search.coins.map(CoinModel.fromDto).toList();
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<CoinModel> getCoin({required int id}) async {
    try {
      final data = await _dataSource.getCoin(id: id);

      return CoinModel.fromDto(data);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }
}
