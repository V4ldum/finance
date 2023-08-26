import 'dart:math';

import 'package:finance/features/proof_of_concept/domain/model/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';

class CoinDataPage extends ConsumerWidget {
  const CoinDataPage({
    required this.coinId,
    super.key,
  });

  final int coinId;

  Future<CoinEntity> fuzzCoins(Future<CoinEntity> Function(int) getCoinData) async {
    late CoinEntity coin;
    for (var i = 0; i < 100; i++) {
      final rand = Random().nextInt(10000);
      try {
        coin = await getCoinData(rand);
        debugPrint('[$i] works');
      } on DisplayableException catch (e) {
        debugPrint('[$i] ${e.title} : ${e.message} (id : $rand)');
      }
    }
    return coin;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: FutureWidget(
        future: ref.watch(coinRepositoryProvider).getCoinData(coinId),
        //future: fuzzCoins((int id) => ref.watch(getCoinDataUseCaseProvider)(id)),
        success: (data) => _CoinPage(coin: data),
        waiting: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (error, stackTrace) {
          debugPrint(error.toString());
          debugPrint(stackTrace.toString());
          return Column(
            children: [
              Text(error.toString()),
            ],
          );
        },
      ),
    );
  }
}

class _CoinPage extends StatelessWidget {
  const _CoinPage({
    required this.coin,
  });

  final CoinEntity coin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(coin.name),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(coin.composition.unwrapOr(() => 'none')),
              Text(coin.weight.toString()),
              Text(coin.size.toString()),
              Text(coin.thickness.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
