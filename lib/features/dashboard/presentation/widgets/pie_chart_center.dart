import 'package:finance/shared/presentation/widgets/hideable_text.dart';
import 'package:flutter/material.dart';

class PieChartCenter extends StatelessWidget {
  const PieChartCenter({
    required this.top,
    required this.bottom,
    this.size,
    super.key,
  });

  final String top;
  final String bottom;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(
        Radius.circular(size ?? 0),
      ),
      child: SizedBox(
        width: size,
        height: size,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            HideableText(
              top,
              hiddenText: '##### €',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            Text(
              bottom,
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
