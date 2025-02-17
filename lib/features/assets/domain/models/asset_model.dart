import 'package:finance/features/assets/data/dtos/physical_assets_dto.dart';
import 'package:finance/features/assets/data/dtos/summary_values_dto.dart';
import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/features/assets/domain/models/asset_type_model.dart';

class AssetModel {
  AssetModel({
    required this.id,
    required this.name,
    required this.amount,
    required this.value,
    required this.category,
    required this.type,
    this.symbol = '',
  });

  factory AssetModel.fromSummaryDto(String name, SummaryValuesDto summary, AssetCategoryModel category) {
    return AssetModel(
      id: '',
      name: name,
      amount: 1,
      value: summary.amount,
      category: category,
      type: AssetTypeModel.account,
    );
  }

  factory AssetModel.fromPhysicalAssetDto(CashPhysicalAssetDto dto) {
    return AssetModel(
      id: dto.id.toString(),
      name: dto.name,
      amount: dto.possessed.toDouble(),
      value: dto.unitValue.toDouble(),
      category: AssetCategoryModel.speculative,
      type: AssetTypeModel.cash,
    );
  }

  final String id;
  final String name;
  final String symbol;
  final double amount;
  final double value;
  final AssetCategoryModel category;
  final AssetTypeModel type;

  double get total => amount * value;
}
