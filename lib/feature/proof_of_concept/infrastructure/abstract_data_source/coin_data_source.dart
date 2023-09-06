import 'package:finance/feature/proof_of_concept/infrastructure/dto/coin_data_model.dart';
import 'package:finance/feature/proof_of_concept/infrastructure/dto/coins_query_model.dart';

abstract class CoinDataSource {
  Future<CoinsQueryModel> searchCoins(String query);
  Future<CoinDataModel> getCoinData(int id);
}
