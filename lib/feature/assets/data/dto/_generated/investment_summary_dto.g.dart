// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../investment_summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvestmentSummaryDtoImpl _$$InvestmentSummaryDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestmentSummaryDtoImpl(
      result: InvestmentSummaryResultDto.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvestmentSummaryDtoImplToJson(
        _$InvestmentSummaryDtoImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$InvestmentSummaryResultDtoImpl _$$InvestmentSummaryResultDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$InvestmentSummaryResultDtoImpl(
      total: _readInvestmentSummaryResultTotal(json, 'total') == null
          ? null
          : SummaryValuesDto.fromJson(
              _readInvestmentSummaryResultTotal(json, 'total')
                  as Map<String, dynamic>),
      distribution: InvestmentSummaryDistributionDto.fromJson(
          json['gross'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$InvestmentSummaryResultDtoImplToJson(
        _$InvestmentSummaryResultDtoImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'gross': instance.distribution,
    };

_$InvestmentSummaryDistributionDtoImpl
    _$$InvestmentSummaryDistributionDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$InvestmentSummaryDistributionDtoImpl(
          checkingAccounts: json['checking_accounts'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['checking_accounts'] as Map<String, dynamic>),
          savingsAccounts: json['savings_accounts'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['savings_accounts'] as Map<String, dynamic>),
          stocksAccounts: json['investment_accounts'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['investment_accounts'] as Map<String, dynamic>),
          cryptos: json['cryptos'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['cryptos'] as Map<String, dynamic>),
          fondsEuro: json['fonds_euro'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['fonds_euro'] as Map<String, dynamic>),
          realEstates: json['real_estates'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['real_estates'] as Map<String, dynamic>),
          startups: json['startups'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['startups'] as Map<String, dynamic>),
          commodities: json['commodities'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['commodities'] as Map<String, dynamic>),
          crowdlendings: json['crowdlendings'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['crowdlendings'] as Map<String, dynamic>),
          other: json['other_assets'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['other_assets'] as Map<String, dynamic>),
          loans: json['loans'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['loans'] as Map<String, dynamic>),
          creditAccounts: json['credit_accounts'] == null
              ? null
              : SummaryValuesDto.fromJson(
                  json['credit_accounts'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$InvestmentSummaryDistributionDtoImplToJson(
        _$InvestmentSummaryDistributionDtoImpl instance) =>
    <String, dynamic>{
      'checking_accounts': instance.checkingAccounts,
      'savings_accounts': instance.savingsAccounts,
      'investment_accounts': instance.stocksAccounts,
      'cryptos': instance.cryptos,
      'fonds_euro': instance.fondsEuro,
      'real_estates': instance.realEstates,
      'startups': instance.startups,
      'commodities': instance.commodities,
      'crowdlendings': instance.crowdlendings,
      'other_assets': instance.other,
      'loans': instance.loans,
      'credit_accounts': instance.creditAccounts,
    };
