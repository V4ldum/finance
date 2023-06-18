import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/coin_repository.dart';
import 'package:finance/features/proof_of_concept/infrastructure/data_sources/remote/api_coin_data_source.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:meta_package/types.dart';

/// Concrete implementation of the repository related to coins.
/// Uses Numista's REST API to get coin data
/// API documentation can be found at https://en.numista.com/api/doc/index.php
class ApiCoinRepository implements CoinRepository {
  /// Constructor for the [ApiCoinRepository]
  ApiCoinRepository(this._coinRemoteDataSource);

  final ApiCoinDataSource _coinRemoteDataSource;

  @override
  Future<Result<List<CoinSummaryEntity>, SearchCoinsException>> searchCoins(String query) {
    return _coinRemoteDataSource.searchCoins(query);
  }

  @override
  Future<Result<CoinEntity, GetCoinDataException>> getCoinData(int id) {
    return _coinRemoteDataSource.getCoinData(id);
  }
}
