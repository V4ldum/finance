import 'package:finance/features/physical_assets/domain/repositories/precious_metals_trade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/ratio_controller.g.dart';

@riverpod
class RatioController extends _$RatioController {
  @override
  Future<(double, double)> build() async {
    final silverTradePrice = (await ref.read(preciousMetalsTradeRepositoryProvider).getSilverTradeValue()).troyOunces;
    final goldTradePrice = (await ref.read(preciousMetalsTradeRepositoryProvider).getGoldTradeValue()).troyOunces;
    final spTradePrice = (await ref.read(preciousMetalsTradeRepositoryProvider).getSP500TradeValue()).value;

    return (goldTradePrice / silverTradePrice, spTradePrice / goldTradePrice);
  }
}
