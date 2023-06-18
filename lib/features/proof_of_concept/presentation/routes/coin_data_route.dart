import 'package:finance/features/proof_of_concept/presentation/pages/coin_data/coin_data_page.dart';
import 'package:finance/navigation/app_navigator.dart';

/// Route to navigate to the coin details page
mixin CoinDataRoute {
  /// Open the coin details page
  Future<void> openCoinData(int id) async {
    return AppNavigator.push(
      Routes.material(CoinDataPage(coinId: id)),
    );
  }
}
