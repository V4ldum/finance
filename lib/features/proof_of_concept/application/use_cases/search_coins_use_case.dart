import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/coin_repository.dart';

class SearchCoinsUseCase {
  SearchCoinsUseCase(this._repository);

  final CoinRepository _repository;

  Future<List<CoinSummaryEntity>> call(String query) async {
    final result = await _repository.searchCoins(query);
    if (result.isErr) {
      throw result.err().unwrap();
    }
    return result.ok().unwrap();
  }
}
