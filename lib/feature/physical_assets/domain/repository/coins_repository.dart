import 'package:dio/dio.dart';
import 'package:finance/feature/physical_assets/data/data_source/numista_data_source.dart';
import 'package:finance/feature/physical_assets/domain/exception/numista_exception.dart';
import 'package:finance/feature/physical_assets/domain/model/coin_data_model.dart';
import 'package:finance/feature/physical_assets/domain/model/search_coin_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/coins_repository.g.dart';

@riverpod
CoinsRepository coinsRepository(CoinsRepositoryRef ref) {
  return CoinsRepository(ref);
}

class CoinsRepository {
  CoinsRepository(this._ref);

  final CoinsRepositoryRef _ref;

  NumistaDataSource get _dataSource => _ref.read(numistaDataSourceProvider);

  Future<List<SearchCoinModel>> searchCoin({required String query}) async {
    try {
      final search = await _dataSource.searchCoin(query);

      return search.coins.map(SearchCoinModel.fromCoinQueryDto).toList();
    } on DioException catch (e) {
      throw NumistaException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<CoinDataModel> getCoinInformation({required String id}) async {
    try {
      final data = await _dataSource.getCoinInformation(id: id);

      return CoinDataModel.fromDto(data);
    } on DioException catch (e) {
      throw NumistaException.fromStatusCode(e.response?.statusCode);
    }
  }
}
