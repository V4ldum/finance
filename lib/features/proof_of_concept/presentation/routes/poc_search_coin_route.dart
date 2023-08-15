import 'package:finance/features/proof_of_concept/presentation/pages/search_coin/search_coin_page.dart';
import 'package:finance/navigation/app_navigator.dart';

mixin PocSearchCoinRoute {
  Future<void> openSearchCoin(String query) async {
    return AppNavigator.push(
      Routes.material(SearchCoinPage(query: query)),
    );
  }
}
