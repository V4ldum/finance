import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/physical_assets/domain/models/coin_model.dart';
import 'package:finance/features/physical_assets/presentation/widgets/coin_image_loader.dart';
import 'package:finance/shared/constants/app_icon_size.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CoinSearchTile extends StatelessWidget {
  const CoinSearchTile({
    required this.coin,
    super.key,
  });

  final CoinModel coin;

  @override
  Widget build(BuildContext context) {
    final splitName = coin.name.split('|');
    final nameFirstPart = splitName.first.trim();
    final nameSecondPart = splitName.length > 1 ? splitName.last.trim() : '';

    return ListTile(
      onTap: () => context.pushNamed(AppRoutes.coinDetails, extra: (coin.id, true)),
      leading: CoinImageLoader(url: coin.obverse?.thumbnailUrl ?? coin.obverse?.pictureUrl ?? ''),
      title: Row(
        spacing: AppPadding.s,
        children: [
          Text(
            nameFirstPart,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Flexible(
            child: Text(
              nameSecondPart,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
            ),
          ),
        ],
      ),
      subtitle: Text(
        coin.minYear == coin.maxYear //
            ? coin.minYear
            : coin.maxYear.isEmpty
                ? '${coin.minYear} - ${S.current.coinDateNow}'
                : '${coin.minYear} - ${coin.maxYear}',
      ),
      trailing: const Icon(
        LucideIcons.chevronRight,
        size: AppIconSize.m,
      ),
    );
  }
}
