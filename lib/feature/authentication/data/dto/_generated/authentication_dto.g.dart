// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../authentication_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthenticationDtoImpl _$$AuthenticationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationDtoImpl(
      response: AuthenticationResponseDto.fromJson(
          json['response'] as Map<String, dynamic>),
      client: AuthenticationClientDto.fromJson(
          json['client'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticationDtoImplToJson(
        _$AuthenticationDtoImpl instance) =>
    <String, dynamic>{
      'response': instance.response,
      'client': instance.client,
    };

_$AuthenticationResponseDtoImpl _$$AuthenticationResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationResponseDtoImpl(
      sia: json['id'] as String,
      status: $enumDecode(_$AuthenticationStatusDtoEnumMap, json['status'],
          unknownValue: AuthenticationStatusDto.unknown),
    );

Map<String, dynamic> _$$AuthenticationResponseDtoImplToJson(
        _$AuthenticationResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.sia,
      'status': _$AuthenticationStatusDtoEnumMap[instance.status]!,
    };

const _$AuthenticationStatusDtoEnumMap = {
  AuthenticationStatusDto.complete: 'complete',
  AuthenticationStatusDto.needsSecondFactor: 'needs_second_factor',
  AuthenticationStatusDto.unknown: 'unknown',
};

_$AuthenticationClientDtoImpl _$$AuthenticationClientDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationClientDtoImpl(
      session: _readAuthenticationSession(json, 'sessions') == null
          ? null
          : AuthenticationSessionDto.fromJson(
              _readAuthenticationSession(json, 'sessions')
                  as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthenticationClientDtoImplToJson(
        _$AuthenticationClientDtoImpl instance) =>
    <String, dynamic>{
      'sessions': instance.session,
    };

_$AuthenticationSessionDtoImpl _$$AuthenticationSessionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationSessionDtoImpl(
      id: json['id'] as String,
    );

Map<String, dynamic> _$$AuthenticationSessionDtoImplToJson(
        _$AuthenticationSessionDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
    };
