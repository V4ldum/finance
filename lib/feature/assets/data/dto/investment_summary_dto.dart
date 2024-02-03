import 'package:finance/feature/assets/data/dto/summary_values_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/investment_summary_dto.freezed.dart';
part '_generated/investment_summary_dto.g.dart';

@freezed
sealed class InvestmentSummaryDto with _$InvestmentSummaryDto {
  const factory InvestmentSummaryDto({
    required InvestmentSummaryResultDto result,
  }) = _InvestmentSummaryDto;

  factory InvestmentSummaryDto.fromJson(JsonResponse json) => _$InvestmentSummaryDtoFromJson(json);

  factory InvestmentSummaryDto.fromHttpResponse(JsonResponse response) {
    return InvestmentSummaryDto.fromJson(response);
  }
}

@freezed
sealed class InvestmentSummaryResultDto with _$InvestmentSummaryResultDto {
  const factory InvestmentSummaryResultDto({
    @JsonKey(readValue: _readInvestmentSummaryResultTotal) required SummaryValuesDto total,
    @JsonKey(name: 'gross') required InvestmentSummaryDistributionDto distribution,
  }) = _InvestmentSummaryResultDto;

  factory InvestmentSummaryResultDto.fromJson(JsonResponse json) => _$InvestmentSummaryResultDtoFromJson(json);
}

@freezed
sealed class InvestmentSummaryDistributionDto with _$InvestmentSummaryDistributionDto {
  const factory InvestmentSummaryDistributionDto({
    @JsonKey(name: 'checking_accounts') required SummaryValuesDto checkingAccounts,
    @JsonKey(name: 'savings_accounts') required SummaryValuesDto savingsAccounts,
    @JsonKey(name: 'investment_accounts') required SummaryValuesDto stocksAccounts,
    required SummaryValuesDto cryptos,
    @JsonKey(name: 'fonds_euro') required SummaryValuesDto fondsEuro,
    @JsonKey(name: 'real_estates') required SummaryValuesDto realEstates,
    required SummaryValuesDto startups,
    required SummaryValuesDto commodities,
    required SummaryValuesDto crowdlendings,
    @JsonKey(name: 'other_assets') required SummaryValuesDto other,
    required SummaryValuesDto loans,
    @JsonKey(name: 'credit_accounts') required SummaryValuesDto creditAccounts,
  }) = _InvestmentSummaryDistributionDto;

  factory InvestmentSummaryDistributionDto.fromJson(JsonResponse json) =>
      _$InvestmentSummaryDistributionDtoFromJson(json);
}

Object? _readInvestmentSummaryResultTotal(Map<dynamic, dynamic> json, String key) {
  return (json['gross'] as Map<String, dynamic>)[key];
}
