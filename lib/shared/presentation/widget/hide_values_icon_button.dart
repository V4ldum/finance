import 'package:finance/shared/presentation/provider/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HideValueIconButton extends ConsumerWidget {
  const HideValueIconButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return IconButton(
      onPressed: () {
        ref.read(areValuesHidden.notifier).state = !ref.read(areValuesHidden.notifier).state;
      },
      icon: Icon(
        ref.watch(areValuesHidden) //
            ? Icons.visibility
            : Icons.visibility_off,
      ),
    );
  }
}
