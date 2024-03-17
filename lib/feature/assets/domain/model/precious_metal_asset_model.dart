import 'package:finance/feature/assets/data/dto/local_precious_metal_dto.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';

class PreciousMetalAssetModel extends AssetModel {
  PreciousMetalAssetModel({
    required this.numistaId,
    required super.name,
    required super.amount,
    required super.value,
    required this.purity,
    required this.weight,
    required this.metalType,
  }) : super(category: AssetCategoryModel.savings, type: AssetTypeModel.preciousMetal);

  factory PreciousMetalAssetModel.fromDto(LocalPreciousMetalDto dto, double metalPrice) {
    return PreciousMetalAssetModel(
      numistaId: dto.numistaId,
      name: dto.name,
      amount: dto.amount,
      value: metalPrice * dto.weight * dto.purity / 100,
      purity: dto.purity,
      weight: dto.weight,
      metalType: switch (dto.metalType) {
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
