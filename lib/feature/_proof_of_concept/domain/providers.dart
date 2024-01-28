import 'package:finance/feature/_proof_of_concept/domain/service/api_coin_repository.dart';
import 'package:finance/feature/_proof_of_concept/domain/service/finary_api_repository.dart';
import 'package:finance/feature/_proof_of_concept/infrastructure/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinRepositoryProvider = Provider.autoDispose<ApiCoinRepository>((ref) {
  final dataProvider = ref.watch(coinDataSourceProvider);
  return ApiCoinRepository(dataProvider);
});

final finaryApiRepositoryProvider = Provider.autoDispose<FinaryApiRepository>((ref) {
  final dataProvider = ref.watch(finaryApiDataSourceProvider);
  return FinaryApiRepository(dataProvider);
});
