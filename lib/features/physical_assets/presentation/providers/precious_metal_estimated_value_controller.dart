import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metals_price_model.dart';
import 'package:finance/features/physical_assets/domain/repositories/precious_metals_trade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metal_estimated_value_controller.g.dart';

@riverpod
class PreciousMetalEstimatedValueController extends _$PreciousMetalEstimatedValueController {
  @override
  Future<double> build(PreciousMetalTypeModel? metal, double purity, double weight) async {
    assert(purity < 1 && purity >= 0, 'purity should be between 0 and 1');

    final price = switch (metal) {
      PreciousMetalTypeModel.gold => await ref.read(preciousMetalsPriceRepositoryProvider).getGoldPrice(),
      PreciousMetalTypeModel.silver => await ref.read(preciousMetalsPriceRepositoryProvider).getSilverPrice(),
      _ => PreciousMetalPriceModel(
        metal: PreciousMetalTypeModel.other,
        grams: 0,
        troyOunces: 0,
        lastUpdated: DateTime.now(),
      ),
    };

    return price.grams * purity * weight;
  }
}
