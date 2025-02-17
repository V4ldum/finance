import 'dart:async';

import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/application/assets_service.dart';
import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:finance/features/assets/domain/models/asset_type_model.dart';
import 'package:finance/features/assets/domain/models/precious_metal_asset_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/presentation/widgets/coin_features.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:meta_package/meta_package.dart';

class PhysicalAssetDetailsPage extends ConsumerStatefulWidget {
  const PhysicalAssetDetailsPage({required this.asset, super.key});

  final AssetModel asset;

  @override
  ConsumerState<PhysicalAssetDetailsPage> createState() => _PhysicalAssetDetailsPageState();
}

class _PhysicalAssetDetailsPageState extends ConsumerState<PhysicalAssetDetailsPage> {
  bool isLoading = false;

  void _onTapDetails(BuildContext context) {
    context.pushNamed(AppRoutes.coinDetails, extra: ((widget.asset as PreciousMetalAssetModel).id, false));
  }

  void _onTapEdit(BuildContext context) {
    late final String route;

    if (widget.asset is! PreciousMetalAssetModel) {
      route = AppRoutes.editCash;
    } else {
      if ((widget.asset as PreciousMetalAssetModel).numistaId.isEmpty) {
        route = AppRoutes.editRawPreciousMetal;
      } else {
        route = AppRoutes.editCoin;
      }
    }

    context.pushNamed(route, extra: widget.asset);
  }

  Future<void> _onTapDelete() async {
    final deleteItem = await showDialog<bool>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text(S.current.deleteDialogTitle),
            content: Text(S.current.deleteDialogContent(widget.asset.name)),
            actions: [
              TextButton(onPressed: () => context.pop(false), child: Text(S.current.no)),
              TextButton(onPressed: () => context.pop(true), child: Text(S.current.yes)),
            ],
          ),
    );

    if (deleteItem ?? false) {
      try {
        setState(() {
          isLoading = true;
        });

        await ref.read(assetsServiceProvider).removePhysicalAsset(widget.asset);
      } on DisplayableException catch (e) {
        if (context.mounted) {
          unawaited(
            showDialog<void>(
              // Linter doesn't recognize that we check if context was mounted
              // ignore: use_build_context_synchronously
              context: context,
              builder:
                  (context) => AlertDialog(
                    title: Text(e.title),
                    content: Text(e.message),
                    actions: [
                      TextButton(
                        onPressed: () {
                          context.pop();
                        },
                        child: Text(S.current.ok),
                      ),
                    ],
                  ),
            ),
          );
        }
        return;
      } finally {
        setState(() {
          isLoading = false;
        });
      }

      if (context.mounted) {
        // Linter doesn't recognize that we check if context was mounted
        // ignore: use_build_context_synchronously
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final splitName = widget.asset.name.split('|');
    final nameFirstPart = splitName.first.trim();
    final nameSecondPart = splitName.length > 1 ? splitName.last.trim() : '';

    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Text(S.current.physicalAssetDetailTitle),
            actions: [
              if (widget.asset.type == AssetTypeModel.preciousMetal &&
                  (widget.asset as PreciousMetalAssetModel).numistaId.isNotEmpty)
                IconButton(onPressed: () => _onTapDetails(context), icon: const Icon(LucideIcons.info)),
              IconButton(onPressed: () => _onTapEdit(context), icon: const Icon(LucideIcons.pencil)),
            ],
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.m),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    spacing: AppPadding.s,
                    children: [
                      Text(nameFirstPart, style: Theme.of(context).textTheme.titleMedium),
                      Text(
                        nameSecondPart,
                        style: Theme.of(
                          context,
                        ).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
                      ),
                    ],
                  ),
                  const SizedBox(height: AppPadding.l),
                  Text(
                    S.current.information,
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: AppPadding.s),
                  CoinFeatures(
                    features: [
                      CoinFeature(title: S.current.possessed, content: widget.asset.amount.toInt().toString()),
                      if (widget.asset.type == AssetTypeModel.cash)
                        CoinFeature(
                          title: S.current.cashUnitValue,
                          content: NumberFormat.simpleCurrency(
                            decimalDigits: 0,
                            name: 'EUR',
                          ).format(widget.asset.value),
                        )
                      else
                        CoinFeature(
                          title: S.current.metalFeaturesWeight,
                          content: '${(widget.asset as PreciousMetalAssetModel).weight.toInt()} g',
                        ),
                      if (widget.asset.type != AssetTypeModel.cash)
                        CoinFeature(
                          title: S.current.totalWeight,
                          content: '${(widget.asset as PreciousMetalAssetModel).totalWeight.toInt()} g',
                        ),
                      if (widget.asset.type == AssetTypeModel.preciousMetal)
                        if ((widget.asset as PreciousMetalAssetModel).metalType == PreciousMetalTypeModel.other)
                          CoinFeature(
                            title: S.current.metalFeaturesComposition,
                            content: (widget.asset as PreciousMetalAssetModel).metalType.toIntlString(),
                          )
                        else
                          CoinFeature(
                            title: S.current.metalFeaturesComposition,
                            content:
                                '${(widget.asset as PreciousMetalAssetModel).metalType.toIntlString()} ${(widget.asset as PreciousMetalAssetModel).purity} %',
                          ),
                      CoinFeature(
                        title:
                            widget.asset.type == AssetTypeModel.cash
                                ? S.current.total
                                : S.current.estimatedPrice.replaceAll(':', ''),
                        content: NumberFormat.simpleCurrency(decimalDigits: 0, name: 'EUR').format(widget.asset.total),
                      ),
                    ],
                  ),
                  const Expanded(child: SizedBox(height: AppPadding.xl)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.s),
                    child: FilledButton(
                      onPressed: _onTapDelete,
                      style: ButtonStyle(backgroundColor: WidgetStatePropertyAll(Theme.of(context).colorScheme.error)),
                      child: Text(
                        S.current.deleteAssetButton,
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium!.copyWith(color: Theme.of(context).colorScheme.onError),
                      ),
                    ),
                  ),
                  const SizedBox(height: AppPadding.m),
                ],
              ),
            ),
          ),
        ),
        if (isLoading) const ColoredBox(color: Colors.black38, child: Center(child: CircularProgressIndicator())),
      ],
    );
  }
}
