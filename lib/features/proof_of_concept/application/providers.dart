import 'package:finance/features/proof_of_concept/application/use_cases/use_cases.dart';
import 'package:finance/features/proof_of_concept/domain/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for the coin data use case
final getCoinDataUseCaseProvider = Provider.autoDispose<GetCoinDataUseCase>((ref) {
  final repository = ref.watch(coinRepositoryProvider);
  return GetCoinDataUseCase(repository);
});

/// Provider for the search coin use case
final searchCoinsUseCaseProvider = Provider.autoDispose<SearchCoinsUseCase>((ref) {
  final repository = ref.watch(coinRepositoryProvider);
  return SearchCoinsUseCase(repository);
});
