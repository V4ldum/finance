import 'package:finance/features/proof_of_concept/presentation/routes/poc_search_coin_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider serving an instance of [CoinHomeNavigator]
final coinHomeNavigatorProvider = Provider.autoDispose((ref) {
  return CoinHomeNavigator();
});

/// Navigator used by the CoinHomePage to navigate around the app
class CoinHomeNavigator with PocSearchCoinRoute {
  /// Constructor for the [CoinHomeNavigator]
  CoinHomeNavigator();
}
