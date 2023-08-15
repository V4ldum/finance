import 'package:finance/features/proof_of_concept/presentation/routes/coin_data_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchCoinNavigatorProvider = Provider.autoDispose((ref) {
  return SearchCoinNavigator();
});

class SearchCoinNavigator with CoinDataRoute {
  SearchCoinNavigator();
}
