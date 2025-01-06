import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/authentication_dto.freezed.dart';
part '_generated/authentication_dto.g.dart';

@freezed
sealed class AuthenticationDto with _$AuthenticationDto {
  const factory AuthenticationDto({
    required AuthenticationResponseDto response,
    required AuthenticationClientDto client,
  }) = _AuthenticationDto;

  factory AuthenticationDto.fromJson(JsonMapResponse json) => _$AuthenticationDtoFromJson(json);

  factory AuthenticationDto.fromHttpResponse(Response<JsonMapResponse> response) {
    return AuthenticationDto.fromJson(response.data!);
  }
}

@freezed
sealed class AuthenticationResponseDto with _$AuthenticationResponseDto {
  const factory AuthenticationResponseDto({
    @JsonKey(name: 'id') required String sia,
    @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown) required AuthenticationStatusDto status,
  }) = _AuthenticationResponseDto;

  factory AuthenticationResponseDto.fromJson(JsonMapResponse json) => _$AuthenticationResponseDtoFromJson(json);

  factory AuthenticationResponseDto.fromHttpResponse(Response<JsonMapResponse> response) {
    return AuthenticationResponseDto.fromJson(response.data!);
  }
}

enum AuthenticationStatusDto {
  @JsonValue('complete')
  complete,
  @JsonValue('needs_second_factor')
  needsSecondFactor,
  @JsonValue('unknown')
  unknown,
}

@freezed
sealed class AuthenticationClientDto with _$AuthenticationClientDto {
  const factory AuthenticationClientDto({
    @JsonKey(name: 'sessions', readValue: _readAuthenticationSession) required AuthenticationSessionDto? session,
  }) = _AuthenticationClientDto;

  factory AuthenticationClientDto.fromJson(JsonMapResponse json) => _$AuthenticationClientDtoFromJson(json);

  factory AuthenticationClientDto.fromHttpResponse(Response<JsonMapResponse> response) {
    return AuthenticationClientDto.fromJson(response.data!);
  }
}

@freezed
sealed class AuthenticationSessionDto with _$AuthenticationSessionDto {
  const factory AuthenticationSessionDto({
    required String id,
  }) = _AuthenticationSessionDto;

  factory AuthenticationSessionDto.fromJson(JsonMapResponse json) => _$AuthenticationSessionDtoFromJson(json);

  factory AuthenticationSessionDto.fromHttpResponse(Response<JsonMapResponse> response) {
    return AuthenticationSessionDto.fromJson(response.data!);
  }
}

Object? _readAuthenticationSession(Map<dynamic, dynamic> json, String key) {
  json as Map<String, dynamic>;
  final sessions = json[key] as List;

  if (sessions.isEmpty) {
    return null;
  }
  return sessions[0];
}
