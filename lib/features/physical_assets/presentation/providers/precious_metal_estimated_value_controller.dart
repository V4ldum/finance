import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metals_trade_value_model.dart';
import 'package:finance/features/physical_assets/domain/repositories/precious_metals_trade_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metal_estimated_value_controller.g.dart';

@riverpod
class PreciousMetalEstimatedValueController extends _$PreciousMetalEstimatedValueController {
  @override
  Future<double> build(
    PreciousMetalTypeModel? metal,
    double purity,
    double weight,
  ) async {
    assert(purity < 1 && purity >= 0, 'purity should be between 0 and 1');

    final tradeValue = switch (metal) {
      PreciousMetalTypeModel.gold => await ref.read(preciousMetalsTradeRepositoryProvider).getGoldTradeValue(),
      PreciousMetalTypeModel.silver => await ref.read(preciousMetalsTradeRepositoryProvider).getSilverTradeValue(),
      _ => PreciousMetalTradeValueModel(
          metal: PreciousMetalTypeModel.other,
          grams: 0,
          troyOunces: 0,
          lastUpdated: DateTime.now(),
        ),
    };

    return tradeValue.grams * purity * weight;
  }
}
