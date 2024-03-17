import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/sp500_trade_value_dto.freezed.dart';
part '_generated/sp500_trade_value_dto.g.dart';

Object? _convertResultsToResult(Map<dynamic, dynamic> json, String key) {
  return (json[key] as List).first;
}

@freezed
sealed class SP500TradeValueDto with _$SP500TradeValueDto {
  const factory SP500TradeValueDto({
    required SP500TradeValueDataDto data,
  }) = _SP500TradeValueDto;

  factory SP500TradeValueDto.fromJson(JsonResponse json) => _$SP500TradeValueDtoFromJson(json);

  factory SP500TradeValueDto.fromHttpResponse(JsonResponse response) {
    return SP500TradeValueDto.fromJson(response);
  }
}

@freezed
sealed class SP500TradeValueDataDto with _$SP500TradeValueDataDto {
  const factory SP500TradeValueDataDto({
    @JsonKey(name: 'GetBarchartQuotes') required SP500TradeValueQuoteDto quote,
  }) = _SP500TradeValueDataDto;

  factory SP500TradeValueDataDto.fromJson(JsonResponse json) => _$SP500TradeValueDataDtoFromJson(json);
}

@freezed
sealed class SP500TradeValueQuoteDto with _$SP500TradeValueQuoteDto {
  const factory SP500TradeValueQuoteDto({
    @JsonKey(name: 'results', readValue: _convertResultsToResult) required SP500TradeValueResultDto result,
  }) = _SP500TradeValueQuoteDto;

  factory SP500TradeValueQuoteDto.fromJson(JsonResponse json) => _$SP500TradeValueQuoteDtoFromJson(json);
}

@freezed
sealed class SP500TradeValueResultDto with _$SP500TradeValueResultDto {
  const factory SP500TradeValueResultDto({
    required String name,
    @JsonKey(name: 'lastPrice') required double bid,
  }) = _SP500TradeValueResultDto;

  factory SP500TradeValueResultDto.fromJson(JsonResponse json) => _$SP500TradeValueResultDtoFromJson(json);
}
