import 'package:finance/feature/proof_of_concept/infrastructure/dto/authentication_model.dart';
import 'package:meta_package/meta_package.dart';

class AuthenticationEntity {
  AuthenticationEntity({
    required this.otpRequired,
    required this.otpRelayToken,
    required this.accessToken,
    required this.accessTokenExpiry,
    required this.refreshToken,
    required this.refreshTokenExpiry,
  });

  factory AuthenticationEntity.fromDto(AuthenticationModel dto) {
    return AuthenticationEntity(
      otpRequired: dto.result.otpRelayToken != null,
      otpRelayToken: Option.instance(dto.result.otpRelayToken),
      accessToken: Option.instance(dto.accessToken),
      accessTokenExpiry: Option.instance(dto.result.accessTokenExpiry),
      refreshToken: Option.instance(dto.refreshToken),
      refreshTokenExpiry: Option.instance(dto.result.refreshTokenExpiry),
    );
  }

  final bool otpRequired;
  final Option<String> otpRelayToken;
  final Option<String> accessToken;
  final Option<int> accessTokenExpiry;
  final Option<String> refreshToken;
  final Option<int> refreshTokenExpiry;
}
