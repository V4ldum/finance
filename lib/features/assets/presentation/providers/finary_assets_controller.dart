import 'package:finance/features/assets/application/assets_service.dart';
import 'package:finance/features/assets/domain/models/finary_assets_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/finary_assets_controller.g.dart';

@riverpod
class FinaryAssetsController extends _$FinaryAssetsController {
  @override
  Future<FinaryAssetsModel> build() async => ref.read(assetsServiceProvider).getFinaryAssets();

  Future<void> refreshAssets() async {
    state = await AsyncValue.guard(() async => ref.read(assetsServiceProvider).refreshFinaryAssets());
  }
}
