// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../sp500_trade_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SP500TradeValueDtoImpl _$$SP500TradeValueDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SP500TradeValueDtoImpl(
      data:
          SP500TradeValueDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SP500TradeValueDtoImplToJson(
        _$SP500TradeValueDtoImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$SP500TradeValueDataDtoImpl _$$SP500TradeValueDataDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SP500TradeValueDataDtoImpl(
      quote: SP500TradeValueQuoteDto.fromJson(
          json['GetBarchartQuotes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SP500TradeValueDataDtoImplToJson(
        _$SP500TradeValueDataDtoImpl instance) =>
    <String, dynamic>{
      'GetBarchartQuotes': instance.quote,
    };

_$SP500TradeValueQuoteDtoImpl _$$SP500TradeValueQuoteDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SP500TradeValueQuoteDtoImpl(
      result: SP500TradeValueResultDto.fromJson(
          _convertResultsToResult(json, 'results') as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SP500TradeValueQuoteDtoImplToJson(
        _$SP500TradeValueQuoteDtoImpl instance) =>
    <String, dynamic>{
      'results': instance.result,
    };

_$SP500TradeValueResultDtoImpl _$$SP500TradeValueResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SP500TradeValueResultDtoImpl(
      name: json['name'] as String,
      bid: (json['lastPrice'] as num).toDouble(),
    );

Map<String, dynamic> _$$SP500TradeValueResultDtoImplToJson(
        _$SP500TradeValueResultDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lastPrice': instance.bid,
    };
