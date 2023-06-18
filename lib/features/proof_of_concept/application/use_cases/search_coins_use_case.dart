import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/coin_repository.dart';

/// Use case called to query coins corresponding to a provided query
class SearchCoinsUseCase {
  /// Constructor for [SearchCoinsUseCase]

  SearchCoinsUseCase(this._repository);

  final CoinRepository _repository;

  /// Function querying the coins
  Future<List<CoinSummaryEntity>> call(String query) async {
    final result = await _repository.searchCoins(query);
    if (result.isErr) {
      throw result.err().unwrap();
    }
    return result.ok().unwrap();
  }
}
