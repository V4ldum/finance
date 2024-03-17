import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/coins_query_dto.freezed.dart';
part '_generated/coins_query_dto.g.dart';

@freezed
sealed class CoinsQueryDto with _$CoinsQueryDto {
  const factory CoinsQueryDto({
    @JsonKey(name: 'types', defaultValue: []) required List<CoinQueryItemDto> coins,
  }) = _CoinsQueryDto;

  factory CoinsQueryDto.fromJson(JsonResponse json) => _$CoinsQueryDtoFromJson(json);

  factory CoinsQueryDto.fromHttpResponse(JsonResponse response) {
    return CoinsQueryDto.fromJson(response);
  }
}

@freezed
sealed class CoinQueryItemDto with _$CoinQueryItemDto {
  const factory CoinQueryItemDto({
    @JsonKey(defaultValue: 0) required int id,
    @JsonKey(name: 'title', defaultValue: '') required String name,
    @JsonKey(name: 'min_year') required int? minYear,
    @JsonKey(name: 'max_year') required int? maxYear,
    @JsonKey(name: 'obverse_thumbnail', defaultValue: '') required String obverseThumbnailUrl,
    @JsonKey(name: 'reverse_thumbnail', defaultValue: '') required String reverseThumbnailUrl,
  }) = _CoinQueryItemDto;

  factory CoinQueryItemDto.fromJson(JsonResponse json) => _$CoinQueryItemDtoFromJson(json);
}
