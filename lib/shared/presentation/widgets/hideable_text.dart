import 'package:finance/shared/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HideableText extends ConsumerWidget {
  const HideableText(
    this.text, {
    this.suffix = '',
    this.hiddenText = '#####',
    super.key,
    this.textAlign,
    this.style,
  });

  final String text;
  final String suffix;
  final String hiddenText;
  final TextAlign? textAlign;
  final TextStyle? style;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      '${ref.watch(areValuesHidden) ? hiddenText : text}$suffix',
      textAlign: textAlign,
      style: style,
    );
  }
}
