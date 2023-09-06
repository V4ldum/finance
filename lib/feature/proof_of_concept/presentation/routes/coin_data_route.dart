import 'package:finance/feature/proof_of_concept/presentation/pages/coin_data/coin_data_page.dart';
import 'package:finance/navigation/app_navigator.dart';

mixin CoinDataRoute {
  Future<void> openCoinData(int id) async {
    return AppNavigator.push(
      Routes.material(CoinDataPage(coinId: id)),
    );
  }
}
