import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/coin_repository.dart';

/// Use case called to query the data for a specific coin
/// by providing the id for that coin
class GetCoinDataUseCase {
  /// Constructor for [GetCoinDataUseCase]
  GetCoinDataUseCase(this._repository);

  final CoinRepository _repository;

  /// Function querying the coin's data
  Future<CoinEntity> call(int id) async {
    final result = await _repository.getCoinData(id);
    if (result.isErr) {
      throw result.err().unwrap();
    }
    return result.ok().unwrap();
  }
}
