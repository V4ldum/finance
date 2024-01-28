import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/dashboard/data/dto/investment_summary_dto.dart';
import 'package:finance/feature/dashboard/data/dto/stocks_detail_dto.dart';
import 'package:finance/feature/dashboard/data/dto/user_info_dto.dart';
import 'package:finance/feature/dashboard/domain/model/asset_category_model.dart';
import 'package:finance/feature/dashboard/domain/model/asset_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';

class AssetsModel {
  AssetsModel({
    required this.total,
    required this.evolution,
    required this.evolutionPercent,
    required this.assets,
    required this.lastSync,
  });

  factory AssetsModel.fromDto(
    InvestmentSummaryDto summary,
    UserInfoDto userInfo,
    StocksDetailDto stocks,
    AppCache cache,
  ) {
    return AssetsModel(
      total: summary.result.total.amount.toInt(),
      evolution: summary.result.total.evolution.toInt(),
      evolutionPercent: summary.result.total.evolutionPercent,
      lastSync: DateTime.parse(userInfo.result.lastSync),
      assets: [
        // Stocks
        ...stocks.result.accounts
            .expand((element) => element.securities)
            .map((e) => AssetModel.fromStocksSecurityDto(e, cache)),
        // Accounts
        if (summary.result.distribution.checkingAccounts.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.checkingAccounts,
            summary.result.distribution.checkingAccounts,
            AssetCategoryModel.savings,
          ),
        if (summary.result.distribution.savingsAccounts.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.savingsAccounts,
            summary.result.distribution.savingsAccounts,
            AssetCategoryModel.savings,
          ),
        if (summary.result.distribution.cryptos.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.cryptos,
            summary.result.distribution.cryptos,
            AssetCategoryModel.other,
          ),
        if (summary.result.distribution.fondsEuro.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.fondsEuro,
            summary.result.distribution.fondsEuro,
            AssetCategoryModel.savings,
          ),
        if (summary.result.distribution.realEstates.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.realEstates,
            summary.result.distribution.realEstates,
            AssetCategoryModel.investment,
          ),
        if (summary.result.distribution.startups.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.startups,
            summary.result.distribution.startups,
            AssetCategoryModel.speculative,
          ),
        if (summary.result.distribution.crowdlendings.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.crowdlendings,
            summary.result.distribution.crowdlendings,
            AssetCategoryModel.speculative,
          ),
        if (summary.result.distribution.other.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.otherAssets,
            summary.result.distribution.other,
            AssetCategoryModel.other,
          ),
        if (summary.result.distribution.loans.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.loans,
            summary.result.distribution.loans,
            AssetCategoryModel.other,
          ),
        if (summary.result.distribution.creditAccounts.amount > 0)
          AssetModel.fromSummaryDto(
            S.current.creditAccounts,
            summary.result.distribution.creditAccounts,
            AssetCategoryModel.other,
          ),
      ],
    );
  }

  final int total;
  final int evolution;
  final double evolutionPercent;
  final DateTime lastSync;

  final List<AssetModel> assets;
}
