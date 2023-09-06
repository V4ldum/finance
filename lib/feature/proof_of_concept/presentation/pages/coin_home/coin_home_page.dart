import 'package:finance/feature/proof_of_concept/presentation/pages/coin_home/coin_home_navigator.dart';
import 'package:finance/shared/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoinHomePage extends ConsumerWidget {
  CoinHomePage({super.key}) : _controller = TextEditingController();

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Paddings.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('CoinPage'),
            ),
            const SizedBox(height: Paddings.m),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Coin',
                filled: true,
              ),
            ),
            const SizedBox(height: Paddings.m),
            FilledButton(
              onPressed: () {
                ref.watch(coinHomeNavigatorProvider).openSearchCoin(_controller.text);
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
