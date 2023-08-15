import 'package:finance/features/proof_of_concept/domain/entities/entities.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/repositories.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:finance/features/proof_of_concept/infrastructure/models/models.dart';
import 'package:meta_package/types.dart';

class InvestmentsDistributionUseCase {
  InvestmentsDistributionUseCase(this._repository);

  final AbstractFinaryApiRepository _repository;

  Future<Result<List<InvestmentsDistributionItemEntity>, FinaryAPIException>> call({
    InvestmentsDistributionType type = InvestmentsDistributionType.stock,
  }) async {
    return _repository.investmentsDistribution(type: type);
  }
}
