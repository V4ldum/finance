import 'dart:async';

import 'package:finance/feature/dashboard/domain/model/assets_model.dart';
import 'package:finance/shared/application/assets_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/assets_controller.g.dart';

@riverpod
class AssetsController extends _$AssetsController {
  @override
  Future<AssetsModel> build() async => ref.read(assetsServiceProvider).getAssets();

  Future<void> refreshAssets() async {
    state = await AsyncValue.guard(
      () async => ref.read(assetsServiceProvider).refreshAssets(),
    );
  }
}
