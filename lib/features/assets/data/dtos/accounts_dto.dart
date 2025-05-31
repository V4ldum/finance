import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/accounts_dto.freezed.dart';
part '_generated/accounts_dto.g.dart';

@freezed
sealed class AccountsDto with _$AccountsDto {
  const factory AccountsDto({
    @JsonKey(name: 'result') required List<AccountDto> accounts,
  }) = _AccountsDto;

  factory AccountsDto.fromJson(JsonMapResponse json) => _$AccountsDtoFromJson(json);

  factory AccountsDto.fromHttpResponse(JsonMapResponse response) {
    return AccountsDto.fromJson(response);
  }
}

@freezed
sealed class AccountDto with _$AccountDto {
  const factory AccountDto({
    required String name,
    required double balance,
    @JsonKey(defaultValue: [])
    required List<StockAccountSecurityDto> securities, // Only useful for the investment account
  }) = _AccountDto;

  factory AccountDto.fromJson(JsonMapResponse json) => _$AccountDtoFromJson(json);
}

@freezed
sealed class StockAccountSecurityDto with _$StockAccountSecurityDto {
  const factory StockAccountSecurityDto({
    @JsonKey(name: 'current_value') required double total,
    @JsonKey(name: 'evolution', defaultValue: 0) required double evolution,
    @JsonKey(name: 'evolution_percent', defaultValue: 0) required double evolutionPercent,
    @JsonKey(name: 'buying_price', defaultValue: 0) required double buyingPrice,
    required double quantity,
    required StockAccountSecurityInformationDto security,
  }) = _StockAccountSecurityDto;

  factory StockAccountSecurityDto.fromJson(JsonMapResponse json) => _$StockAccountSecurityDtoFromJson(json);

  factory StockAccountSecurityDto.fromLiquidityArray(Iterable<StockAccountSecurityDto> array) {
    return StockAccountSecurityDto(
      total: array.fold(0, (prev, e) => prev += e.total),
      evolution: array.fold<double>(0, (prev, e) => prev += e.evolution),
      evolutionPercent: array.fold<double>(0, (prev, e) => prev += e.evolutionPercent) / array.length,
      buyingPrice: array.fold(0, (prev, e) => prev += e.buyingPrice),
      quantity: 1,
      security: StockAccountSecurityInformationDto(
        name: array.first.security.name,
        symbol: array.first.security.symbol,
        isin: array.first.security.isin,
        logoUrl: array.first.security.logoUrl,
        unitPrice: array.fold(0, (prev, e) => prev += e.security.unitPrice),
        type: StockAccountSecurityTypeDto.unknown,
      ),
    );
  }
}

@freezed
sealed class StockAccountSecurityInformationDto with _$StockAccountSecurityInformationDto {
  const factory StockAccountSecurityInformationDto({
    required String name,
    required String symbol,
    @JsonKey(defaultValue: '') required String isin, // International Security Identifier Number (ISIN)
    @JsonKey(name: 'logo_url') required String logoUrl,
    @JsonKey(name: 'current_price') required double unitPrice,
    @JsonKey(name: 'security_type', unknownEnumValue: StockAccountSecurityTypeDto.unknown)
    required StockAccountSecurityTypeDto type,
  }) = _StockAccountSecurityInformationDto;

  factory StockAccountSecurityInformationDto.fromJson(JsonMapResponse json) =>
      _$StockAccountSecurityInformationDtoFromJson(json);
}

enum StockAccountSecurityTypeDto {
  @JsonValue('etf')
  etf,
  @JsonValue('equity')
  equity,
  @JsonValue('fund')
  fund,
  @JsonValue('unknown')
  unknown,
}
