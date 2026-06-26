import 'package:finance/features/physical_assets/domain/models/precious_metals_price_model.dart';
import 'package:finance/features/physical_assets/domain/models/sp500_price_model.dart';
import 'package:finance/features/physical_assets/domain/repositories/precious_metals_trade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/ratio_controller.g.dart';

@riverpod
class RatioController extends _$RatioController {
  @override
  Future<(PreciousMetalPriceModel, PreciousMetalPriceModel, SP500PriceModel)> build() async {
    final silverTradePrice = await ref.read(preciousMetalsPriceRepositoryProvider).getSilverPrice();
    final goldTradePrice = await ref.read(preciousMetalsPriceRepositoryProvider).getGoldPrice();
    final spTradePrice = await ref.read(preciousMetalsPriceRepositoryProvider).getSP500Price();

    return (goldTradePrice, silverTradePrice, spTradePrice);
  }
}
