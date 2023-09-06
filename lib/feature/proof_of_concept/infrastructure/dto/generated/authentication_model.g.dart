// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../authentication_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationModel _$AuthenticationModelFromJson(Map<String, dynamic> json) =>
    AuthenticationModel(
      result: AuthenticationResultModel.fromJson(
          json['result'] as Map<String, dynamic>),
      accessToken: json['access_token'] as String?,
      refreshToken: json['refresh_token'] as String?,
    );

Map<String, dynamic> _$AuthenticationModelToJson(
        AuthenticationModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
    };

AuthenticationResultModel _$AuthenticationResultModelFromJson(
        Map<String, dynamic> json) =>
    AuthenticationResultModel(
      otpRelayToken: json['otp_relay_token'] as String?,
      accessTokenExpiry: json['access_token_expiry'] as int?,
      refreshTokenExpiry: json['refresh_token_expiry'] as int?,
    );

Map<String, dynamic> _$AuthenticationResultModelToJson(
        AuthenticationResultModel instance) =>
    <String, dynamic>{
      'otp_relay_token': instance.otpRelayToken,
      'access_token_expiry': instance.accessTokenExpiry,
      'refresh_token_expiry': instance.refreshTokenExpiry,
    };
