import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/presentation/provider/finary_assets_controller.dart';
import 'package:finance/feature/dashboard/presentation/provider/providers.dart';
import 'package:finance/shared/presentation/widget/app_navigation_drawer.dart';
import 'package:finance/shared/presentation/widget/hide_values_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print(GoRouter.of(context).routerDelegate.currentConfiguration.matches);
    final dashboardAssetsResult = ref.watch(finaryAssetsControllerProvider);
    final tabInfo = ref.read(dashboardTabControllerProvider.notifier).getCurrentPage(dashboardAssetsResult);

    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.pop();
      }),
      drawer: const AppNavigationDrawer(),
      appBar: AppBar(
        title: Text(tabInfo.title),
        actions: [
          ...tabInfo.actions,
          const HideValueIconButton(),
        ],
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: ref.watch(dashboardTabControllerProvider),
        onDestinationSelected: ref.read(dashboardTabControllerProvider.notifier).onTabSelected,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
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
            icon: const Icon(Icons.diamond_outlined),
            selectedIcon: const Icon(Icons.diamond),
            label: S.current.preciousMetals,
          ),
          NavigationDestination(
            icon: const Icon(Icons.data_usage_outlined),
            selectedIcon: const Icon(Icons.data_usage),
            label: S.current.distribution,
          ),
        ],
      ),
      body: SafeArea(
        child: tabInfo.body,
      ),
    );
  }
}
