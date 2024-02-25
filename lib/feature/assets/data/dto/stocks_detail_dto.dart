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
    @JsonKey(name: 'current_value') required double total,
    @JsonKey(name: 'period_evolution') required double periodEvolution,
    @JsonKey(name: 'period_evolution_percent', defaultValue: 0) required double periodEvolutionPercent,
    @JsonKey(name: 'buying_price', defaultValue: 0) required double buyingPrice,
    required double quantity,
    required StockDetailSecurityInformationDto security,
  }) = _StockDetailSecurityDto;

  factory StockDetailSecurityDto.fromJson(JsonResponse json) => _$StockDetailSecurityDtoFromJson(json);

  factory StockDetailSecurityDto.fromLiquidityArray(Iterable<StockDetailSecurityDto> array) {
    return StockDetailSecurityDto(
      total: array.fold(0, (prev, e) => prev += e.total),
      periodEvolution: array.fold<double>(0, (prev, e) => prev += e.periodEvolution),
      periodEvolutionPercent: array.fold<double>(0, (prev, e) => prev += e.periodEvolutionPercent) / array.length,
      buyingPrice: array.fold(0, (prev, e) => prev += e.buyingPrice),
      quantity: 1,
      security: StockDetailSecurityInformationDto(
        name: array.first.security.name,
        symbol: array.first.security.symbol,
        isin: array.first.security.isin,
        logoUrl: array.first.security.logoUrl,
        unitPrice: array.fold(0, (prev, e) => prev += e.security.unitPrice),
        type: StockDetailSecurityTypeDto.unknown,
      ),
    );
  }
}

@freezed
sealed class StockDetailSecurityInformationDto with _$StockDetailSecurityInformationDto {
  const factory StockDetailSecurityInformationDto({
    required String name,
    required String symbol,
    @JsonKey(defaultValue: '') required String isin, // International Security Identifier Number (ISIN)
    @JsonKey(name: 'logo_url') required String logoUrl,
    @JsonKey(name: 'current_price') required double unitPrice,
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
