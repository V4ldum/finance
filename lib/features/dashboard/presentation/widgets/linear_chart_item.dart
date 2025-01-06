import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/presentation/widgets/hideable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LinearChartItem extends StatelessWidget {
  const LinearChartItem({
    required this.title,
    required this.value,
    required this.percent,
    required this.assetUnit,
    this.evolution,
    this.color = Colors.black87,
    super.key,
    this.leading,
  });

  final String title;
  final double value;
  final double? evolution;
  final double percent;
  final String assetUnit;
  final Color color;
  final Widget? leading;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          textBaseline: TextBaseline.ideographic,
          children: [
            Expanded(
              flex: 11,
              child: Row(
                children: [
                  if (leading != null) leading!,
                  if (leading != null) const SizedBox(width: AppPadding.s),
                  Expanded(
                    child: Text(
                      title,
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
            if (evolution != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(AppPadding.xs),
                child: ColoredBox(
                  color: Theme.of(context).colorScheme.surfaceContainerHighest,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: AppPadding.xxs, horizontal: AppPadding.s),
                    child: Text(
                      '${(evolution! >= 0 ? evolution! : evolution! * -1).toStringAsFixed(1)} %',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 10,
                            color: evolution! > 0
                                ? Colors.green
                                : evolution! < 0
                                    ? Colors.red
                                    : Theme.of(context).colorScheme.onSurfaceVariant,
                          ),
                    ),
                  ),
                ),
              ),
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: AppPadding.s,
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: percent,
                color: color,
              ),
            ),
            SizedBox(
              width: AppPadding.xl, // Enough for for 3 digits and a %
              child: Text(
                '${(percent * 100).toStringAsFixed(0)} %',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
