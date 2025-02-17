import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/data/dtos/investment_summary_dto.dart';
import 'package:finance/features/assets/data/dtos/stocks_detail_dto.dart';
import 'package:finance/features/assets/data/dtos/user_info_dto.dart';
import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:finance/features/assets/domain/models/finary_asset_model.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';

class FinaryAssetsModel {
  FinaryAssetsModel({required this.assets, this.lastSyncFinary});

  factory FinaryAssetsModel.fromDto(
    InvestmentSummaryDto summary,
    UserInfoDto userInfo,
    StocksDetailDto stocks,
    AppCache cache,
  ) {
    // Filtering stocks array to merge all instances of stocks liquidity accounts
    final stocksLiquidityArray = stocks.result.accounts
        .expand((e) => e.securities)
        .where((e) => e.security.type == StockDetailSecurityTypeDto.unknown);
    final mergedLiquidity = StockDetailSecurityDto.fromLiquidityArray(stocksLiquidityArray);

    final filteredStocks =
        stocks.result.accounts.expand((e) => e.securities).toList()
          ..removeWhere((e) => e.security.type == StockDetailSecurityTypeDto.unknown)
          ..add(mergedLiquidity);

    return FinaryAssetsModel(
      lastSyncFinary: DateTime.parse(userInfo.result.lastSync),
      assets: [
        // Stocks
        ...filteredStocks.map((e) => FinaryAssetModel.fromStocksSecurityDto(e, cache)),
        // Accounts
        if (summary.result.distribution.checkingAccounts != null)
          AssetModel.fromSummaryDto(
            S.current.checkingAccounts,
            summary.result.distribution.checkingAccounts!,
            AssetCategoryModel.savings,
          ),
        if (summary.result.distribution.savingsAccounts != null)
          AssetModel.fromSummaryDto(
            S.current.savingsAccounts,
            summary.result.distribution.savingsAccounts!,
            AssetCategoryModel.savings,
          ),
        if (summary.result.distribution.cryptos != null)
          AssetModel.fromSummaryDto(S.current.cryptos, summary.result.distribution.cryptos!, AssetCategoryModel.other),
        if (summary.result.distribution.fondsEuro != null)
          AssetModel.fromSummaryDto(
            S.current.fondsEuro,
            summary.result.distribution.fondsEuro!,
            AssetCategoryModel.savings,
          ),
        if (summary.result.distribution.realEstates != null)
          AssetModel.fromSummaryDto(
            S.current.realEstates,
            summary.result.distribution.realEstates!,
            AssetCategoryModel.investment,
          ),
        if (summary.result.distribution.startups != null)
          AssetModel.fromSummaryDto(
            S.current.startups,
            summary.result.distribution.startups!,
            AssetCategoryModel.speculative,
          ),
        if (summary.result.distribution.crowdlendings != null)
          AssetModel.fromSummaryDto(
            S.current.crowdlendings,
            summary.result.distribution.crowdlendings!,
            AssetCategoryModel.speculative,
          ),
        if (summary.result.distribution.other != null)
          AssetModel.fromSummaryDto(
            S.current.otherAssets,
            summary.result.distribution.other!,
            AssetCategoryModel.other,
          ),
        if (summary.result.distribution.loans != null)
          AssetModel.fromSummaryDto(S.current.loans, summary.result.distribution.loans!, AssetCategoryModel.other),
        if (summary.result.distribution.creditAccounts != null)
          AssetModel.fromSummaryDto(
            S.current.creditAccounts,
            summary.result.distribution.creditAccounts!,
            AssetCategoryModel.other,
          ),
      ],
    );
  }

  final DateTime? lastSyncFinary;
  final List<AssetModel> assets;
}
