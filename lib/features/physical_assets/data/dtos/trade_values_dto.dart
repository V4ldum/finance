import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/trade_values_dto.freezed.dart';
part '_generated/trade_values_dto.g.dart';

@freezed
sealed class TradeValuesDto with _$TradeValuesDto {
  const factory TradeValuesDto({
    required TradeValueDto gold,
    required TradeValueDto silver,
    @JsonKey(name: 'sp_500') required TradeValueDto sp500,
  }) = _TradeValuesDto;

  factory TradeValuesDto.fromJson(JsonMapResponse json) => _$TradeValuesDtoFromJson(json);

  factory TradeValuesDto.fromHttpResponse(JsonMapResponse response) {
    return TradeValuesDto.fromJson(response);
  }
}

@freezed
sealed class TradeValueDto with _$TradeValueDto {
  const factory TradeValueDto({
    required double price,
    @JsonKey(name: 'last_update') required DateTime lastUpdate,
  }) = _TradeValueDto;

  factory TradeValueDto.fromJson(JsonMapResponse json) => _$TradeValueDtoFromJson(json);

  factory TradeValueDto.fromHttpResponse(JsonMapResponse response) {
    return TradeValueDto.fromJson(response);
  }
}
