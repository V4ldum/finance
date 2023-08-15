import 'package:finance/features/proof_of_concept/domain/entities/entities.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:finance/features/proof_of_concept/infrastructure/repositories/repositories.dart';
import 'package:meta_package/types.dart';

class AuthFinaryUseCase {
  AuthFinaryUseCase(this._repository);

  final FinaryApiRepository _repository;
  Future<Result<AuthenticationEntity, FinaryAuthenticationException>> call(
    String username,
    String password,
  ) async {
    return _repository.auth(username, password);
  }
}
