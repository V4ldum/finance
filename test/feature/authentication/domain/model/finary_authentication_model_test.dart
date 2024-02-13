import 'package:finance/feature/authentication/data/dto/authentication_dto.dart';
import 'package:finance/feature/authentication/domain/model/finary_authentication_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late FinaryAuthenticationModel sut;

  test('FinaryAuthenticationModel works properly', () {
    sut = FinaryAuthenticationModel.fromDto(
      const AuthenticationDto(
        response: AuthenticationResponseDto(sia: 'sia_123', status: AuthenticationStatusDto.complete),
        client: AuthenticationClientDto(session: AuthenticationSessionDto(id: 'id_123')),
      ),
    );

    expect(sut.sia, 'sia_123');
    expect(sut.sessionId, 'id_123');
    expect(sut.otpRequired, false);
  });
  test('FinaryAuthenticationModel works properly with otp required', () {
    sut = FinaryAuthenticationModel.fromDto(
      const AuthenticationDto(
        response: AuthenticationResponseDto(sia: 'sia_123', status: AuthenticationStatusDto.needsSecondFactor),
        client: AuthenticationClientDto(session: AuthenticationSessionDto(id: 'id_123')),
      ),
    );

    expect(sut.otpRequired, true);
  });
  test('FinaryAuthenticationModel works properly with no session found', () {
    sut = FinaryAuthenticationModel.fromDto(
      const AuthenticationDto(
        response: AuthenticationResponseDto(sia: 'sia_123', status: AuthenticationStatusDto.complete),
        client: AuthenticationClientDto(session: null),
      ),
    );

    expect(sut.sessionId, '');
  });
}
