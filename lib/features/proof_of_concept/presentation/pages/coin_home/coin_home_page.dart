import 'package:finance/features/proof_of_concept/presentation/pages/coin_home/coin_home_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Page used to input a query for coins
class CoinHomePage extends ConsumerWidget {
  /// Constructor for the [CoinHomePage]
  CoinHomePage({super.key}) : _controller = TextEditingController();

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('CoinPage'),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Coin',
                filled: true,
              ),
            ),
            const SizedBox(height: 10),
            FilledButton(
              onPressed: () {
                ref.read(coinHomeNavigatorProvider).openSearchCoin(_controller.text);
              },
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
