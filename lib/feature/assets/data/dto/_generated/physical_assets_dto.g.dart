// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../physical_assets_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PhysicalAssetsDtoImpl _$$PhysicalAssetsDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PhysicalAssetsDtoImpl(
      rawAssets: (json['raw_assets'] as List<dynamic>)
          .map((e) => RawPhysicalAssetDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      cashAssets: (json['cash_assets'] as List<dynamic>)
          .map((e) => CashPhysicalAssetDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      coinAssets: (json['coin_assets'] as List<dynamic>)
          .map((e) => CoinPhysicalAssetDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PhysicalAssetsDtoImplToJson(
        _$PhysicalAssetsDtoImpl instance) =>
    <String, dynamic>{
      'raw_assets': instance.rawAssets,
      'cash_assets': instance.cashAssets,
      'coin_assets': instance.coinAssets,
    };

_$RawPhysicalAssetDtoImpl _$$RawPhysicalAssetDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$RawPhysicalAssetDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      possessed: (json['possessed'] as num).toInt(),
      unitWeight: (json['unit_weight'] as num).toInt(),
      composition:
          $enumDecode(_$PreciousMetalTypeDtoEnumMap, json['composition']),
      purity: (json['purity'] as num).toInt(),
    );

Map<String, dynamic> _$$RawPhysicalAssetDtoImplToJson(
        _$RawPhysicalAssetDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'possessed': instance.possessed,
      'unit_weight': instance.unitWeight,
      'composition': _$PreciousMetalTypeDtoEnumMap[instance.composition]!,
      'purity': instance.purity,
    };

const _$PreciousMetalTypeDtoEnumMap = {
  PreciousMetalTypeDto.gold: 'GOLD',
  PreciousMetalTypeDto.silver: 'SILVER',
  PreciousMetalTypeDto.other: 'OTHER',
};

_$CashPhysicalAssetDtoImpl _$$CashPhysicalAssetDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CashPhysicalAssetDtoImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      possessed: (json['possessed'] as num).toInt(),
      unitValue: (json['unit_value'] as num).toInt(),
    );

Map<String, dynamic> _$$CashPhysicalAssetDtoImplToJson(
        _$CashPhysicalAssetDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'possessed': instance.possessed,
      'unit_value': instance.unitValue,
    };

_$CoinPhysicalAssetDtoImpl _$$CoinPhysicalAssetDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinPhysicalAssetDtoImpl(
      possessed: (json['possessed'] as num).toInt(),
      data: CoinDto.fromJson(json['coin_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoinPhysicalAssetDtoImplToJson(
        _$CoinPhysicalAssetDtoImpl instance) =>
    <String, dynamic>{
      'possessed': instance.possessed,
      'coin_data': instance.data,
    };
