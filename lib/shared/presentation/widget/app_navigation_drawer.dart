import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/presentation/provider/app_version_controller.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final drawerSelectedIndexProvider = StateProvider((ref) => 0);

class AppNavigationDrawer extends ConsumerWidget {
  const AppNavigationDrawer({super.key});

  void onDestinationSelected(int value, WidgetRef ref) {
    if (value == ref.read(drawerSelectedIndexProvider)) {
      return;
    }

    ref.read(drawerSelectedIndexProvider.notifier).state = value;
    switch (_DrawerItem.values[value]) {
      case _DrawerItem.dashboard:
        ref.context.pushReplacementNamed(AppRoute.dashboard);
      case _DrawerItem.settings:
        ref.context.pushReplacementNamed(AppRoute.settings);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NavigationDrawer(
      selectedIndex: ref.watch(drawerSelectedIndexProvider),
      onDestinationSelected: (value) => onDestinationSelected(value, ref),
      children: [
        const SizedBox(height: AppPadding.s),
        NavigationDrawerDestination(
          label: Text(S.current.dashboardDrawerItem),
          icon: const Icon(Icons.area_chart_outlined),
          selectedIcon: const Icon(Icons.area_chart),
        ),
        const Divider(indent: AppPadding.l, endIndent: AppPadding.l),
        NavigationDrawerDestination(
          label: Text(S.current.settingsDrawerItem),
          icon: const Icon(Icons.settings_outlined),
          selectedIcon: const Icon(Icons.settings),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.xs),
            child: ref.watch(appVersionControllerProvider).when(
                  data: (data) => Text(
                    S.current.appVersion(data),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  ),
                  error: (_, __) => const SizedBox(),
                  loading: () => const SizedBox(),
                ),
          ),
        ),
      ],
    );
  }
}

enum _DrawerItem {
  dashboard,
  settings,
}
