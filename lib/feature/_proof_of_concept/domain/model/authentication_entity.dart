import 'package:finance/feature/_proof_of_concept/infrastructure/dto/authentication_model.dart';

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
      otpRelayToken: dto.result.otpRelayToken ?? '',
      accessToken: dto.accessToken ?? '',
      accessTokenExpiry: dto.result.accessTokenExpiry ?? 0,
      refreshToken: dto.refreshToken ?? '',
      refreshTokenExpiry: dto.result.refreshTokenExpiry ?? 0,
    );
  }

  final bool otpRequired;
  final String otpRelayToken;
  final String accessToken;
  final int accessTokenExpiry;
  final String refreshToken;
  final int refreshTokenExpiry;
}
