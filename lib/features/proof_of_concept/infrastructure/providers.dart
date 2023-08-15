import 'package:finance/features/proof_of_concept/infrastructure/data_sources/data_sources.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinDataSourceProvider = Provider.autoDispose<ApiCoinDataSource>((ref) {
  return ApiCoinDataSource();
});

final finaryApiDataSourceProvider = Provider.autoDispose<FinaryApiDataSource>((ref) {
  return FinaryApiDataSource();
});
