// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../user_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoDtoImpl _$$UserInfoDtoImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoDtoImpl(
      result:
          UserInfoResultDto.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserInfoDtoImplToJson(_$UserInfoDtoImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$UserInfoResultDtooImpl _$$UserInfoResultDtooImplFromJson(
        Map<String, dynamic> json) =>
    _$UserInfoResultDtooImpl(
      lastSync: json['last_asset_updated_at'] as String,
    );

Map<String, dynamic> _$$UserInfoResultDtooImplToJson(
        _$UserInfoResultDtooImpl instance) =>
    <String, dynamic>{
      'last_asset_updated_at': instance.lastSync,
    };
