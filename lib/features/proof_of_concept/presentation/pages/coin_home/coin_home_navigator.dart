import 'package:finance/features/proof_of_concept/presentation/routes/poc_search_coin_route.dart';
import 'package:finance/navigation/app_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final coinHomeNavigatorProvider = Provider.autoDispose((ref) {
  return CoinHomeNavigator();
});

class CoinHomeNavigator extends AppNavigator with PocSearchCoinRoute {
  CoinHomeNavigator();
}
