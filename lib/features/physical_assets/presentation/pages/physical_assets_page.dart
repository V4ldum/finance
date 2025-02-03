import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/domain/models/asset_type_model.dart';
import 'package:finance/features/assets/presentation/providers/physical_assets_controller.dart';
import 'package:finance/features/physical_assets/presentation/providers/ratio_controller.dart';
import 'package:finance/features/physical_assets/presentation/widgets/physical_asset_tile.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:finance/shared/presentation/widgets/app_navigation_drawer.dart';
import 'package:finance/shared/presentation/widgets/default_error_widget.dart';
import 'package:finance/shared/presentation/widgets/default_loading_widget.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:meta_package/meta_package.dart';

class PhysicalAssetsPage extends ConsumerWidget {
  const PhysicalAssetsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final physicalAssetsResult = ref.watch(physicalAssetsControllerProvider);
    final ratioResult = ref.watch(ratioControllerProvider);
    final cache = ref.watch(appCacheControllerProvider);

    return Scaffold(
      drawer: const AppNavigationDrawer(),
      appBar: AppBar(
        title: Text(S.current.physicalAssetsPageTitle),
        actions: [
          ratioResult.when(
            data: (data) {
              final (gold, silver, sp) = data;
              final gsr = gold.troyOunces / silver.troyOunces;
              final spgr = sp.value / gold.troyOunces;
              final earliestDate = [gold.lastUpdated, silver.lastUpdated, sp.lastUpdated].reduce(
                (a, b) => a.isBefore(b) //
                    ? a
                    : b,
              );

              if (gsr.isNaN || spgr.isNaN) {
                return const Icon(LucideIcons.wifiOff);
              }

              return Theme(
                // Tooltip is bugged and shows dark UI for light brightness and the other way around
                data: Theme.of(context).copyWith(
                  brightness: Theme.of(context).brightness == Brightness.dark //
                      ? Brightness.light
                      : Brightness.dark,
                ),
                child: Tooltip(
                  message: S.current.lastUpdateTooltip(DateFormat('dd MMM').format(earliestDate)),
                  preferBelow: true,
                  showDuration: const Duration(seconds: 10),
                  triggerMode: TooltipTriggerMode.tap,
                  enableTapToDismiss: false,
                  child: Theme(
                    // Revert the change down this branch
                    data: Theme.of(context),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'SP/G',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: spgr < cache.spgrSPFavorableRatio
                                    // SP Favorable
                                    ? Utils.moneyColor
                                    : spgr > cache.spgrGoldFavorableRatio
                                        // Gold Favorable
                                        ? Utils.goldColor
                                        // Neutral
                                        : Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                        Text(
                          'G/S',
                          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                                fontWeight: FontWeight.bold,
                                color: gsr < cache.gsrGoldFavorableRatio
                                    // Gold Favorable
                                    ? Utils.goldColor
                                    : gsr > cache.gsrSilverFavorableRatio
                                        // Silver Favorable
                                        ? Utils.silverColor
                                        // Neutral
                                        : Theme.of(context).colorScheme.onSurface,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            error: (error, trace) {
              // debugPrint(error.toString());
              // debugPrint('--- STACKTRACE ---');
              // debugPrint(trace.toString());
              return const SizedBox();
            },
            loading: () => const Shimmer(
              child: ShimmerBlock(height: AppPadding.xl, width: AppPadding.xl),
            ),
          ),
          const SizedBox(width: AppPadding.s),
          MenuAnchor(
            consumeOutsideTap: true,
            alignmentOffset: Intl.getCurrentLocale().startsWith('fr') ? const Offset(-80, 0) : const Offset(-65, 0),
            menuChildren: [
              MenuItemButton(
                onPressed: () => context.pushNamed(AppRoutes.editCash),
                trailingIcon: Container(),
                leadingIcon: const Icon(LucideIcons.banknote),
                child: Text(S.current.cash),
              ),
              MenuItemButton(
                onPressed: () => context.pushNamed(AppRoutes.editRawPreciousMetal),
                trailingIcon: Container(),
                leadingIcon: const Icon(LucideIcons.mountain),
                child: Text(S.current.raw),
              ),
              MenuItemButton(
                onPressed: () => context.pushNamed(AppRoutes.searchCoin),
                trailingIcon: Container(),
                leadingIcon: const Icon(LucideIcons.coins),
                child: Text(S.current.coin),
              ),
            ],
            builder: (context, controller, child) {
              return IconButton(
                onPressed: () {
                  if (controller.isOpen) {
                    controller.close();
                  } else {
                    controller.open();
                  }
                },
                icon: child!,
              );
            },
            child: const Icon(LucideIcons.plus),
          ),
        ],
      ),
      body: SafeArea(
        child: physicalAssetsResult.when(
          data: (_) {
            final assets = cache.physicalAssets!;

            if (assets.assets.isEmpty) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.l, vertical: AppPadding.m),
                child: Text(
                  S.current.noPhysicalAssets,
                  textAlign: TextAlign.center,
                ),
              );
            }

            final sorted = assets.assets
              ..sort((a, b) => b.name.compareTo(a.name))
              ..toList();

            return RefreshIndicator(
              onRefresh: ref.read(physicalAssetsControllerProvider.notifier).refreshAssets,
              child: SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  children: sorted
                      .where((e) => e.type == AssetTypeModel.preciousMetal || e.type == AssetTypeModel.cash)
                      .map((e) => PhysicalAssetTile(asset: e))
                      .toList(),
                ),
              ),
            );
          },
          error: (error, trace) => DefaultErrorWidget(error: error as DisplayableException, trace: trace),
          loading: () => const DefaultLoadingWidget(),
        ),
      ),
    );
  }
}
