import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/summary_values_dto.freezed.dart';
part '_generated/summary_values_dto.g.dart';

@freezed
sealed class SummaryValuesDto with _$SummaryValuesDto {
  const factory SummaryValuesDto({
    required double amount,
    required double evolution,
    @JsonKey(name: 'evolution_percent', defaultValue: 0) required double evolutionPercent,
  }) = _SummaryValuesDto;

  factory SummaryValuesDto.fromJson(JsonResponse json) => _$SummaryValuesDtoFromJson(json);

  factory SummaryValuesDto.fromHttpResponse(JsonResponse response) {
    return SummaryValuesDto.fromJson(response);
  }
}
