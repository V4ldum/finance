import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/features/assets/domain/models/finary_assets_model.dart';
import 'package:finance/features/assets/presentation/providers/finary_assets_controller.dart';
import 'package:finance/features/dashboard/presentation/widgets/dashboard_chart.dart';
import 'package:finance/features/dashboard/presentation/widgets/pie_chart.dart';
import 'package:finance/features/dashboard/presentation/widgets/shimmer_dashboard.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:finance/shared/presentation/widgets/default_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';

class DistributionDashboardPage extends ConsumerWidget {
  const DistributionDashboardPage({required this.assetsResult, super.key});

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
              assetsFilter:
                  () =>
                      AssetCategoryModel.values
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
          error: (error, trace) => DefaultErrorWidget(error: error as DisplayableException, trace: trace),
          loading: () => const ShimmerDashboard(),
        ),
      ),
    );
  }
}
