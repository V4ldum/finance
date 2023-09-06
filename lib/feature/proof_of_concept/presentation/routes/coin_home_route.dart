import 'package:finance/feature/proof_of_concept/presentation/pages/coin_home/coin_home_page.dart';
import 'package:finance/navigation/app_navigator.dart';

mixin CoinHomeRoute {
  Future<void> openCoinHome() async {
    return AppNavigator.push(
      Routes.material(CoinHomePage()),
    );
  }
}
