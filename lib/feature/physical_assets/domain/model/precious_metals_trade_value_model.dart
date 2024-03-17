import 'package:finance/feature/physical_assets/data/dto/precious_metal_trade_value_dto.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';

class PreciousMetalTradeValueModel {
  PreciousMetalTradeValueModel({
    required this.metal,
    required this.grams,
    required this.troyOunces,
    required this.change,
    required this.changePercent,
  });

  factory PreciousMetalTradeValueModel.fromDto(PreciousMetalTradeValueDto dto) {
    const troyOunceToGramsRatio = 0.032151;

    return PreciousMetalTradeValueModel(
      metal: dto.data.quote.name == 'Silver'
          ? PreciousMetalTypeModel.silver
          : dto.data.quote.name == 'Gold'
              ? PreciousMetalTypeModel.gold
              : PreciousMetalTypeModel.other,
      grams: dto.data.quote.result.bid * troyOunceToGramsRatio,
      troyOunces: dto.data.quote.result.bid,
      change: dto.data.quote.result.change,
      changePercent: dto.data.quote.result.changePercent,
    );
  }

  final PreciousMetalTypeModel metal;
  final double grams;
  final double troyOunces;
  final double change;
  final double changePercent;
}
