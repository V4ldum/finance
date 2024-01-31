// ignore_for_file: avoid_final_parameters
import 'dart:async';

import 'package:finance/feature/authentication/application/finary_auth_service.dart';
import 'package:finance/feature/dashboard/domain/model/assets_model.dart';
import 'package:finance/shared/application/assets_service.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
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
    // Getting app's directory for later use
    state = state.copyWith(
      applicationDirectory: (await path_provider.getApplicationDocumentsDirectory()).path,
    );

    // Finary authentication
    await ref.read(finaryAuthServiceProvider).getSessionId();
    if (state.finarySessionId.isEmpty) {
      await ref.read(finaryAuthServiceProvider).clearSession();
    }

    // Stocks flagged as investments
    state = state.copyWith(
      investmentStocksSymbols: await ref.read(assetsServiceProvider).getStocksSymbols(),
    );

    // Assets
    if (state.finarySessionId.isNotEmpty) {
      state = state.copyWith(
        assets: await ref.read(assetsServiceProvider).getAssets(),
      );
    }
  }

  void refreshSessionId({required String? sessionId}) {
    state = state.copyWith(
      finarySessionId: sessionId ?? '',
    );
  }

  void refreshStocksSymbol(List<String> stocksSymbols) {
    state = state.copyWith(
      investmentStocksSymbols: stocksSymbols,
    );
  }
}
