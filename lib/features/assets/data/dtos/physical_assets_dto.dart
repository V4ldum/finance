import 'package:finance/features/assets/data/dtos/precious_metal_type_dto.dart';
import 'package:finance/features/physical_assets/data/dtos/coin_dto.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/physical_assets_dto.freezed.dart';
part '_generated/physical_assets_dto.g.dart';

@freezed
sealed class PhysicalAssetsDto with _$PhysicalAssetsDto {
  const factory PhysicalAssetsDto({
    @JsonKey(name: 'raw_assets') required List<RawPhysicalAssetDto> rawAssets,
    @JsonKey(name: 'cash_assets') required List<CashPhysicalAssetDto> cashAssets,
    @JsonKey(name: 'coin_assets') required List<CoinPhysicalAssetDto> coinAssets,
  }) = _PhysicalAssetsDto;

  factory PhysicalAssetsDto.fromJson(JsonMapResponse json) => _$PhysicalAssetsDtoFromJson(json);

  factory PhysicalAssetsDto.fromHttpResponse(JsonMapResponse response) {
    return PhysicalAssetsDto.fromJson(response);
  }
}

@freezed
sealed class RawPhysicalAssetDto with _$RawPhysicalAssetDto {
  const factory RawPhysicalAssetDto({
    required int id,
    required String name,
    required int possessed,
    @JsonKey(name: 'unit_weight') required int unitWeight,
    required PreciousMetalTypeDto composition,
    required int purity,
  }) = _RawPhysicalAssetDto;

  factory RawPhysicalAssetDto.fromJson(JsonMapResponse json) => _$RawPhysicalAssetDtoFromJson(json);
}

@freezed
sealed class CashPhysicalAssetDto with _$CashPhysicalAssetDto {
  const factory CashPhysicalAssetDto({
    required int id,
    required String name,
    required int possessed,
    @JsonKey(name: 'unit_value') required int unitValue,
  }) = _CashPhysicalAssetDto;

  factory CashPhysicalAssetDto.fromJson(JsonMapResponse json) => _$CashPhysicalAssetDtoFromJson(json);
}

@freezed
sealed class CoinPhysicalAssetDto with _$CoinPhysicalAssetDto {
  const factory CoinPhysicalAssetDto({required int possessed, @JsonKey(name: 'coin_data') required CoinDto data}) =
      _CoinPhysicalAssetDto;

  factory CoinPhysicalAssetDto.fromJson(JsonMapResponse json) => _$CoinPhysicalAssetDtoFromJson(json);
}
