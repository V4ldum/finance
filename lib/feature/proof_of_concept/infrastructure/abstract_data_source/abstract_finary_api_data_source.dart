import 'package:finance/feature/proof_of_concept/infrastructure/dto/authentication_model.dart';
import 'package:finance/feature/proof_of_concept/infrastructure/dto/investments_distribution_query_model.dart';
import 'package:finance/feature/proof_of_concept/infrastructure/dto/investments_distribution_type.dart';

abstract class AbstractFinaryApiDataSource {
  Future<AuthenticationModel> auth(String username, String password);

  Future<AuthenticationModel> authOtp(
    String username,
    String password,
    String otp,
    String otpRelayToken,
  );

  Future<InvestmentsDistributionQueryModel> investmentsDistribution({
    InvestmentsDistributionType type = InvestmentsDistributionType.stock,
  });
}
