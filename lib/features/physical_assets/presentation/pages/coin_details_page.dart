import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/presentation/providers/get_coin_detail_controller.dart';
import 'package:finance/features/physical_assets/presentation/widgets/coin_face_image.dart';
import 'package:finance/features/physical_assets/presentation/widgets/coin_features.dart';
import 'package:finance/features/physical_assets/presentation/widgets/shimmer_coin_detail.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/constants/app_string.dart';
import 'package:finance/shared/presentation/widgets/default_error_widget.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:meta_package/meta_package.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CoinDetailsPage extends ConsumerWidget {
  const CoinDetailsPage({
    required this.coinId,
    this.showAddButton = true,
    super.key,
  });

  final String coinId;
  final bool showAddButton;

  Future<void> _openInNumista(String numistaId) async {
    final url = AppString.numistaCoinPageUrl(numistaId);

    if (await canLaunchUrlString(url)) {
      await launchUrlString(
        url,
        mode: LaunchMode.externalApplication,
      );
    } else {
      debugPrint("Can't launch URL");
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final getCoinDetailResult = ref.watch(getCoinDetailControllerProvider(int.parse(coinId)));

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.metalDetailsTitle),
        actions: getCoinDetailResult.maybeWhen(
          data: (coin) => [
            IconButton(
              onPressed: () => _openInNumista(coin.numistaId),
              icon: const Icon(LucideIcons.externalLink),
            ),
            if (showAddButton)
              IconButton(
                onPressed: () => context.pushNamed(AppRoutes.editCoin, extra: coin),
                icon: const Icon(LucideIcons.plus),
              ),
          ],
          orElse: () => [],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
          child: SingleChildScrollView(
            child: getCoinDetailResult.when(
              data: (coin) {
                final splitName = coin.name.split('|');
                final nameFirstPart = splitName.first.trim();
                final nameSecondPart = splitName.length > 1 ? splitName.last.trim() : '';

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    /// Title & Date
                    Row(
                      spacing: AppPadding.s,
                      children: [
                        Text(
                          nameFirstPart,
                          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Text(
                          nameSecondPart,
                          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                                color: Theme.of(context).colorScheme.onSurfaceVariant,
                              ),
                        ),
                      ],
                    ),

                    Text(
                      coin.minYear == coin.maxYear //
                          ? coin.minYear
                          : coin.maxYear.isEmpty
                              ? '${coin.minYear} - ${S.current.coinDateNow}'
                              : '${coin.minYear} - ${coin.maxYear}',
                    ),

                    const SizedBox(height: AppPadding.l),

                    /// Features
                    Text(
                      S.current.metalFeaturesTitle,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: AppPadding.m),

                    CoinFeatures(
                      features: [
                        CoinFeature(
                          title: S.current.metalFeaturesWeight,
                          content: coin.weight != null
                              ? S.current.metalFeaturesWeightValue(coin.weight!)
                              : S.current.coinFeaturesNoValue,
                        ),
                        CoinFeature(
                          title: S.current.metalFeaturesSize,
                          content: coin.size != null
                              ? S.current.metalFeaturesSizeValue(coin.size!)
                              : S.current.coinFeaturesNoValue,
                        ),
                        CoinFeature(
                          title: S.current.metalFeaturesThickness,
                          content: coin.thickness != null
                              ? S.current.metalFeaturesThicknessValue(coin.thickness!)
                              : S.current.coinFeaturesNoValue,
                        ),
                        CoinFeature(
                          title: S.current.metalFeaturesComposition,
                          content: '${coin.composition.toIntlString()} ${coin.purity / 100.0}%',
                        ),
                      ],
                    ),

                    const SizedBox(height: AppPadding.l),

                    /// Images
                    Text(
                      S.current.metalPicturesTitle,
                      style: Theme.of(context).textTheme.titleLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    const SizedBox(height: AppPadding.m),
                    Wrap(
                      alignment: WrapAlignment.center,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      runSpacing: AppPadding.l,
                      spacing: AppPadding.l,
                      children: [
                        if (coin.obverse == null && coin.reverse == null && coin.edge == null)
                          Padding(
                            padding: const EdgeInsets.all(AppPadding.l),
                            child: Text(S.current.coinPicturesNoPicturesAvailable),
                          ),
                        if (coin.obverse != null) CoinFaceImage(coinFace: coin.obverse!),
                        if (coin.reverse != null) CoinFaceImage(coinFace: coin.reverse!),
                        if (coin.edge != null) CoinFaceImage(coinFace: coin.edge!),
                      ],
                    ),
                    const SizedBox(height: AppPadding.xl),
                  ],
                );
              },
              error: (error, trace) => DefaultErrorWidget(
                error: error as DisplayableException,
                trace: trace,
              ),
              loading: () => const ShimmerCoinDetail(),
            ),
          ),
        ),
      ),
    );
  }
}
