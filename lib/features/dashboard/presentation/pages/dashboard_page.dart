import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/presentation/providers/finary_assets_controller.dart';
import 'package:finance/features/dashboard/presentation/providers/providers.dart';
import 'package:finance/shared/presentation/widgets/app_navigation_drawer.dart';
import 'package:finance/shared/presentation/widgets/hide_values_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dashboardAssetsResult = ref.watch(finaryAssetsControllerProvider);
    final tabInfo = ref.read(dashboardTabControllerProvider.notifier).getCurrentPage(dashboardAssetsResult);

    return Scaffold(
      drawer: const AppNavigationDrawer(),
      appBar: AppBar(title: Text(tabInfo.title), actions: [...tabInfo.actions, const HideValueIconButton()]),
      bottomNavigationBar: NavigationBar(
        selectedIndex: ref.watch(dashboardTabControllerProvider),
        onDestinationSelected: ref.read(dashboardTabControllerProvider.notifier).onTabSelected,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        destinations: [
          NavigationDestination(icon: const Icon(LucideIcons.landmark), label: S.current.stocks),
          NavigationDestination(icon: const Icon(LucideIcons.walletMinimal), label: S.current.accounts),
          NavigationDestination(icon: const Icon(LucideIcons.anvil), label: S.current.preciousMetals),
          NavigationDestination(icon: const Icon(LucideIcons.chartPie), label: S.current.distribution),
        ],
      ),
      body: SafeArea(child: tabInfo.body),
    );
  }
}
