import 'package:finance/feature/_proof_of_concept/domain/model/coin_entity.dart';
import 'package:finance/feature/_proof_of_concept/domain/model/coin_summary_entity.dart';
import 'package:finance/feature/_proof_of_concept/infrastructure/abstract_data_source/coin_data_source.dart';

class ApiCoinRepository {
  ApiCoinRepository(this._coinDataSource);

  final CoinDataSource _coinDataSource;

  Future<List<CoinSummaryEntity>> searchCoins(String query) async {
    // /!\ update data dans service
    final dto = await _coinDataSource.searchCoins(query);

    return dto.coins.map(CoinSummaryEntity.fromDto).toList();
  }

  Future<CoinEntity> getCoinData(int id) async {
    // /!\ update data dans service
    final dto = await _coinDataSource.getCoinData(id);

    return CoinEntity.fromDto(dto);
  }
}
