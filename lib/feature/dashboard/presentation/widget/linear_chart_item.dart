import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/presentation/widget/hideable_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class LinearChartItem extends StatelessWidget {
  const LinearChartItem({
    required this.title,
    required this.value,
    required this.percent,
    this.color = Colors.black87,
    super.key,
    this.leading,
  });

  final String title;
  final double value;
  final double percent;
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
            Expanded(
              flex: 3,
              child: HideableText(
                NumberFormat().format(value),
                suffix: ' €',
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
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: percent,
                color: color,
              ),
            ),
            const SizedBox(width: AppPadding.s),
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
