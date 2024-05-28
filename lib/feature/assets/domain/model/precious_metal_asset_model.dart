import 'package:finance/feature/assets/data/dto/physical_assets_dto.dart';
import 'package:finance/feature/assets/data/dto/precious_metal_type_dto.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';

class PreciousMetalAssetModel extends AssetModel {
  PreciousMetalAssetModel({
    required super.id,
    required this.numistaId,
    required super.name,
    required super.amount,
    required super.value,
    required this.purity,
    required this.weight,
    required this.metalType,
  }) : super(category: AssetCategoryModel.savings, type: AssetTypeModel.preciousMetal);

  factory PreciousMetalAssetModel.fromRawAssetDto(RawPhysicalAssetDto dto, double metalPrice) {
    final purity = dto.purity / 100.0;

    return PreciousMetalAssetModel(
      id: dto.id.toString(),
      numistaId: '',
      name: dto.name,
      amount: dto.possessed.toDouble(),
      value: metalPrice * dto.unitWeight * purity / 100,
      purity: purity,
      weight: dto.unitWeight.toDouble(),
      metalType: switch (dto.composition) {
        PreciousMetalTypeDto.gold => PreciousMetalTypeModel.gold,
        PreciousMetalTypeDto.silver => PreciousMetalTypeModel.silver,
        PreciousMetalTypeDto.other => PreciousMetalTypeModel.other,
      },
    );
  }

  factory PreciousMetalAssetModel.fromCoinAssetDto(CoinPhysicalAssetDto dto, double metalPrice) {
    final purity = dto.data.purity / 100.0;

    return PreciousMetalAssetModel(
      id: dto.data.id.toString(),
      numistaId: dto.data.numistaId,
      name: dto.data.name,
      amount: dto.possessed.toDouble(),
      value: metalPrice * dto.data.weight * purity / 100,
      purity: purity,
      weight: dto.data.weight,
      metalType: switch (dto.data.composition) {
        PreciousMetalTypeDto.gold => PreciousMetalTypeModel.gold,
        PreciousMetalTypeDto.silver => PreciousMetalTypeModel.silver,
        PreciousMetalTypeDto.other => PreciousMetalTypeModel.other,
      },
    );
  }

  final String numistaId;
  final double purity;
  final double weight;
  final PreciousMetalTypeModel metalType;

  double get totalWeight => amount * weight;
}
