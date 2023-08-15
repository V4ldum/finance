import 'package:finance/features/proof_of_concept/domain/entities/entities.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/repositories.dart';
import 'package:finance/features/proof_of_concept/infrastructure/data_sources/data_sources.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:finance/features/proof_of_concept/infrastructure/models/investments_distribution_type.dart';
import 'package:meta_package/types.dart';

class FinaryApiRepository implements AbstractFinaryApiRepository {
  FinaryApiRepository(this._finaryApiDataSource);

  final AbstractFinaryApiDataSource _finaryApiDataSource;

  @override
  Future<Result<AuthenticationEntity, FinaryAuthenticationException>> auth(String username, String password) {
    return _finaryApiDataSource.auth(username, password);
  }

  @override
  Future<Result<AuthenticationEntity, FinaryAuthenticationException>> authOtp(
    String username,
    String password,
    String otp,
    AuthenticationEntity entity,
  ) {
    return _finaryApiDataSource.authOtp(username, password, otp, entity);
  }

  @override
  Future<Result<List<InvestmentsDistributionItemEntity>, FinaryAPIException>> investmentsDistribution({
    InvestmentsDistributionType type = InvestmentsDistributionType.stock,
  }) {
    return _finaryApiDataSource.investmentsDistribution(type: type);
  }
}
