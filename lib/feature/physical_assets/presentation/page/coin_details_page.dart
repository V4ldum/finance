import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/physical_assets/presentation/provider/get_coin_detail_controller.dart';
import 'package:finance/feature/physical_assets/presentation/widget/coin_face_image.dart';
import 'package:finance/feature/physical_assets/presentation/widget/coin_features.dart';
import 'package:finance/feature/physical_assets/presentation/widget/shimmer_coin_detail.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/constant/app_string.dart';
import 'package:finance/shared/presentation/widget/default_error_widget.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_package/meta_package.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CoinDetailsPage extends ConsumerWidget {
  const CoinDetailsPage({
    required this.coinId,
    super.key,
  });

  final String coinId;

  Future<void> _openInNumista() async {
    final url = AppString.numistaCoinPageUrl(coinId);

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
    final getCoinDetailResult = ref.watch(getCoinDetailControllerProvider(coinId));

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.metalDetailsTitle),
        actions: getCoinDetailResult.maybeWhen(
          data: (coin) => [
            IconButton(
              onPressed: _openInNumista,
              icon: const Icon(Icons.open_in_browser),
            ),
            IconButton(
              onPressed: () => context.pushNamed(AppRoute.editCoin, extra: coin),
              icon: const Icon(Icons.add),
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
              data: (coin) => Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// Title & Date
                  Text(
                    coin.name,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),

                  Text(
                    coin.minYear == coin.maxYear //
                        ? coin.minYear
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
                      CoinFeature(title: S.current.metalFeaturesComposition, content: coin.composition),
                      if (coin.demonetization != null)
                        CoinFeature(
                          title: S.current.coinFeaturesDemonetization,
                          content: coin.demonetization!.isDemonetized
                              ? coin.demonetization!.date.isNotEmpty
                                  ? S.current.coinFeaturesDemonetizedCoinDate(coin.demonetization!.date)
                                  : S.current.yes
                              : S.current.no,
                        ),
                      if (coin.series.isNotEmpty)
                        CoinFeature(title: S.current.coinFeaturesSeries, content: coin.series),
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
                      if (coin.obverse == null && coin.reverse == null && coin.edge == null && coin.watermark == null)
                        Padding(
                          padding: const EdgeInsets.all(AppPadding.l),
                          child: Text(S.current.coinPicturesNoPicturesAvailable),
                        ),
                      if (coin.obverse != null) CoinFaceImage(coinFace: coin.obverse!),
                      if (coin.reverse != null) CoinFaceImage(coinFace: coin.reverse!),
                      if (coin.edge != null) CoinFaceImage(coinFace: coin.edge!),
                      if (coin.watermark != null) CoinFaceImage(coinFace: coin.watermark!),
                    ],
                  ),
                  const SizedBox(height: AppPadding.xl),
                ],
              ),
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
