import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/application/assets_service.dart';
import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/features/assets/domain/models/asset_type_model.dart';
import 'package:finance/features/assets/domain/models/precious_metal_asset_model.dart';
import 'package:finance/features/dashboard/presentation/providers/providers.dart';
import 'package:finance/features/dashboard/presentation/widgets/dashboard_chart.dart';
import 'package:finance/features/dashboard/presentation/widgets/pie_chart.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PreciousMetalsDashboardPage extends ConsumerWidget {
  const PreciousMetalsDashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.read(appCacheControllerProvider).physicalAssets?.assets ?? [];
    final tradeAPIFailed =
        data.isNotEmpty &&
        data
                .firstWhere(
                  (e) =>
                      e.type == AssetTypeModel.preciousMetal &&
                      (e as PreciousMetalAssetModel).metalType != PreciousMetalTypeModel.other,
                )
                .value ==
            0;

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: ref.read(assetsServiceProvider).refreshPhysicalAssets,
        child: DashboardChart(
          emptyTitle: tradeAPIFailed ? 'Should not be shown' : S.current.preciousMetalsEmptyTitle,
          emptyBody: tradeAPIFailed ? 'Should not be shown' : S.current.preciousMetalsEmptyBody,
          assetUnit: ref.watch(showPreciousMetalWeightControllerProvider) ? 'g' : '€',
          assetsFilter:
              () =>
                  PreciousMetalTypeModel.values
                      .map(
                        (type) => PieData(
                          title: type.toIntlString(),
                          value: data
                              .where((e) => e.type == AssetTypeModel.preciousMetal)
                              .fold(
                                0,
                                (prev, e) =>
                                    ref.watch(showPreciousMetalWeightControllerProvider)
                                        ? prev +=
                                            (e as PreciousMetalAssetModel).metalType == type ? e.totalWeight.toInt() : 0
                                        : prev +=
                                            (e as PreciousMetalAssetModel).metalType == type ? e.total.toInt() : 0,
                              ),
                        ),
                      )
                      .toList()
                    ..removeWhere((e) => e.value == 0),
          categoryFilter: (_) => AssetCategoryModel.savings,
          colorManager: (data, index, selectedIndex) {
            final item = data[index];
            late Color color;

            if (item.title == PreciousMetalTypeModel.gold.toIntlString()) {
              color = Utils.goldColor;
            } else if (item.title == PreciousMetalTypeModel.silver.toIntlString()) {
              color = Utils.silverColor;
            } else {
              color = Utils.moneyColor;
            }

            if (selectedIndex != null && index != selectedIndex) {
              return Color.alphaBlend(Colors.black45, color);
            }
            return color;
          },
        ),
      ),
    );
  }
}
