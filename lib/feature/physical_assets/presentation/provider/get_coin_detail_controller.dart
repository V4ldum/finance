import 'package:finance/feature/physical_assets/domain/model/coin_data_model.dart';
import 'package:finance/feature/physical_assets/domain/repository/coins_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/get_coin_detail_controller.g.dart';

@riverpod
class GetCoinDetailController extends _$GetCoinDetailController {
  @override
  Future<CoinDataModel> build(String coinId) async => ref.read(coinsRepositoryProvider).getCoinInformation(id: coinId);
}
