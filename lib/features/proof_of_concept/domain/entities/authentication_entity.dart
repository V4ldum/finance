import 'package:meta_package/types.dart';

class AuthenticationEntity {
  AuthenticationEntity({
    required this.otpRequired,
    required this.otpRelayToken,
    required this.accessToken,
    required this.accessTokenExpiry,
    required this.refreshToken,
    required this.refreshTokenExpiry,
  });

  final bool otpRequired;
  final Option<String> otpRelayToken;
  final Option<String> accessToken;
  final Option<int> accessTokenExpiry;
  final Option<String> refreshToken;
  final Option<int> refreshTokenExpiry;
}
