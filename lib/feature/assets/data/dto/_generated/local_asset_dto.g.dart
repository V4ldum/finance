// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../local_asset_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalAssetDtoImpl _$$LocalAssetDtoImplFromJson(Map<String, dynamic> json) =>
    _$LocalAssetDtoImpl(
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      value: (json['value'] as num).toDouble(),
    );

Map<String, dynamic> _$$LocalAssetDtoImplToJson(_$LocalAssetDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'amount': instance.amount,
      'value': instance.value,
    };
