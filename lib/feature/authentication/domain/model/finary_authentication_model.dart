import 'package:finance/feature/authentication/data/dto/authentication_dto.dart';

class FinaryAuthenticationModel {
  FinaryAuthenticationModel({
    required this.sia,
    required this.sessionId,
    required this.otpRequired,
  });

  factory FinaryAuthenticationModel.fromDto(AuthenticationDto dto) {
    return FinaryAuthenticationModel(
      sia: dto.response.sia,
      sessionId: dto.client.session?.id ?? '',
      otpRequired: dto.response.status == AuthenticationStatusDto.needsSecondFactor,
    );
  }

  final String sia;
  final String sessionId;
  final bool otpRequired;
}
