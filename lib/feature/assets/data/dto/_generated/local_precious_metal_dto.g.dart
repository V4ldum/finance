// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../local_precious_metal_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LocalPreciousMetalDtoImpl _$$LocalPreciousMetalDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$LocalPreciousMetalDtoImpl(
      numistaId: json['numistaId'] as String,
      name: json['name'] as String,
      amount: (json['amount'] as num).toDouble(),
      purity: (json['purity'] as num).toDouble(),
      weight: (json['weight'] as num).toDouble(),
      metalType: $enumDecode(_$PreciousMetalTypeDtoEnumMap, json['metalType']),
    );

Map<String, dynamic> _$$LocalPreciousMetalDtoImplToJson(
        _$LocalPreciousMetalDtoImpl instance) =>
    <String, dynamic>{
      'numistaId': instance.numistaId,
      'name': instance.name,
      'amount': instance.amount,
      'purity': instance.purity,
      'weight': instance.weight,
      'metalType': _$PreciousMetalTypeDtoEnumMap[instance.metalType]!,
    };

const _$PreciousMetalTypeDtoEnumMap = {
  PreciousMetalTypeDto.gold: 'gold',
  PreciousMetalTypeDto.silver: 'silver',
  PreciousMetalTypeDto.other: 'other',
};
