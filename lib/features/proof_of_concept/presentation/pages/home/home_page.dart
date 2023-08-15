import 'package:finance/features/proof_of_concept/presentation/pages/home/home_navigator.dart';
import 'package:finance/shared/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Paddings.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: ref.watch(homeNavigatorProvider).openApi,
              child: const Text('Finary'),
            ),
            const SizedBox(height: Paddings.xs),
            FilledButton(
              onPressed: ref.watch(homeNavigatorProvider).openCoinHome,
              child: const Text('Coins'),
            ),
          ],
        ),
      ),
    );
  }
}
