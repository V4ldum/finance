import 'package:finance/features/assets/data/dtos/precious_metal_type_dto.dart';
import 'package:finance/features/assets/domain/models/precious_metal_asset_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta_package/meta_package.dart';

part '_generated/local_precious_metal_dto.freezed.dart';
part '_generated/local_precious_metal_dto.g.dart';

@freezed
sealed class LocalPreciousMetalDto with _$LocalPreciousMetalDto {
  const factory LocalPreciousMetalDto({
    required String numistaId,
    required String name,
    required double amount,
    required double purity,
    required double weight,
    required PreciousMetalTypeDto metalType,
  }) = _LocalPreciousMetalDto;

  factory LocalPreciousMetalDto.fromJson(JsonMapResponse json) => _$LocalPreciousMetalDtoFromJson(json);

  factory LocalPreciousMetalDto.fromModel(PreciousMetalAssetModel model) {
    return LocalPreciousMetalDto(
      numistaId: model.numistaId,
      name: model.name,
      amount: model.amount,
      purity: model.purity,
      weight: model.weight,
      metalType: switch (model.metalType) {
        PreciousMetalTypeModel.gold => PreciousMetalTypeDto.gold,
        PreciousMetalTypeModel.silver => PreciousMetalTypeDto.silver,
        PreciousMetalTypeModel.other => PreciousMetalTypeDto.other,
      },
    );
  }
}
