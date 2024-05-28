import 'package:finance/feature/assets/data/dto/precious_metal_type_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/coin_dto.freezed.dart';
part '_generated/coin_dto.g.dart';

@freezed
sealed class CoinDto with _$CoinDto {
  const factory CoinDto({
    required int id,
    @JsonKey(name: 'numista_id') required String numistaId,
    required String name,
    required double weight,
    required double size,
    required double? thickness,
    @JsonKey(name: 'min_year') required String minYear,
    @JsonKey(name: 'max_year', defaultValue: '') required String maxYear,
    required PreciousMetalTypeDto composition,
    required int purity,
    required CoinFaceDto? obverse,
    required CoinFaceDto? reverse,
    required CoinFaceDto? edge,
  }) = _CoinDto;

  factory CoinDto.fromJson(JsonMapResponse json) => _$CoinDtoFromJson(json);

  factory CoinDto.fromHttpResponse(JsonMapResponse response) {
    return CoinDto.fromJson(response);
  }
}

@freezed
sealed class CoinFaceDto with _$CoinFaceDto {
  const factory CoinFaceDto({
    @JsonKey(name: 'image_url', defaultValue: '') required String image,
    @JsonKey(name: 'thumbnail_url', defaultValue: '') required String thumbnail,
    @JsonKey(defaultValue: '') required String lettering,
    @JsonKey(defaultValue: '') required String description,
    @JsonKey(defaultValue: '') required String copyright,
  }) = _CoinFaceDto;

  factory CoinFaceDto.fromJson(JsonMapResponse json) => _$CoinFaceDtoFromJson(json);
}
