import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class CoinImageLoader extends StatelessWidget {
  const CoinImageLoader({required this.url, super.key});

  final String url;

  static const double _defaultSize = 20;
  static const double _loaderScale = 0.3;

  @override
  Widget build(BuildContext context) {
    late final Widget image;

    if (url.isNotEmpty) {
      image = CachedNetworkImage(
        width: _defaultSize * 2,
        height: _defaultSize * 2,
        fit: BoxFit.cover,
        imageUrl: url,
        errorWidget: (_, _, _) => const Icon(LucideIcons.imageOff, size: _defaultSize),
        placeholder:
            (_, _) => Transform.scale(
              scale: _loaderScale,
              child: CircularProgressIndicator(color: Theme.of(context).colorScheme.onSurfaceVariant),
            ),
      );
    } else {
      image = const FittedBox(
        fit: BoxFit.cover,
        child: SizedBox(
          width: _defaultSize * 2,
          height: _defaultSize * 2,
          child: Icon(LucideIcons.imageOff, size: _defaultSize),
        ),
      );
    }

    return ClipOval(child: ColoredBox(color: Theme.of(context).colorScheme.surfaceContainerHighest, child: image));
  }
}
