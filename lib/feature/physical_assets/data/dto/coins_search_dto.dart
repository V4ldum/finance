import 'package:finance/feature/physical_assets/data/dto/coin_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/coins_search_dto.freezed.dart';
part '_generated/coins_search_dto.g.dart';

@freezed
sealed class CoinsSearchDto with _$CoinsSearchDto {
  const factory CoinsSearchDto({
    @JsonKey(name: 'query', defaultValue: []) required List<CoinDto> coins,
  }) = _CoinsSearchDto;

  factory CoinsSearchDto.fromJson(JsonListResponse json) => _$CoinsSearchDtoFromJson({'query': json});

  factory CoinsSearchDto.fromHttpResponse(JsonListResponse response) {
    return CoinsSearchDto.fromJson(response);
  }
}
