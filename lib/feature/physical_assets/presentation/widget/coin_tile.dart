import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/physical_assets/domain/model/coin_model.dart';
import 'package:finance/feature/physical_assets/presentation/widget/coin_image_loader.dart';
import 'package:finance/shared/constant/app_icon_size.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      onTap: () => context.pushNamed(AppRoute.coinDetails, extra: (coin.id, true)),
      leading: CoinImageLoader(url: coin.obverse?.thumbnailUrl ?? coin.obverse?.pictureUrl ?? ''),
      title: Row(
        children: [
          Text(
            nameFirstPart,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(width: AppPadding.s),
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
        Icons.arrow_forward_ios_rounded,
        size: AppIconSize.m,
      ),
    );
  }
}
