import 'package:finance/features/proof_of_concept/domain/entities/entities.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:finance/features/proof_of_concept/infrastructure/models/models.dart';
import 'package:meta_package/types.dart';

abstract class AbstractFinaryApiDataSource {
  Future<Result<AuthenticationEntity, FinaryAuthenticationException>> auth(String username, String password);

  Future<Result<AuthenticationEntity, FinaryAuthenticationException>> authOtp(
    String username,
    String password,
    String otp,
    AuthenticationEntity entity,
  );

  Future<Result<List<InvestmentsDistributionItemEntity>, FinaryAPIException>> investmentsDistribution({
    InvestmentsDistributionType type = InvestmentsDistributionType.stock,
  });
}
