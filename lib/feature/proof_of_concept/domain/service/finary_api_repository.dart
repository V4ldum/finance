import 'package:finance/feature/proof_of_concept/domain/model/authentication_entity.dart';
import 'package:finance/feature/proof_of_concept/domain/model/investments_distribution_item_entity.dart';
import 'package:finance/feature/proof_of_concept/infrastructure/abstract_data_source/abstract_finary_api_data_source.dart';
import 'package:finance/feature/proof_of_concept/infrastructure/dto/investments_distribution_type.dart';

class FinaryApiRepository {
  FinaryApiRepository(this._finaryApiDataSource);

  final AbstractFinaryApiDataSource _finaryApiDataSource;

  Future<AuthenticationEntity> auth(String username, String password) async {
    final dto = await _finaryApiDataSource.auth(username, password);

    return AuthenticationEntity.fromDto(dto);
  }

  Future<AuthenticationEntity> authOtp(
    String username,
    String password,
    String otp,
    String otpRelayToken,
  ) async {
    final dto = await _finaryApiDataSource.authOtp(username, password, otp, otpRelayToken);

    return AuthenticationEntity.fromDto(dto);
  }

  Future<List<InvestmentsDistributionItemEntity>> investmentsDistribution({
    InvestmentsDistributionType type = InvestmentsDistributionType.stock,
  }) async {
    final dto = await _finaryApiDataSource.investmentsDistribution(type: type);

    return dto.items.map(InvestmentsDistributionItemEntity.fromDto).toList();
  }
}
