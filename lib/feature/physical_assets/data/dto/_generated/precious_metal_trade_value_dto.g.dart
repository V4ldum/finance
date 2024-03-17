// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../precious_metal_trade_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PreciousMetalTradeValueDtoImpl _$$PreciousMetalTradeValueDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$PreciousMetalTradeValueDtoImpl(
      data: PreciousMetalTradeValueDataDto.fromJson(
          json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PreciousMetalTradeValueDtoImplToJson(
        _$PreciousMetalTradeValueDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$PreciousMetalTradeValueDataDtoImpl
    _$$PreciousMetalTradeValueDataDtoImplFromJson(Map<String, dynamic> json) =>
        _$PreciousMetalTradeValueDataDtoImpl(
          quote: PreciousMetalTradeValueQuoteDto.fromJson(
              json['GetMetalQuote'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PreciousMetalTradeValueDataDtoImplToJson(
        _$PreciousMetalTradeValueDataDtoImpl instance) =>
    <String, dynamic>{
      'GetMetalQuote': instance.quote,
    };

_$PreciousMetalTradeValueQuoteDtoImpl
    _$$PreciousMetalTradeValueQuoteDtoImplFromJson(Map<String, dynamic> json) =>
        _$PreciousMetalTradeValueQuoteDtoImpl(
          name: json['name'] as String,
          result: PreciousMetalTradeValueResultDto.fromJson(
              _convertResultsToResult(json, 'results') as Map<String, dynamic>),
        );

Map<String, dynamic> _$$PreciousMetalTradeValueQuoteDtoImplToJson(
        _$PreciousMetalTradeValueQuoteDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'results': instance.result,
    };

_$PreciousMetalTradeValueResultDtoImpl
    _$$PreciousMetalTradeValueResultDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$PreciousMetalTradeValueResultDtoImpl(
          bid: (json['bid'] as num).toDouble(),
          change: (json['change'] as num).toDouble(),
          changePercent: (json['changePercentage'] as num).toDouble(),
        );

Map<String, dynamic> _$$PreciousMetalTradeValueResultDtoImplToJson(
        _$PreciousMetalTradeValueResultDtoImpl instance) =>
    <String, dynamic>{
      'bid': instance.bid,
      'change': instance.change,
      'changePercentage': instance.changePercent,
    };
