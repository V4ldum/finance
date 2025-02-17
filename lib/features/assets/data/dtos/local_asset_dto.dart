import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/local_asset_dto.freezed.dart';
part '_generated/local_asset_dto.g.dart';

@freezed
sealed class LocalAssetDto with _$LocalAssetDto {
  const factory LocalAssetDto({required String name, required double amount, required double value}) = _LocalAssetDto;

  factory LocalAssetDto.fromJson(JsonMapResponse json) => _$LocalAssetDtoFromJson(json);

  factory LocalAssetDto.fromModel(AssetModel model) {
    return LocalAssetDto(name: model.name, amount: model.amount, value: model.value);
  }
}
