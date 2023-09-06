import 'package:finance/feature/proof_of_concept/presentation/routes/api_route.dart';
import 'package:finance/feature/proof_of_concept/presentation/routes/auth_route.dart';
import 'package:finance/feature/proof_of_concept/presentation/routes/coin_home_route.dart';
import 'package:finance/navigation/app_navigator.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final homeNavigatorProvider = Provider.autoDispose((ref) {
  return HomeNavigator();
});

class HomeNavigator extends AppNavigator with CoinHomeRoute, AuthRoute, ApiRoute {
  HomeNavigator();
}
