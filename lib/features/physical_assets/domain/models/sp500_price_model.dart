import 'package:finance/features/physical_assets/data/dtos/prices_dto.dart';

class SP500PriceModel {
  SP500PriceModel({required this.name, required this.value, required this.lastUpdated});

  factory SP500PriceModel.fromDto(PriceDto dto) {
    return SP500PriceModel(name: 'SP500', value: dto.price, lastUpdated: dto.lastUpdate);
  }

  final String name;
  final double value;
  final DateTime lastUpdated;
}
