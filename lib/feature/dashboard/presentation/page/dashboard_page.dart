import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/dashboard/domain/model/asset_category_model.dart';
import 'package:finance/feature/dashboard/presentation/provider/assets_controller.dart';
import 'package:finance/feature/dashboard/presentation/provider/providers.dart';
import 'package:finance/feature/dashboard/presentation/widget/asset_category_icon.dart';
import 'package:finance/feature/dashboard/presentation/widget/last_sync_text.dart';
import 'package:finance/feature/dashboard/presentation/widget/linear_chart_item.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart_center.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/presentation/widget/app_navigation_drawer.dart';
import 'package:finance/shared/presentation/widget/hide_values_icon_button.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:meta_package/meta_package.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({
    super.key,
  });

  List<Color> get _colors => [
        Colors.red,
        Colors.orange,
        Colors.green,
        Colors.blueAccent,
        Colors.deepPurple,
      ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChartSegment = ref.watch(selectedChartSegmentControllerProvider);
    final assetsResult = ref.watch(assetsControllerProvider);
    final tabData = ref.read(dashboardTabControllerProvider.notifier).getCurrentTabData();

    return Scaffold(
      drawer: const AppNavigationDrawer(),
      appBar: AppBar(
        title: Text(tabData.title),
        actions: [
          assetsResult.maybeWhen(
            data: (data) => LastSyncText(sync: data.lastSync),
            orElse: () => const SizedBox(),
          ),
          const SizedBox(width: AppPadding.s),
          const HideValueIconButton(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: ref.watch(dashboardTabControllerProvider),
        onDestinationSelected: ref.read(dashboardTabControllerProvider.notifier).onTabSelected,
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.account_balance_outlined),
            selectedIcon: const Icon(Icons.account_balance),
            label: S.current.stocks,
          ),
          NavigationDestination(
            icon: const Icon(Icons.account_balance_wallet_outlined),
            selectedIcon: const Icon(Icons.account_balance_wallet),
            label: S.current.accounts,
          ),
          NavigationDestination(
            icon: const Icon(Icons.data_usage_outlined),
            selectedIcon: const Icon(Icons.data_usage),
            label: S.current.distribution,
          ),
        ],
      ),
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: ref.read(assetsControllerProvider.notifier).refreshAssets,
          child: assetsResult.when(
            error: (error, _) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    (error as DisplayableException).title,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: AppPadding.s),
                  Text(
                    error.message,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              );
            },
            loading: () {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            data: (assets) {
              final data = tabData.data(assets);
              final total = tabData.total(assets);

              return SingleChildScrollView(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.s, horizontal: AppPadding.m),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width * .6,
                      child: PieChart(
                        data: data,
                        colors: _colors,
                        selectedIndex: selectedChartSegment,
                        onSectionTaped:
                            ref.read(selectedChartSegmentControllerProvider.notifier).onSelectedSegmentChanged,
                        child: PieChartCenter(
                          top:
                              '${NumberFormat().format(selectedChartSegment == null ? total : data[selectedChartSegment].value)} €',
                          bottom: selectedChartSegment == null ? S.current.total : data[selectedChartSegment].title,
                          size: 170,
                        ),
                      ),
                    ),
                    const SizedBox(height: AppPadding.l),
                    ...List.generate(
                      data.length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: AppPadding.xs),
                          child: LinearChartItem(
                            title: data[index].title,
                            value: data[index].value.toDouble(),
                            percent: data[index].value / total,
                            color: Helpers.getNextChartColor(
                              colors: _colors,
                              current: index,
                              max: data.length,
                            ),
                            leading: AssetCategoryIcon(
                              category: assets.assets
                                  .firstWhere(
                                    (element) =>
                                        element.name == data[index].title ||
                                        element.category.toIntlString() == data[index].title,
                                  )
                                  .category,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
