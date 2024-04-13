// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../trade_values_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TradeValuesDtoImpl _$$TradeValuesDtoImplFromJson(Map<String, dynamic> json) =>
    _$TradeValuesDtoImpl(
      gold: TradeValueDto.fromJson(json['gold'] as Map<String, dynamic>),
      silver: TradeValueDto.fromJson(json['silver'] as Map<String, dynamic>),
      sp500: TradeValueDto.fromJson(json['sp_500'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TradeValuesDtoImplToJson(
        _$TradeValuesDtoImpl instance) =>
    <String, dynamic>{
      'gold': instance.gold,
      'silver': instance.silver,
      'sp_500': instance.sp500,
    };

_$TradeValueDtoImpl _$$TradeValueDtoImplFromJson(Map<String, dynamic> json) =>
    _$TradeValueDtoImpl(
      price: (json['price'] as num).toDouble(),
      lastUpdate: DateTime.parse(json['last_update'] as String),
    );

Map<String, dynamic> _$$TradeValueDtoImplToJson(_$TradeValueDtoImpl instance) =>
    <String, dynamic>{
      'price': instance.price,
      'last_update': instance.lastUpdate.toIso8601String(),
    };
