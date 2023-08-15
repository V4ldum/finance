import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:meta_package/types.dart';

abstract class CoinDataSource {
  Future<Result<List<CoinSummaryEntity>, SearchCoinsException>> searchCoins(String query);

  Future<Result<CoinEntity, GetCoinDataException>> getCoinData(int id);
}
