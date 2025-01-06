import 'package:finance/features/physical_assets/data/dtos/trade_values_dto.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';

class PreciousMetalTradeValueModel {
  PreciousMetalTradeValueModel({
    required this.metal,
    required this.grams,
    required this.troyOunces,
  });

  factory PreciousMetalTradeValueModel.fromDto(TradeValueDto dto, PreciousMetalTypeModel type) {
    const troyOunceToGramsRatio = 0.032151;

    return PreciousMetalTradeValueModel(
      metal: type,
      grams: dto.price * troyOunceToGramsRatio,
      troyOunces: dto.price,
    );
  }

  final PreciousMetalTypeModel metal;
  final double grams;
  final double troyOunces;
}
