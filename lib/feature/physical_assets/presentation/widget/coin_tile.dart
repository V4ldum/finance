import 'package:finance/feature/physical_assets/domain/model/search_coin_model.dart';
import 'package:finance/feature/physical_assets/presentation/widget/coin_image_loader.dart';
import 'package:finance/shared/constant/app_icon_size.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CoinSearchTile extends StatelessWidget {
  const CoinSearchTile({
    required this.coin,
    super.key,
  });

  final SearchCoinModel coin;

  @override
  Widget build(BuildContext context) {
    final minYear = coin.minYear.isNotEmpty ? coin.minYear : '????';
    final maxYear = coin.maxYear.isNotEmpty ? coin.maxYear : '????';

    return ListTile(
      onTap: () => context.pushNamed(AppRoute.coinDetails, extra: coin.id),
      leading: CoinImageLoader(url: coin.obverseThumbnailUrl),
      title: Text(
        coin.name,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        minYear == maxYear //
            ? minYear
            : '$minYear - $maxYear',
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
        size: AppIconSize.m,
      ),
    );
  }
}
