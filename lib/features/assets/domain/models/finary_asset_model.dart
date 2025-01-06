import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/data/dtos/stocks_detail_dto.dart';
import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:finance/features/assets/domain/models/asset_type_model.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';

class FinaryAssetModel extends AssetModel {
  FinaryAssetModel({
    required this.evolution,
    required this.evolutionPercent,
    required super.id,
    required super.name,
    required super.amount,
    required super.value,
    required super.category,
    required super.type,
    super.symbol = '',
  });

  factory FinaryAssetModel.fromStocksSecurityDto(StockDetailSecurityDto security, AppCache cache) {
    return FinaryAssetModel(
      evolution: security.evolution,
      evolutionPercent: security.evolutionPercent,
      id: security.security.isin,
      name: security.security.type == StockDetailSecurityTypeDto.unknown
          ? S.current.stocksLiquidity
          : security.security.name,
      symbol: security.security.symbol,
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

  final double evolution;
  final double evolutionPercent;
}
