import 'package:finance/feature/physical_assets/data/dto/sp500_trade_value_dto.dart';

class SP500TradeValueModel {
  SP500TradeValueModel({
    required this.name,
    required this.value,
  });

  factory SP500TradeValueModel.fromDto(SP500TradeValueDto dto) {
    return SP500TradeValueModel(
      name: dto.data.quote.result.name,
      value: dto.data.quote.result.bid,
    );
  }

  final String name;
  final double value;
}
