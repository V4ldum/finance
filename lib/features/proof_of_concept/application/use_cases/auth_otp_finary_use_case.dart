import 'package:finance/features/proof_of_concept/domain/entities/entities.dart';
import 'package:finance/features/proof_of_concept/domain/repositories/repositories.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:meta_package/types.dart';

class AuthOtpFinaryUseCase {
  AuthOtpFinaryUseCase(this._repository);

  final AbstractFinaryApiRepository _repository;

  Future<Result<AuthenticationEntity, FinaryAuthenticationException>> call({
    required String username,
    required String password,
    required String otp,
    required AuthenticationEntity authenticationEntity,
  }) async {
    return _repository.authOtp(username, password, otp, authenticationEntity);
  }
}
