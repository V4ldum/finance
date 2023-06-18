import 'package:finance/features/proof_of_concept/infrastructure/data_sources/data_sources.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider for the coin data source
final coinDataSourceProvider = Provider.autoDispose<ApiCoinDataSource>((ref) {
  return ApiCoinDataSource();
});
