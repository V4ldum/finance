// ignore_for_file: avoid_final_parameters
import 'dart:async';

import 'package:finance/feature/authentication/application/finary_auth_service.dart';
import 'package:finance/feature/dashboard/application/dashboard_service.dart';
import 'package:finance/feature/dashboard/domain/model/assets_model.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart' as pp;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/app_cache_controller.freezed.dart';
part '_generated/app_cache_controller.g.dart';

@unfreezed
sealed class AppCache with _$AppCache {
  factory AppCache({
    @Default('') final String applicationDirectory,
    @Default('') final String finarySessionId,
    @Default([]) final List<String> investmentStocksSymbols,
    AssetsModel? assets,
  }) = _AppCache;
}

@Riverpod(keepAlive: true)
class AppCacheController extends _$AppCacheController {
  @override
  AppCache build() => AppCache();

  Future<void> init() async {
    final finaryAuthService = ref.read(finaryAuthServiceProvider);

    // Getting app's directory for later use
    state = state.copyWith(
      applicationDirectory: (await pp.getApplicationDocumentsDirectory()).path,
    );

    // Finary authentication
    await finaryAuthService.getSessionId();

    if (state.finarySessionId.isEmpty) {
      await finaryAuthService.clearSession();
    }

    // Assets
    AssetsModel? assets;
    if (state.finarySessionId.isNotEmpty) {
      assets = await ref.read(dashboardServiceProvider).getAssets();
    }

    // Stocks flagged as investments
    final stocksSymbols = ['MC', 'MBG']; // TODO(val): disk call

    state = state.copyWith(
      assets: assets,
      investmentStocksSymbols: stocksSymbols,
    );
  }

  void refreshSessionId({required String? sessionId}) {
    state = state.copyWith(
      finarySessionId: sessionId ?? '',
    );
  }
}
