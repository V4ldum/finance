import 'package:finance/features/physical_assets/domain/models/precious_metals_trade_value_model.dart';
import 'package:finance/features/physical_assets/domain/models/sp500_trade_value_model.dart';
import 'package:finance/features/physical_assets/domain/repositories/precious_metals_trade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/ratio_controller.g.dart';

@riverpod
class RatioController extends _$RatioController {
  @override
  Future<(PreciousMetalTradeValueModel, PreciousMetalTradeValueModel, SP500TradeValueModel)> build() async {
    final silverTradePrice = await ref.read(preciousMetalsTradeRepositoryProvider).getSilverTradeValue();
    final goldTradePrice = await ref.read(preciousMetalsTradeRepositoryProvider).getGoldTradeValue();
    final spTradePrice = await ref.read(preciousMetalsTradeRepositoryProvider).getSP500TradeValue();

    return (goldTradePrice, silverTradePrice, spTradePrice);
  }
}
