import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/coin_repository.dart';
import 'package:finance/features/proof_of_concept/infrastructure/data_sources/data_sources.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:meta_package/types.dart';

class ApiCoinRepository implements CoinRepository {
  ApiCoinRepository(this._coinDataSource);

  final CoinDataSource _coinDataSource;

  @override
  Future<Result<List<CoinSummaryEntity>, SearchCoinsException>> searchCoins(String query) {
    return _coinDataSource.searchCoins(query);
  }

  @override
  Future<Result<CoinEntity, GetCoinDataException>> getCoinData(int id) {
    return _coinDataSource.getCoinData(id);
  }
}
