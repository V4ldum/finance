import 'package:finance/features/proof_of_concept/application/use_cases/investments_distribution_use_case.dart';
import 'package:finance/features/proof_of_concept/application/use_cases/use_cases.dart';
import 'package:finance/features/proof_of_concept/domain/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final getCoinDataUseCaseProvider = Provider.autoDispose<GetCoinDataUseCase>((ref) {
  final repository = ref.watch(coinRepositoryProvider);
  return GetCoinDataUseCase(repository);
});

final searchCoinsUseCaseProvider = Provider.autoDispose<SearchCoinsUseCase>((ref) {
  final repository = ref.watch(coinRepositoryProvider);
  return SearchCoinsUseCase(repository);
});

final authFinaryUseCaseProvider = Provider.autoDispose<AuthFinaryUseCase>((ref) {
  final repository = ref.watch(finaryApiRepositoryProvider);
  return AuthFinaryUseCase(repository);
});

final authOtpFinaryUseCaseProvider = Provider.autoDispose<AuthOtpFinaryUseCase>((ref) {
  final repository = ref.watch(finaryApiRepositoryProvider);
  return AuthOtpFinaryUseCase(repository);
});

final investmentsDistributionUseCaseProvider = Provider.autoDispose<InvestmentsDistributionUseCase>((ref) {
  final repository = ref.watch(finaryApiRepositoryProvider);
  return InvestmentsDistributionUseCase(repository);
});
