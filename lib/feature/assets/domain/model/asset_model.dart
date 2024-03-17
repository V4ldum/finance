import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/data/dto/local_asset_dto.dart';
import 'package:finance/feature/assets/data/dto/stocks_detail_dto.dart';
import 'package:finance/feature/assets/data/dto/summary_values_dto.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';

class AssetModel {
  AssetModel({
    required this.name,
    required this.amount,
    required this.value,
    required this.category,
    required this.type,
    this.symbol = '',
    this.isin = '',
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
      name: security.security.type == StockDetailSecurityTypeDto.unknown
          ? S.current.stocksLiquidity
          : security.security.name,
      symbol: security.security.symbol,
      isin: security.security.isin,
      amount: security.quantity,
      value: security.security.unitPrice,
      category: switch (security.security.type) {
        StockDetailSecurityTypeDto.etf || StockDetailSecurityTypeDto.fund => AssetCategoryModel.investment,
        StockDetailSecurityTypeDto.equity => cache.investmentStocksSymbols.contains(security.security.symbol)
            // Bare stock
            ? AssetCategoryModel.investment // Override default behaviour:
            : AssetCategoryModel.speculative,
        StockDetailSecurityTypeDto.unknown => AssetCategoryModel.other, // Liquidity account
      },
      type: switch (security.security.type) {
        StockDetailSecurityTypeDto.etf || StockDetailSecurityTypeDto.fund => AssetTypeModel.fund,
        StockDetailSecurityTypeDto.equity => AssetTypeModel.stock, // Bare stock
        StockDetailSecurityTypeDto.unknown => AssetTypeModel.account, // Liquidity account
      },
    );
  }

  factory AssetModel.fromLocalDto(LocalAssetDto dto) {
    return AssetModel(
      name: dto.name,
      amount: dto.amount,
      value: dto.value,
      category: AssetCategoryModel.speculative,
      type: AssetTypeModel.cash,
    );
  }

  final String name;
  final String symbol;
  final String isin;
  final double amount;
  final double value;
  final AssetCategoryModel category;
  final AssetTypeModel type;

  double get total => amount * value;
}
