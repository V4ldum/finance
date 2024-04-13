import 'package:finance/feature/physical_assets/data/dto/trade_values_dto.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';

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
