import 'package:finance/shared/constants/app_padding.dart';
import 'package:flutter/material.dart';

class CoinFeatures extends StatelessWidget {
  const CoinFeatures({required this.features, super.key});

  final List<CoinFeature> features;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(features.length, (index) {
        final feature = features[index];

        return Padding(
          padding: index != 0 ? const EdgeInsets.only(top: AppPadding.xxs) : EdgeInsets.zero,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  feature.title,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(flex: 2, child: Text(feature.content)),
            ],
          ),
        );
      }),
    );
  }
}

class CoinFeature {
  const CoinFeature({required this.title, required this.content});

  final String title;
  final String content;
}
