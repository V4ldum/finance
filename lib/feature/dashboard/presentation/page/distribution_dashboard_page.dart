import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
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

class DistributionDashboardPage extends ConsumerWidget {
  const DistributionDashboardPage({
    required this.assetsResult,
    super.key,
  });

  final AsyncValue<FinaryAssetsModel> assetsResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localData = ref.read(appCacheControllerProvider).localAssets;

    return SafeArea(
      child: RefreshIndicator(
        onRefresh: ref.read(finaryAssetsControllerProvider.notifier).refreshAssets,
        child: assetsResult.when(
          data: (assets) {
            final data = [...assets.assets, ...localData];

            return DashboardChart(
              emptyTitle: S.current.genericEmptyTitle,
              emptyBody: S.current.genericEmptyBody,
              assetsFilter: () => AssetCategoryModel.values
                  .map(
                    (category) => PieData(
                      title: category.toIntlString(),
                      value: data.fold(0, (prev, e) => prev += e.category == category ? e.total.toInt() : 0),
                    ),
                  )
                  .toList()
                ..removeWhere((e) => e.value == 0),
              categoryFilter: (item) => data.firstWhere((e) => e.category.toIntlString() == item.title).category,
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
