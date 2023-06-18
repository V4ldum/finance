import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:meta_package/types.dart';

/// Abstract implementation of the data source related to coins
abstract class CoinDataSource {
  /// Search for a list of coins corresponding to a provided query
  Future<Result<List<CoinSummaryEntity>, SearchCoinsException>> searchCoins(String query);

  /// Get data from a specific coin using it's id
  Future<Result<CoinEntity, GetCoinDataException>> getCoinData(int id);
}
