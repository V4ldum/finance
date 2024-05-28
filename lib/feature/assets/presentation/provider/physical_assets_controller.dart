import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/physical_assets_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/physical_assets_controller.g.dart';

@riverpod
class PhysicalAssetsController extends _$PhysicalAssetsController {
  @override
  Future<PhysicalAssetsModel> build() async => ref.read(assetsServiceProvider).getPhysicalAssets();

  Future<void> refreshAssets() async {
    state = await AsyncValue.guard(
      () async => ref.read(assetsServiceProvider).refreshPhysicalAssets(),
    );
  }
}
