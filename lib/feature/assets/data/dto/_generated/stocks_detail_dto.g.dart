// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../stocks_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StocksDetailDtoImpl _$$StocksDetailDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StocksDetailDtoImpl(
      result:
          StockDetailResultDto.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StocksDetailDtoImplToJson(
        _$StocksDetailDtoImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$StockDetailResultDtoImpl _$$StockDetailResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StockDetailResultDtoImpl(
      total: SummaryValuesDto.fromJson(json['total'] as Map<String, dynamic>),
      accounts: (json['accounts'] as List<dynamic>)
          .map((e) => StockDetailAccountDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockDetailResultDtoImplToJson(
        _$StockDetailResultDtoImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'accounts': instance.accounts,
    };

_$StockDetailAccountDtoImpl _$$StockDetailAccountDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StockDetailAccountDtoImpl(
      name: json['name'] as String,
      balance: (json['balance'] as num).toDouble(),
      securities: (json['securities'] as List<dynamic>)
          .map(
              (e) => StockDetailSecurityDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$StockDetailAccountDtoImplToJson(
        _$StockDetailAccountDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'balance': instance.balance,
      'securities': instance.securities,
    };

_$StockDetailSecurityDtoImpl _$$StockDetailSecurityDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$StockDetailSecurityDtoImpl(
      total: (json['current_value'] as num).toDouble(),
      periodEvolution: (json['period_evolution'] as num).toDouble(),
      periodEvolutionPercent:
          (json['period_evolution_percent'] as num?)?.toDouble() ?? 0,
      buyingPrice: (json['buying_price'] as num?)?.toDouble() ?? 0,
      quantity: (json['quantity'] as num).toDouble(),
      security: StockDetailSecurityInformationDto.fromJson(
          json['security'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$StockDetailSecurityDtoImplToJson(
        _$StockDetailSecurityDtoImpl instance) =>
    <String, dynamic>{
      'current_value': instance.total,
      'period_evolution': instance.periodEvolution,
      'period_evolution_percent': instance.periodEvolutionPercent,
      'buying_price': instance.buyingPrice,
      'quantity': instance.quantity,
      'security': instance.security,
    };

_$StockDetailSecurityInformationDtoImpl
    _$$StockDetailSecurityInformationDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$StockDetailSecurityInformationDtoImpl(
          symbol: json['symbol'] as String,
          name: json['name'] as String,
          logoUrl: json['logo_url'] as String,
          unitPrice: (json['current_price'] as num).toDouble(),
          type: $enumDecode(
              _$StockDetailSecurityTypeDtoEnumMap, json['security_type'],
              unknownValue: StockDetailSecurityTypeDto.unknown),
        );

Map<String, dynamic> _$$StockDetailSecurityInformationDtoImplToJson(
        _$StockDetailSecurityInformationDtoImpl instance) =>
    <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'logo_url': instance.logoUrl,
      'current_price': instance.unitPrice,
      'security_type': _$StockDetailSecurityTypeDtoEnumMap[instance.type]!,
    };

const _$StockDetailSecurityTypeDtoEnumMap = {
  StockDetailSecurityTypeDto.etf: 'etf',
  StockDetailSecurityTypeDto.equity: 'equity',
  StockDetailSecurityTypeDto.fund: 'fund',
  StockDetailSecurityTypeDto.unknown: 'unknown',
};
