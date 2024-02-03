import 'package:finance/feature/assets/data/dto/summary_values_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/stocks_detail_dto.freezed.dart';
part '_generated/stocks_detail_dto.g.dart';

@freezed
sealed class StocksDetailDto with _$StocksDetailDto {
  const factory StocksDetailDto({
    required StockDetailResultDto result,
  }) = _StocksDetailDto;

  factory StocksDetailDto.fromJson(JsonResponse json) => _$StocksDetailDtoFromJson(json);

  factory StocksDetailDto.fromHttpResponse(JsonResponse response) {
    return StocksDetailDto.fromJson(response);
  }
}

@freezed
sealed class StockDetailResultDto with _$StockDetailResultDto {
  const factory StockDetailResultDto({
    required SummaryValuesDto total,
    required List<StockDetailAccountDto> accounts,
  }) = _StockDetailResultDto;

  factory StockDetailResultDto.fromJson(JsonResponse json) => _$StockDetailResultDtoFromJson(json);
}

@freezed
sealed class StockDetailAccountDto with _$StockDetailAccountDto {
  const factory StockDetailAccountDto({
    required String name,
    required double balance,
    required List<StockDetailSecurityDto> securities,
  }) = _StockDetailAccountDto;

  factory StockDetailAccountDto.fromJson(JsonResponse json) => _$StockDetailAccountDtoFromJson(json);
}

@freezed
sealed class StockDetailSecurityDto with _$StockDetailSecurityDto {
  const factory StockDetailSecurityDto({
    @JsonKey(name: 'current_value') required double currentValue,
    @JsonKey(name: 'period_evolution') required double periodEvolution,
    @JsonKey(name: 'period_evolution_percent', defaultValue: 0) required double periodEvolutionPercent,
    @JsonKey(name: 'buying_price', defaultValue: 0) required double buyingPrice,
    required double quantity,
    required StockDetailSecurityInformationDto security,
  }) = _StockDetailSecurityDto;

  factory StockDetailSecurityDto.fromJson(JsonResponse json) => _$StockDetailSecurityDtoFromJson(json);
}

@freezed
sealed class StockDetailSecurityInformationDto with _$StockDetailSecurityInformationDto {
  const factory StockDetailSecurityInformationDto({
    required String symbol,
    required String name,
    @JsonKey(name: 'logo_url') required String logoUrl,
    @JsonKey(name: 'current_price') required double currentPrice,
    @JsonKey(name: 'security_type', unknownEnumValue: StockDetailSecurityTypeDto.unknown)
    required StockDetailSecurityTypeDto type,
  }) = _StockDetailSecurityInformationDto;

  factory StockDetailSecurityInformationDto.fromJson(JsonResponse json) =>
      _$StockDetailSecurityInformationDtoFromJson(json);
}

enum StockDetailSecurityTypeDto {
  @JsonValue('etf')
  etf,
  @JsonValue('equity')
  equity,
  @JsonValue('fund')
  fund,
  @JsonValue('unknown')
  unknown,
}
