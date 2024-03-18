import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';
import 'package:finance/feature/dashboard/presentation/provider/providers.dart';
import 'package:finance/feature/dashboard/presentation/widget/dashboard_chart.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreciousMetalsDashboardPage extends ConsumerWidget {
  const PreciousMetalsDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.read(appCacheControllerProvider).localAssets;
    final tradeAPIFailed = data
            .firstWhere(
              (e) =>
                  e.type == AssetTypeModel.preciousMetal &&
                  (e as PreciousMetalAssetModel).metalType != PreciousMetalTypeModel.other,
            )
            .value ==
        0;

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: ref.read(assetsServiceProvider).getLocalAssets,
        child: DashboardChart(
          emptyTitle: tradeAPIFailed ? 'toto' : S.current.preciousMetalsEmptyTitle,
          emptyBody: tradeAPIFailed ? 'toto' : S.current.preciousMetalsEmptyBody,
          assetUnit: ref.watch(showPreciousMetalWeightControllerProvider) ? 'g' : '€',
          assetsFilter: () => PreciousMetalTypeModel.values
              .map(
                (type) => PieData(
                  title: type.toIntlString(),
                  value: data.where((e) => e.type == AssetTypeModel.preciousMetal).fold(
                        0,
                        (prev, e) => ref.watch(showPreciousMetalWeightControllerProvider)
                            ? prev += (e as PreciousMetalAssetModel).metalType == type ? e.totalWeight.toInt() : 0
                            : prev += (e as PreciousMetalAssetModel).metalType == type ? e.total.toInt() : 0,
                      ),
                ),
              )
              .toList()
            ..removeWhere((e) => e.value == 0),
          categoryFilter: (_) => AssetCategoryModel.savings,
          colorManager: (data, index) {
            final item = data[index];

            if (item.title == PreciousMetalTypeModel.gold.toIntlString()) {
              return Utils.goldColor;
            }
            if (item.title == PreciousMetalTypeModel.silver.toIntlString()) {
              return Utils.silverColor;
            }
            return Utils.moneyColor;
          },
        ),
      ),
    );
  }
}
