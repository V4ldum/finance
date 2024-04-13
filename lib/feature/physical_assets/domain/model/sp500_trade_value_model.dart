import 'package:finance/feature/physical_assets/data/dto/trade_values_dto.dart';

class SP500TradeValueModel {
  SP500TradeValueModel({
    required this.name,
    required this.value,
  });

  factory SP500TradeValueModel.fromDto(TradeValueDto dto) {
    return SP500TradeValueModel(
      name: 'SP500',
      value: dto.price,
    );
  }

  final String name;
  final double value;
}
