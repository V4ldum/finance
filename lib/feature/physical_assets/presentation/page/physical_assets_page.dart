import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/physical_assets/presentation/provider/ratio_controller.dart';
import 'package:finance/feature/physical_assets/presentation/widget/physical_asset_tile.dart';
import 'package:finance/shared/constant/app_asset.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:finance/shared/presentation/widget/app_navigation_drawer.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:meta_package/meta_package.dart';

class PhysicalAssetsPage extends ConsumerWidget {
  const PhysicalAssetsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ratioResult = ref.watch(ratioControllerProvider);
    final cache = ref.read(appCacheControllerProvider);

    return Scaffold(
      drawer: const AppNavigationDrawer(),
      appBar: AppBar(
        title: Text(S.current.physicalAssetsPageTitle),
        actions: [
          ratioResult.when(
            data: (data) {
              final (double gsr, double spgr) = data;

              if (gsr.isNaN || spgr.isNaN) {
                return const Icon(Icons.wifi_off_outlined);
              }

              return Column(
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
              );
            },
            error: (error, trace) {
              debugPrint(error.toString());
              debugPrint('--- STACKTRACE ---');
              debugPrint(trace.toString());
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
                onPressed: () => context.pushNamed(AppRoute.editCash),
                trailingIcon: Container(),
                leadingIcon: const Icon(Icons.money_rounded),
                child: Text(S.current.cash),
              ),
              MenuItemButton(
                onPressed: () => context.pushNamed(AppRoute.editRawPreciousMetal),
                trailingIcon: Container(),
                leadingIcon: const ImageIcon(
                  AssetImage(AppAsset.rockIcon),
                ),
                child: Text(S.current.raw),
              ),
              MenuItemButton(
                onPressed: () => context.pushNamed(AppRoute.searchCoin),
                trailingIcon: Container(),
                leadingIcon: const ImageIcon(
                  AssetImage(AppAsset.salesIcon),
                ),
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
            child: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Builder(
            builder: (context) {
              final assets = ref.watch(appCacheControllerProvider).localAssets
                ..sort((a, b) => b.name.compareTo(a.name))
                ..toList();

              if (assets.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.l, vertical: AppPadding.m),
                  child: Text(
                    S.current.noPhysicalAssets,
                    textAlign: TextAlign.center,
                  ),
                );
              }
              return Column(
                children: assets
                    .where((e) => e.type == AssetTypeModel.preciousMetal || e.type == AssetTypeModel.cash)
                    .map((e) => PhysicalAssetTile(asset: e))
                    .toList(),
              );
            },
          ),
        ),
      ),
    );
  }
}
