import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/presentation/widgets/hideable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ChartItemCard extends StatelessWidget {
  const ChartItemCard({
    required this.title,
    required this.value,
    required this.percent,
    required this.assetUnit,
    this.evolution,
    super.key,
    this.leading,
  });

  final String title;
  final double value;
  final double? evolution;
  final double percent;
  final String assetUnit;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      color: Theme.of(context).colorScheme.surfaceContainerLow,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.m,
          vertical: AppPadding.m,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              textBaseline: TextBaseline.ideographic,
              children: [
                Expanded(
                  flex: 11,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (leading != null) leading!,
                      if (leading != null) const SizedBox(width: AppPadding.s),
                      Expanded(
                        child: Text(
                          title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: AppPadding.m),
                Text(
                  '${(percent * 100).toStringAsFixed(0)} %',
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Theme.of(context).colorScheme.inverseSurface,
                      ),
                ),
              ],
            ),
            const SizedBox(height: AppPadding.xs),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              spacing: AppPadding.s,
              children: [
                if (evolution != null)
                  Text(
                    '${(evolution! >= 0 ? evolution! : evolution! * -1).toStringAsFixed(1)} %',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          // fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: evolution! > 0
                              ? Colors.green
                              : evolution! < 0
                                  ? Colors.red
                                  : Theme.of(context).colorScheme.onSurfaceVariant,
                        ),
                  )
                else
                  const SizedBox(),
                Expanded(
                  flex: 3,
                  child: HideableText(
                    NumberFormat().format(value),
                    suffix: ' $assetUnit',
                    textAlign: TextAlign.end,
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
