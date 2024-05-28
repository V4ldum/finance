import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';
import 'package:finance/shared/constant/app_asset.dart';
import 'package:finance/shared/constant/app_icon_size.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PhysicalAssetTile extends StatelessWidget {
  const PhysicalAssetTile({
    required this.asset,
    super.key,
  });

  static const _defaultSize = 18;

  final AssetModel asset;

  void _onTap(BuildContext context) {
    context.pushNamed(AppRoute.physicalAssetDetails, extra: asset);
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
          Text(
            nameFirstPart,
            maxLines: 1,
          ),
          if (nameSecondPart.isNotEmpty) const SizedBox(width: AppPadding.s),
          if (nameSecondPart.isNotEmpty)
            Flexible(
              child: Text(
                nameSecondPart,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
            ),
          if (asset.amount > 1) const SizedBox(width: AppPadding.m),
          if (asset.amount > 1)
            Text(
              'x${asset.amount.toInt()}',
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          const SizedBox(width: AppPadding.s),
        ],
      ),
      leading: ClipOval(
        child: ColoredBox(
          color: asset is! PreciousMetalAssetModel
              ? Theme.of(context).colorScheme.surfaceVariant
              : switch ((asset as PreciousMetalAssetModel).metalType) {
                  PreciousMetalTypeModel.gold => Utils.goldColor,
                  PreciousMetalTypeModel.silver => Utils.silverColor,
                  PreciousMetalTypeModel.other => Theme.of(context).colorScheme.surfaceVariant,
                },
          child: FittedBox(
            fit: BoxFit.cover,
            child: SizedBox(
              width: _defaultSize * 2,
              height: _defaultSize * 2,
              child: asset is! PreciousMetalAssetModel
                  // Cash
                  ? Icon(
                      Icons.money_rounded,
                      size: _defaultSize * 1.4,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    )
                  // Precious Metal
                  : Padding(
                      padding: const EdgeInsets.all(AppPadding.xs),
                      child: ImageIcon(
                        (asset as PreciousMetalAssetModel).numistaId.isEmpty
                            ? const AssetImage(AppAsset.rockIcon) // Raw
                            : const AssetImage(AppAsset.salesIcon), // Coin
                        color: switch ((asset as PreciousMetalAssetModel).metalType) {
                          PreciousMetalTypeModel.gold ||
                          PreciousMetalTypeModel.silver =>
                            Theme.of(context).colorScheme.surfaceVariant,
                          PreciousMetalTypeModel.other => Theme.of(context).colorScheme.onSurfaceVariant,
                        },
                      ),
                    ),
            ),
          ),
        ),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        size: AppIconSize.m,
      ),
    );
  }
}
