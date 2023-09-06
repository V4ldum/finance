import 'package:finance/feature/proof_of_concept/infrastructure/data_source/api_coin_data_source.dart';
import 'package:finance/feature/proof_of_concept/infrastructure/data_source/finary_api_data_source.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinDataSourceProvider = Provider.autoDispose<ApiCoinDataSource>((ref) {
  return ApiCoinDataSource();
});

final finaryApiDataSourceProvider = Provider.autoDispose<FinaryApiDataSource>((ref) {
  return FinaryApiDataSource();
});
