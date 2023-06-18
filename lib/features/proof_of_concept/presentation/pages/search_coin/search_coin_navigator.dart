import 'package:finance/features/proof_of_concept/presentation/routes/coin_data_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider serving an instance of [SearchCoinNavigator]
final searchCoinNavigatorProvider = Provider.autoDispose((ref) {
  return SearchCoinNavigator();
});

/// Navigator used by the SearchCoinPage to navigate around the app
class SearchCoinNavigator with CoinDataRoute {
  /// Constructor for the [SearchCoinNavigator]
  SearchCoinNavigator();
}
