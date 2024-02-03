import 'package:finance/feature/assets/data/dto/stocks_detail_dto.dart';
import 'package:finance/feature/assets/data/dto/summary_values_dto.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_type_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';

class AssetModel {
  AssetModel({
    required this.name,
    required this.amount,
    required this.value,
    required this.category,
    required this.type,
    this.symbol = '',
  });

  factory AssetModel.fromSummaryDto(
    String name,
    SummaryValuesDto summary,
    AssetCategoryModel category,
  ) {
    return AssetModel(
      name: name,
      amount: 1,
      value: summary.amount,
      category: category,
      type: AssetTypeModel.account,
    );
  }

  factory AssetModel.fromStocksSecurityDto(StockDetailSecurityDto security, AppCache cache) {
    return AssetModel(
      name: security.security.name,
      symbol: security.security.symbol,
      amount: security.quantity,
      value: security.security.currentPrice,
      category: cache.investmentStocksSymbols.contains(security.security.symbol)
          ? AssetCategoryModel.investment // Override default behaviour
          : switch (security.security.type) {
              StockDetailSecurityTypeDto.etf || StockDetailSecurityTypeDto.fund => AssetCategoryModel.investment,
              StockDetailSecurityTypeDto.equity => AssetCategoryModel.speculative, // Bare stock
              StockDetailSecurityTypeDto.unknown => AssetCategoryModel.other, // Liquidity account
            },
      type: switch (security.security.type) {
        StockDetailSecurityTypeDto.etf || StockDetailSecurityTypeDto.fund => AssetTypeModel.fund,
        StockDetailSecurityTypeDto.equity => AssetTypeModel.stock, // Bare stock
        StockDetailSecurityTypeDto.unknown => AssetTypeModel.account, // Liquidity account
      },
    );
  }

  final String name;
  final String symbol;
  final double amount;
  final double value;
  final AssetCategoryModel category;
  final AssetTypeModel type;

  double get total => amount * value;
}

class PreciousMetalAssetModel extends AssetModel {
  PreciousMetalAssetModel({
    required super.name,
    required super.amount,
    required super.value,
    required this.purity,
    required this.metalType,
  }) : super(category: AssetCategoryModel.savings, type: AssetTypeModel.preciousMetal);

  final double purity;
  final PreciousMetalTypeModel metalType;
}
