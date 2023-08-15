import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/coin_repository.dart';

class GetCoinDataUseCase {
  GetCoinDataUseCase(this._repository);

  final CoinRepository _repository;

  Future<CoinEntity> call(int id) async {
    final result = await _repository.getCoinData(id);
    if (result.isErr) {
      throw result.err().unwrap();
    }
    return result.ok().unwrap();
  }
}
