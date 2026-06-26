import 'package:finance/features/physical_assets/data/dtos/prices_dto.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';

class PreciousMetalPriceModel {
  PreciousMetalPriceModel({
    required this.metal,
    required this.grams,
    required this.troyOunces,
    required this.lastUpdated,
  });

  factory PreciousMetalPriceModel.fromDto(PriceDto dto, PreciousMetalTypeModel type) {
    const troyOunceToGramsRatio = 0.032151;

    return PreciousMetalPriceModel(
      metal: type,
      grams: dto.price * troyOunceToGramsRatio,
      troyOunces: dto.price,
      lastUpdated: dto.lastUpdate,
    );
  }

  final PreciousMetalTypeModel metal;
  final double grams;
  final double troyOunces;
  final DateTime lastUpdated;
}
