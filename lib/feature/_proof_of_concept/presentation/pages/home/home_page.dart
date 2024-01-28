import 'package:finance/feature/_proof_of_concept/presentation/pages/api/api_page.dart';
import 'package:finance/feature/_proof_of_concept/presentation/pages/coin_home/coin_home_page.dart';
import 'package:finance/shared/constant/app_padding.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => const ApiPage(),
                ),
              ),
              child: const Text('Finary'),
            ),
            const SizedBox(height: AppPadding.xs),
            FilledButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => CoinHomePage(),
                ),
              ),
              child: const Text('Coins'),
            ),
          ],
        ),
      ),
    );
  }
}
