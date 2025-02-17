import 'package:cached_network_image/cached_network_image.dart';
import 'package:finance/features/physical_assets/domain/models/coin_model.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:flutter/material.dart';

class CoinFaceImage extends StatelessWidget {
  const CoinFaceImage({required this.coinFace, super.key});

  final CoinFaceModel coinFace;

  void _openCoinFaceImage(BuildContext context) {
    showDialog<void>(
      context: context,
      builder:
          (context) => SimpleDialog(
            contentPadding: EdgeInsets.zero,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            clipBehavior: Clip.antiAlias,
            children: [
              CachedNetworkImage(
                imageUrl: coinFace.pictureUrl.isNotEmpty ? coinFace.pictureUrl : coinFace.thumbnailUrl,
                placeholder:
                    (context, url) => const Padding(
                      padding: EdgeInsets.all(AppPadding.xxs),
                      child: Center(child: CircularProgressIndicator()),
                    ),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final imageSize = MediaQuery.of(context).size.width * .4;
    late final Widget image;

    if (coinFace.pictureUrl.isNotEmpty || coinFace.thumbnailUrl.isNotEmpty) {
      image = Material(
        color: const Color(0xFFF8F8FF),
        child: InkWell(
          onTap: () => _openCoinFaceImage(context),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: imageSize, minWidth: imageSize),
            child: CachedNetworkImage(
              imageUrl: coinFace.thumbnailUrl.isNotEmpty ? coinFace.thumbnailUrl : coinFace.pictureUrl,
              placeholder:
                  (context, url) => SizedBox(
                    height: imageSize,
                    width: imageSize,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
            ),
          ),
        ),
      );
    } else if (coinFace.lettering.isNotEmpty || coinFace.description.isNotEmpty) {
      image = _TextCoinData(text: coinFace.lettering.isNotEmpty ? coinFace.lettering : coinFace.description);
    } else {
      image = const _TextCoinData(
        text: 'Unexpected situation : should have at least one of the four parameters available but none are',
      );
    }

    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: image is _TextCoinData ? double.infinity : imageSize),
      child: Column(
        spacing: AppPadding.xs,
        children: [
          image,
          Text(
            coinFace.copyright.isNotEmpty ? '© ${coinFace.copyright}' : ' ',
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}

class _TextCoinData extends StatelessWidget {
  const _TextCoinData({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppPadding.m),
      child: Container(
        padding: const EdgeInsets.all(AppPadding.m),
        decoration: BoxDecoration(border: Border.all(color: Theme.of(context).colorScheme.onSurface)),
        child: Text(text, textAlign: TextAlign.center),
      ),
    );
  }
}
