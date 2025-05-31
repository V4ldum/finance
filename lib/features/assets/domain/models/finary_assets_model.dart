import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/data/dtos/accounts_dto.dart';
import 'package:finance/features/assets/data/dtos/user_info_dto.dart';
import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:finance/features/assets/domain/models/finary_asset_model.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';

class FinaryAssetsModel {
  FinaryAssetsModel({required this.assets, this.lastSyncFinary});

  factory FinaryAssetsModel.fromDto(
    UserInfoDto userInfo,
    AccountsDto checkingAccounts,
    AccountsDto savingsAccounts,
    AccountsDto stocks,
    AppCache cache,
  ) {
    return FinaryAssetsModel(
      lastSyncFinary: DateTime.parse(userInfo.result.lastSync),
      assets: [
        // Stocks
        ...stocks.accounts
            .expand((e) => e.securities)
            .map((e) => FinaryAssetModel.fromStockAccountSecurityDto(e, cache)),
        // Accounts
        if (checkingAccounts.accounts.isNotEmpty)
          AssetModel.fromAccountDto(S.current.checkingAccounts, checkingAccounts.accounts, AssetCategoryModel.savings),
        if (savingsAccounts.accounts.isNotEmpty)
          AssetModel.fromAccountDto(S.current.savingsAccounts, savingsAccounts.accounts, AssetCategoryModel.savings),
      ],
    );
  }

  final DateTime? lastSyncFinary;
  final List<AssetModel> assets;
}
