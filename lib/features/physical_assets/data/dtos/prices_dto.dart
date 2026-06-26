import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/prices_dto.freezed.dart';
part '_generated/prices_dto.g.dart';

@freezed
sealed class PricesDto with _$PricesDto {
  const factory PricesDto({
    required PriceDto gold,
    required PriceDto silver,
    @JsonKey(name: 'sp_500') required PriceDto sp500,
  }) = _PricesDto;

  factory PricesDto.fromJson(JsonMapResponse json) => _$PricesDtoFromJson(json);

  factory PricesDto.fromHttpResponse(JsonMapResponse response) {
    return PricesDto.fromJson(response);
  }
}

@freezed
sealed class PriceDto with _$PriceDto {
  const factory PriceDto({required double price, @JsonKey(name: 'last_update') required DateTime lastUpdate}) =
      _PriceDto;

  factory PriceDto.fromJson(JsonMapResponse json) => _$PriceDtoFromJson(json);

  factory PriceDto.fromHttpResponse(JsonMapResponse response) {
    return PriceDto.fromJson(response);
  }
}
