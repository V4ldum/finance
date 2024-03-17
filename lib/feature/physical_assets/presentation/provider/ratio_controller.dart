import 'package:finance/feature/physical_assets/domain/repository/precious_metals_trade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/ratio_controller.g.dart';

@riverpod
class RatioController extends _$RatioController {
  @override
  Future<(double, double)> build() async {
    final silverTradePrice =
        (await ref.read(preciousMetalsTradeRepositoryProvider).getSilverTradePrice())?.troyOunces ?? 0;
    final goldTradePrice = (await ref.read(preciousMetalsTradeRepositoryProvider).getGoldTradePrice())?.troyOunces ?? 0;
    final spTradePrice = (await ref.read(preciousMetalsTradeRepositoryProvider).getSP500TradePrice())?.value ?? 0;

    return (goldTradePrice / silverTradePrice, spTradePrice / goldTradePrice);
  }
}
