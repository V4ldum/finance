import 'package:finance/features/proof_of_concept/presentation/pages/search_coin/search_coin_page.dart';
import 'package:finance/navigation/app_navigator.dart';

/// Route to navigate to the search coin page
mixin PocSearchCoinRoute {
  /// Open the search coin page
  Future<void> openSearchCoin(String query) async {
    return AppNavigator.push(
      Routes.material(SearchCoinPage(query: query)),
    );
  }
}
