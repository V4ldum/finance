import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/coin_data_dto.freezed.dart';
part '_generated/coin_data_dto.g.dart';

@freezed
sealed class CoinDataDto with _$CoinDataDto {
  const factory CoinDataDto({
    required int id,
    @JsonKey(name: 'title', defaultValue: '') required String name,
    @JsonKey(name: 'min_year') required int? minYear,
    @JsonKey(name: 'max_year') required int? maxYear,
    required CoinDataDemonetizationDto? demonetization,
    required CoinDataCompositionDto? composition,
    required double? weight, // g
    required double? size, // mm
    required double? thickness, // mm
    required CoinDataCoinFaceDto? obverse,
    required CoinDataCoinFaceDto? reverse,
    required CoinDataCoinFaceDto? edge,
    required CoinDataCoinFaceDto? watermark,
    @JsonKey(defaultValue: '') required String series,
  }) = _CoinDataDto;

  factory CoinDataDto.fromJson(JsonResponse json) => _$CoinDataDtoFromJson(json);

  factory CoinDataDto.fromHttpResponse(JsonResponse response) {
    return CoinDataDto.fromJson(response);
  }
}

@freezed
sealed class CoinDataCompositionDto with _$CoinDataCompositionDto {
  const factory CoinDataCompositionDto({
    required String text,
  }) = _CoinDataCompositionDto;

  factory CoinDataCompositionDto.fromJson(JsonResponse json) => _$CoinDataCompositionDtoFromJson(json);
}

@freezed
sealed class CoinDataDemonetizationDto with _$CoinDataDemonetizationDto {
  const factory CoinDataDemonetizationDto({
    @JsonKey(name: 'is_demonetized') required bool isDemonetized,
    @JsonKey(name: 'demonetization_date', defaultValue: '') required String demonetizationDate,
  }) = _CoinDataDemonetizationDto;

  factory CoinDataDemonetizationDto.fromJson(JsonResponse json) => _$CoinDataDemonetizationDtoFromJson(json);
}

@freezed
sealed class CoinDataCoinFaceDto with _$CoinDataCoinFaceDto {
  const factory CoinDataCoinFaceDto({
    @JsonKey(defaultValue: '') required String lettering,
    @JsonKey(defaultValue: '') required String description,
    @JsonKey(name: 'picture', defaultValue: '') required String pictureUrl,
    @JsonKey(name: 'thumbnail', defaultValue: '') required String thumbnailUrl,
    @JsonKey(name: 'picture_copyright', defaultValue: '') required String copyright,
  }) = _CoinDataCoinFaceDto;

  factory CoinDataCoinFaceDto.fromJson(JsonResponse json) => _$CoinDataCoinFaceDtoFromJson(json);
}
