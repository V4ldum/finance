import 'package:finance/features/physical_assets/domain/models/coin_model.dart';
import 'package:finance/features/physical_assets/domain/repositories/coins_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/get_coin_detail_controller.g.dart';

@riverpod
class GetCoinDetailController extends _$GetCoinDetailController {
  @override
  Future<CoinModel> build(int coinId) async => ref.read(coinsRepositoryProvider).getCoin(id: coinId);
}
