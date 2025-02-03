import 'package:finance/features/physical_assets/data/dtos/trade_values_dto.dart';

class SP500TradeValueModel {
  SP500TradeValueModel({
    required this.name,
    required this.value,
    required this.lastUpdated,
  });

  factory SP500TradeValueModel.fromDto(TradeValueDto dto) {
    return SP500TradeValueModel(
      name: 'SP500',
      value: dto.price,
      lastUpdated: dto.lastUpdate,
    );
  }

  final String name;
  final double value;
  final DateTime lastUpdated;
}
