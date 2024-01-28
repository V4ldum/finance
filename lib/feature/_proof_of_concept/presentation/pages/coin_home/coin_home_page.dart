import 'package:finance/feature/_proof_of_concept/presentation/pages/search_coin/search_coin_page.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CoinHomePage extends ConsumerWidget {
  CoinHomePage({super.key}) : _controller = TextEditingController();

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('CoinPage'),
            ),
            const SizedBox(height: AppPadding.m),
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Coin',
                filled: true,
              ),
            ),
            const SizedBox(height: AppPadding.m),
            FilledButton(
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute<void>(
                  builder: (_) => SearchCoinPage(query: _controller.text),
                ),
              ),
              child: const Text('Search'),
            ),
          ],
        ),
      ),
    );
  }
}
