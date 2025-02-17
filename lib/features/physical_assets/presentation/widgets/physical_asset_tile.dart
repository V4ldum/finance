import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:finance/features/assets/domain/models/precious_metal_asset_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/shared/constants/app_icon_size.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class PhysicalAssetTile extends StatelessWidget {
  const PhysicalAssetTile({required this.asset, super.key});

  static const _defaultSize = 18;

  final AssetModel asset;

  void _onTap(BuildContext context) {
    context.pushNamed(AppRoutes.physicalAssetDetails, extra: asset);
  }

  @override
  Widget build(BuildContext context) {
    final splitName = asset.name.split('|');
    final nameFirstPart = splitName.first.trim();
    final nameSecondPart = splitName.length > 1 ? splitName.last.trim() : '';

    return ListTile(
      onTap: () => _onTap(context),
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Flexible(child: Text(nameFirstPart, maxLines: 1, overflow: TextOverflow.ellipsis)),
          if (asset.amount > 1) const SizedBox(width: AppPadding.m),
          if (asset.amount > 1)
            Text(
              'x${asset.amount.toInt()}',
              style: Theme.of(
                context,
              ).textTheme.bodySmall!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
          const SizedBox(width: AppPadding.s),
        ],
      ),
      subtitle:
          nameSecondPart.isNotEmpty
              ? Text(
                nameSecondPart,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(
                  context,
                ).textTheme.titleSmall!.copyWith(color: Theme.of(context).colorScheme.onSurfaceVariant),
              )
              : null,
      leading: ClipOval(
        child: ColoredBox(
          color:
              asset is! PreciousMetalAssetModel
                  ? Theme.of(context).colorScheme.surfaceContainerHighest
                  : switch ((asset as PreciousMetalAssetModel).metalType) {
                    PreciousMetalTypeModel.gold => Utils.goldColor,
                    PreciousMetalTypeModel.silver => Utils.silverColor,
                    PreciousMetalTypeModel.other => Theme.of(context).colorScheme.surfaceContainerHighest,
                  },
          child: FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _defaultSize * 2,
              height: _defaultSize * 2,
              child:
                  asset is! PreciousMetalAssetModel
                      // Cash
                      ? Icon(
                        LucideIcons.banknote,
                        size: _defaultSize * 1.4,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                      )
                      // Precious Metal
                      : Padding(
                        padding: const EdgeInsets.all(AppPadding.xs),
                        child: Icon(
                          (asset as PreciousMetalAssetModel).numistaId.isEmpty
                              ? LucideIcons
                                  .mountain // Raw
                              : LucideIcons.coins, // Coin
                          color: switch ((asset as PreciousMetalAssetModel).metalType) {
                            PreciousMetalTypeModel.gold ||
                            PreciousMetalTypeModel.silver => Theme.of(context).colorScheme.surfaceContainerHighest,
                            PreciousMetalTypeModel.other => Theme.of(context).colorScheme.onSurfaceVariant,
                          },
                        ),
                      ),
            ),
          ),
        ),
      ),
      trailing: const Icon(LucideIcons.chevronRight, size: AppIconSize.m),
    );
  }
}
