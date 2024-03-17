import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/model/finary_assets_model.dart';
import 'package:finance/feature/dashboard/presentation/page/accounts_dashboard_page.dart';
import 'package:finance/feature/dashboard/presentation/page/distribution_dashboard_page.dart';
import 'package:finance/feature/dashboard/presentation/page/precious_metals_dashboard_page.dart';
import 'package:finance/feature/dashboard/presentation/page/stocks_dashboard_page.dart';
import 'package:finance/feature/dashboard/presentation/widget/last_sync_text.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/providers.g.dart';

@riverpod
class SelectedChartSegmentController extends _$SelectedChartSegmentController {
  @override
  int? build() => null;

  void onSelectedSegmentChanged(int index) {
    if (index < 0) {
      return;
    }

    if (index == state) {
      state = null;
      return;
    }

    state = index;
  }

  void resetState() {
    state = null;
  }
}

@riverpod
class ShowPreciousMetalWeightController extends _$ShowPreciousMetalWeightController {
  @override
  bool build() => false;

  void swap() {
    state = !state;
  }
}

@riverpod
class DashboardTabController extends _$DashboardTabController {
  @override
  int build() {
    return 0;
  }

  void onTabSelected(int value) {
    if (value != state) {
      ref.read(selectedChartSegmentControllerProvider.notifier).resetState();
      state = value;
    }
  }

  TabInformation getCurrentPage(AsyncValue<FinaryAssetsModel> assetsResult) {
    return switch (state) {
      0 => TabInformation(
          title: S.current.stocks,
          body: StocksDashboardPage(assetsResult: assetsResult),
          actions: [
            assetsResult.maybeWhen(
              data: (assets) => assets.lastSyncFinary != null //
                  ? LastSyncText(sync: assets.lastSyncFinary!)
                  : const SizedBox(),
              orElse: () => const SizedBox(),
            ),
            const SizedBox(width: AppPadding.s),
          ],
        ),
      1 => TabInformation(
          title: S.current.accounts,
          body: AccountsDashboardPage(assetsResult: assetsResult),
          actions: [
            assetsResult.maybeWhen(
              data: (assets) => assets.lastSyncFinary != null //
                  ? LastSyncText(sync: assets.lastSyncFinary!)
                  : const SizedBox(),
              orElse: () => const SizedBox(),
            ),
            const SizedBox(width: AppPadding.s),
          ],
        ),
      2 => TabInformation(
          title: S.current.preciousMetals,
          body: const PreciousMetalsDashboardPage(),
          actions: [
            Consumer(
              builder: (BuildContext context, WidgetRef ref, Widget? child) {
                return IconButton(
                  onPressed: ref.read(showPreciousMetalWeightControllerProvider.notifier).swap,
                  icon: ref.watch(showPreciousMetalWeightControllerProvider)
                      ? const Icon(Icons.attach_money)
                      : const Icon(Icons.monitor_weight_outlined),
                );
              },
            ),
          ],
        ),
      3 => TabInformation(
          title: S.current.distribution,
          body: DistributionDashboardPage(assetsResult: assetsResult),
          actions: [
            assetsResult.maybeWhen(
              data: (assets) => assets.lastSyncFinary != null //
                  ? LastSyncText(sync: assets.lastSyncFinary!)
                  : const SizedBox(),
              orElse: () => const SizedBox(),
            ),
            const SizedBox(width: AppPadding.s),
          ],
        ),
      _ => throw UnimplementedError('There are no page n°$state'),
    };
  }
}

class TabInformation {
  const TabInformation({
    required this.title,
    required this.body,
    required this.actions,
  });

  final String title;
  final Widget body;
  final List<Widget> actions;
}
