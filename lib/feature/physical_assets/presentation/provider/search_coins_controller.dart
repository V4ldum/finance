import 'package:finance/feature/physical_assets/domain/model/search_coin_model.dart';
import 'package:finance/feature/physical_assets/domain/repository/coins_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/search_coins_controller.g.dart';

@riverpod
class SearchCoinsController extends _$SearchCoinsController {
  @override
  Future<List<SearchCoinModel>> build() async => Future.value([]);

  Future<void> searchCoins({required String query}) async {
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(
      () async => ref.read(coinsRepositoryProvider).searchCoin(query: query),
    );
  }

  void clearSearch() {
    state = const AsyncValue.data([]);
  }
}
