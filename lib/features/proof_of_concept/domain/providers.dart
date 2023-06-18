import 'package:finance/features/proof_of_concept/domain/repositories/repositories.dart';
import 'package:finance/features/proof_of_concept/infrastructure/providers.dart';
import 'package:finance/features/proof_of_concept/infrastructure/repositories/repositories.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for the coin repository
final coinRepositoryProvider = Provider.autoDispose<CoinRepository>((ref) {
  final dataProvider = ref.watch(coinDataSourceProvider);
  return ApiCoinRepository(dataProvider);
});
