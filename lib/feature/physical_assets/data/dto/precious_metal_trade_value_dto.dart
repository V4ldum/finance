import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/precious_metal_trade_value_dto.freezed.dart';
part '_generated/precious_metal_trade_value_dto.g.dart';

Object? _convertResultsToResult(Map<dynamic, dynamic> json, String key) {
  return (json[key] as List).first;
}

@freezed
sealed class PreciousMetalTradeValueDto with _$PreciousMetalTradeValueDto {
  const factory PreciousMetalTradeValueDto({
    required PreciousMetalTradeValueDataDto data,
  }) = _PreciousMetalTradeValueDto;

  factory PreciousMetalTradeValueDto.fromJson(JsonResponse json) => _$PreciousMetalTradeValueDtoFromJson(json);

  factory PreciousMetalTradeValueDto.fromHttpResponse(JsonResponse response) {
    return PreciousMetalTradeValueDto.fromJson(response);
  }
}

@freezed
sealed class PreciousMetalTradeValueDataDto with _$PreciousMetalTradeValueDataDto {
  const factory PreciousMetalTradeValueDataDto({
    @JsonKey(name: 'GetMetalQuote') required PreciousMetalTradeValueQuoteDto quote,
  }) = _PreciousMetalTradeValueDataDto;

  factory PreciousMetalTradeValueDataDto.fromJson(JsonResponse json) => _$PreciousMetalTradeValueDataDtoFromJson(json);
}

@freezed
sealed class PreciousMetalTradeValueQuoteDto with _$PreciousMetalTradeValueQuoteDto {
  const factory PreciousMetalTradeValueQuoteDto({
    required String name,
    @JsonKey(name: 'results', readValue: _convertResultsToResult) required PreciousMetalTradeValueResultDto result,
  }) = _PreciousMetalTradeValueQuoteDto;

  factory PreciousMetalTradeValueQuoteDto.fromJson(JsonResponse json) =>
      _$PreciousMetalTradeValueQuoteDtoFromJson(json);
}

@freezed
sealed class PreciousMetalTradeValueResultDto with _$PreciousMetalTradeValueResultDto {
  const factory PreciousMetalTradeValueResultDto({
    required double bid,
    required double change,
    @JsonKey(name: 'changePercentage') required double changePercent,
  }) = _PreciousMetalTradeValueResultDto;

  factory PreciousMetalTradeValueResultDto.fromJson(JsonResponse json) =>
      _$PreciousMetalTradeValueResultDtoFromJson(json);
}
