import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/authentication_model.g.dart';

@JsonSerializable()
class AuthenticationModel {
  AuthenticationModel({
    required this.result,
    this.accessToken,
    this.refreshToken,
  });

  factory AuthenticationModel.fromJson(JsonResponse json) => _$AuthenticationModelFromJson(json);

  factory AuthenticationModel.fromHttpResponse(Response<JsonResponse> response) {
    final cookies = response.headers['set-cookie'];
    // find the correct token and remove the first part (X_token=..) to
    final accessToken = cookies?.firstWhere((element) => element.startsWith('finary_access_token')).split('=')[1];
    final refreshToken = cookies?.firstWhere((element) => element.startsWith('finary_refresh_token')).split('=')[1];

    final json = {
      ...response.data!,
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
    return AuthenticationModel.fromJson(json);
  }

  @JsonKey(name: 'result')
  final AuthenticationResultModel result;

  @JsonKey(name: 'access_token')
  final String? accessToken;

  @JsonKey(name: 'refresh_token')
  final String? refreshToken;

  JsonResponse toJson() => _$AuthenticationModelToJson(this);
}

@JsonSerializable()
class AuthenticationResultModel {
  AuthenticationResultModel({
    this.otpRelayToken,
    this.accessTokenExpiry,
    this.refreshTokenExpiry,
  });

  factory AuthenticationResultModel.fromJson(JsonResponse json) => _$AuthenticationResultModelFromJson(json);

  factory AuthenticationResultModel.fromHttpResponse(Response<JsonResponse> response) {
    return AuthenticationResultModel.fromJson(response.data!);
  }

  @JsonKey(name: 'otp_relay_token')
  final String? otpRelayToken;

  @JsonKey(name: 'access_token_expiry')
  final int? accessTokenExpiry;

  @JsonKey(name: 'refresh_token_expiry')
  final int? refreshTokenExpiry;

  JsonResponse toJson() => _$AuthenticationResultModelToJson(this);
}
