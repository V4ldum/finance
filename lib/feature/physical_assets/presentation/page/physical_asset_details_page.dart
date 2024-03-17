import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';
import 'package:finance/feature/physical_assets/presentation/widget/coin_features.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

class PhysicalAssetDetailsPage extends ConsumerWidget {
  const PhysicalAssetDetailsPage({
    required this.asset,
    super.key,
  });

  final AssetModel asset;

  void _onTapDetails(BuildContext context) {
    context.pushNamed(AppRoute.coinDetails, extra: (asset as PreciousMetalAssetModel).numistaId);
  }

  void _onTapEdit(BuildContext context) {
    late final String route;

    if (asset is! PreciousMetalAssetModel) {
      route = AppRoute.editCash;
    } else {
      if ((asset as PreciousMetalAssetModel).numistaId.isEmpty) {
        route = AppRoute.editRawPreciousMetal;
      } else {
        route = AppRoute.editCoin;
      }
    }

    context.pushNamed(route, extra: asset);
  }

  Future<void> _onTapDelete(WidgetRef ref) async {
    final deleteItem = await showDialog<bool>(
      context: ref.context,
      builder: (context) => AlertDialog(
        title: Text(S.current.deleteDialogTitle),
        content: Text(S.current.deleteDialogContent(asset.name)),
        actions: [
          TextButton(
            onPressed: () => context.pop(true),
            child: Text(S.current.yes),
          ),
          TextButton(
            onPressed: () => context.pop(false),
            child: Text(S.current.no),
          ),
        ],
      ),
    );

    if (deleteItem ?? false) {
      await ref.read(assetsServiceProvider).removeLocalAsset(asset);

      if (ref.context.mounted) {
        ref.context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.physicalAssetDetailTitle),
        actions: [
          if (asset.type == AssetTypeModel.preciousMetal && (asset as PreciousMetalAssetModel).numistaId.isNotEmpty)
            IconButton(
              onPressed: () => _onTapDetails(context),
              icon: const Icon(Icons.info_outline),
            ),
          IconButton(
            onPressed: () => _onTapEdit(context),
            icon: const Icon(Icons.edit),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.m),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                asset.name,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: AppPadding.l),
              Text(
                S.current.information,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: AppPadding.s),
              CoinFeatures(
                features: [
                  CoinFeature(
                    title: S.current.possessed,
                    content: asset.amount.toInt().toString(),
                  ),
                  if (asset.type == AssetTypeModel.cash)
                    CoinFeature(
                      title: S.current.cashUnitValue,
                      content: NumberFormat.simpleCurrency(decimalDigits: 0, name: 'EUR').format(asset.value),
                    )
                  else
                    CoinFeature(
                      title: S.current.metalFeaturesWeight,
                      content: '${(asset as PreciousMetalAssetModel).weight.toInt()} g',
                    ),
                  if (asset.type != AssetTypeModel.cash)
                    CoinFeature(
                      title: S.current.totalWeight,
                      content: '${(asset as PreciousMetalAssetModel).totalWeight.toInt()} g',
                    ),
                  if (asset.type == AssetTypeModel.preciousMetal)
                    if ((asset as PreciousMetalAssetModel).metalType == PreciousMetalTypeModel.other)
                      CoinFeature(
                        title: S.current.metalFeaturesComposition,
                        content: (asset as PreciousMetalAssetModel).metalType.toIntlString(),
                      )
                    else
                      CoinFeature(
                        title: S.current.metalFeaturesComposition,
                        content:
                            '${(asset as PreciousMetalAssetModel).metalType.toIntlString()} (${(asset as PreciousMetalAssetModel).purity} %)',
                      ),
                  CoinFeature(
                    title: asset.type == AssetTypeModel.cash
                        ? S.current.total
                        : S.current.estimatedPrice.replaceAll(':', ''),
                    content: NumberFormat.simpleCurrency(decimalDigits: 0, name: 'EUR').format(asset.total),
                  ),
                ],
              ),
              const Expanded(
                child: SizedBox(height: AppPadding.xl),
              ),
              FilledButton(
                onPressed: () => _onTapDelete(ref),
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Theme.of(context).colorScheme.onError),
                ),
                child: Text(
                  S.current.deleteAssetButton,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context).colorScheme.error,
                      ),
                ),
              ),
              const SizedBox(height: AppPadding.m),
            ],
          ),
        ),
      ),
    );
  }
}
