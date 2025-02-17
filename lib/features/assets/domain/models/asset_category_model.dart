import 'package:finance/_l10n/_generated/l10n.dart';

enum AssetCategoryModel { speculative, investment, savings, other }

extension AssetCategoryModelExtension on AssetCategoryModel {
  String toIntlString() {
    return switch (this) {
      AssetCategoryModel.speculative => S.current.speculative,
      AssetCategoryModel.investment => S.current.investment,
      AssetCategoryModel.savings => S.current.savings,
      AssetCategoryModel.other => S.current.other,
    };
  }
}
