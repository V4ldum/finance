import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/geographical_repartition_dto.freezed.dart';
part '_generated/geographical_repartition_dto.g.dart';

@freezed
sealed class GeographicalRepartitionDto with _$GeographicalRepartitionDto {
  const factory GeographicalRepartitionDto({
    required GeographicalRepartitionResultDto result,
  }) = _GeographicalRepartitionDto;

  factory GeographicalRepartitionDto.fromJson(JsonMapResponse json) => _$GeographicalRepartitionDtoFromJson(json);

  factory GeographicalRepartitionDto.fromHttpResponse(JsonMapResponse response) {
    return GeographicalRepartitionDto.fromJson(response);
  }
}

@freezed
sealed class GeographicalRepartitionResultDto with _$GeographicalRepartitionResultDto {
  const factory GeographicalRepartitionResultDto({
    required double total,
    required List<GeographicalRepartitionDistributionItemDto> distribution,
  }) = _GeographicalRepartitionResultDto;

  factory GeographicalRepartitionResultDto.fromJson(JsonMapResponse json) =>
      _$GeographicalRepartitionResultDtoFromJson(json);

  factory GeographicalRepartitionResultDto.fromHttpResponse(JsonMapResponse response) {
    return GeographicalRepartitionResultDto.fromJson(response);
  }
}

@freezed
sealed class GeographicalRepartitionDistributionItemDto with _$GeographicalRepartitionDistributionItemDto {
  const factory GeographicalRepartitionDistributionItemDto({
    required String label,
    required double amount,
    required double share,
  }) = _GeographicalRepartitionDistributionItemDto;

  factory GeographicalRepartitionDistributionItemDto.fromJson(JsonMapResponse json) =>
      _$GeographicalRepartitionDistributionItemDtoFromJson(json);

  factory GeographicalRepartitionDistributionItemDto.fromHttpResponse(JsonMapResponse response) {
    return GeographicalRepartitionDistributionItemDto.fromJson(response);
  }
}
