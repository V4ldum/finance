import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/finary_assets_model.dart';
import 'package:finance/feature/assets/presentation/provider/finary_assets_controller.dart';
import 'package:finance/feature/dashboard/presentation/widget/dashboard_chart.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart.dart';
import 'package:finance/feature/dashboard/presentation/widget/shimmer_dashboard.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:finance/shared/presentation/widget/default_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';

class AccountsDashboardPage extends ConsumerWidget {
  const AccountsDashboardPage({
    required this.assetsResult,
    super.key,
  });

  final AsyncValue<FinaryAssetsModel> assetsResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final physicalAssets = ref.read(appCacheControllerProvider).physicalAssets?.assets ?? [];

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: ref.read(finaryAssetsControllerProvider.notifier).refreshAssets,
        child: assetsResult.when(
          data: (assets) {
            final data = [...assets.assets, ...physicalAssets];

            return DashboardChart(
              emptyTitle: S.current.genericEmptyTitle,
              emptyBody: S.current.genericEmptyBody,
              assetsFilter: () {
                final accounts = data
                    .where((e) => e.type == AssetTypeModel.account)
                    .map((e) => PieData(title: e.name, value: e.total.toInt()));
                final preciousMetals = PieData(
                  title: S.current.preciousMetals,
                  value: data
                      .where((e) => e.type == AssetTypeModel.preciousMetal)
                      .fold(0, (prev, e) => prev += e.total.toInt()),
                );
                final cash = PieData(
                  title: S.current.cash,
                  value: data.where((e) => e.type == AssetTypeModel.cash).fold(0, (prev, e) => prev += e.total.toInt()),
                );

                return [
                  ...accounts,
                  if (preciousMetals.value > 0) preciousMetals,
                  if (cash.value > 0) cash,
                ];
              },
              categoryFilter: (item) {
                if (item.title == S.current.preciousMetals || item.title == S.current.cash) {
                  return AssetCategoryModel.savings;
                }
                return data.firstWhere((e) => e.name == item.title).category;
              },
            );
          },
          error: (error, trace) => DefaultErrorWidget(
            error: error as DisplayableException,
            trace: trace,
          ),
          loading: () => const ShimmerDashboard(),
        ),
      ),
    );
  }
}
