import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/finary_asset_model.dart';
import 'package:finance/feature/assets/domain/model/finary_assets_model.dart';
import 'package:finance/feature/assets/presentation/provider/finary_assets_controller.dart';
import 'package:finance/feature/dashboard/presentation/provider/providers.dart';
import 'package:finance/feature/dashboard/presentation/widget/dashboard_chart.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart.dart';
import 'package:finance/feature/dashboard/presentation/widget/shimmer_dashboard.dart';
import 'package:finance/shared/presentation/widget/default_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';

class StocksDashboardPage extends ConsumerWidget {
  const StocksDashboardPage({
    required this.assetsResult,
    super.key,
  });

  final AsyncValue<FinaryAssetsModel> assetsResult;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      child: Stack(
        children: [
          RefreshIndicator(
            key: ref.read(selectedPeriodControllerProvider.notifier).refreshIndicatorKey,
            onRefresh: ref.read(finaryAssetsControllerProvider.notifier).refreshAssets,
            child: assetsResult.when(
              data: (assets) => DashboardChart(
                emptyTitle: S.current.stocksEmptyTitle,
                emptyBody: S.current.stocksEmptyBody,
                showPeriodSelector: true,
                assetsFilter: () => assets.assets
                    .where((e) => e.type == AssetTypeModel.stock || e.type == AssetTypeModel.fund)
                    .map(
                      (e) => PieData(
                        title: e.name,
                        value: e.total.toInt(),
                        evolutionPercent: (e as FinaryAssetModel).evolutionPercent,
                      ),
                    )
                    .toList(),
                categoryFilter: (item) => assets.assets.firstWhere((e) => e.name == item.title).category,
              ),
              error: (error, trace) => DefaultErrorWidget(
                error: error as DisplayableException,
                trace: trace,
              ),
              loading: () => const ShimmerDashboard(),
            ),
          ),
        ],
      ),
    );
  }
}
