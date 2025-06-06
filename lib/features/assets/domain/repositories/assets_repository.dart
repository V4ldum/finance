import 'package:dio/dio.dart';
import 'package:finance/features/assets/data/data_sources/finary_data_source.dart';
import 'package:finance/features/assets/data/data_sources/physical_assets_data_source.dart';
import 'package:finance/features/assets/data/dtos/period_dto.dart';
import 'package:finance/features/assets/data/dtos/precious_metal_type_dto.dart';
import 'package:finance/features/assets/domain/exceptions/custom_back_exception.dart';
import 'package:finance/features/assets/domain/exceptions/finary_exception.dart';
import 'package:finance/features/assets/domain/models/finary_assets_model.dart';
import 'package:finance/features/assets/domain/models/physical_assets_model.dart';
import 'package:finance/features/dashboard/presentation/providers/providers.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/assets_repository.g.dart';

@riverpod
AssetsRepository assetsRepository(Ref ref) {
  return AssetsRepository(ref);
}

class AssetsRepository {
  AssetsRepository(this._ref);

  final Ref _ref;

  FinaryDataSource get _finaryDataSource => _ref.read(finaryDataSourceProvider);
  PhysicalAssetsDataSource get _physicalAssetsDataSource => _ref.read(physicalAssetsDataSourceProvider);
  PeriodDto get _selectedPeriod => _ref.read(selectedPeriodControllerProvider);
  AppCache get _cache => _ref.read(appCacheControllerProvider);

  Future<FinaryAssetsModel> getFinaryAssets(String accessToken) async {
    if (accessToken.isEmpty) {
      throw FinaryException.unauthorized();
    }

    try {
      final userInfo = await _finaryDataSource.getUserInfo(accessToken: accessToken);
      final checkingAccounts = await _finaryDataSource.getCheckingAccounts(
        period: _selectedPeriod,
        accessToken: accessToken,
      );
      final savingsAccounts = await _finaryDataSource.getSavingsAccounts(
        period: _selectedPeriod,
        accessToken: accessToken,
      );
      final stocks = await _finaryDataSource.getInvestments(period: _selectedPeriod, accessToken: accessToken);

      final assets = FinaryAssetsModel.fromDto(userInfo, checkingAccounts, savingsAccounts, stocks, _cache);

      return assets;
    } on DioException catch (e) {
      throw FinaryException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<PhysicalAssetsModel> getPhysicalAssets({
    required double goldTradePrice,
    required double silverTradePrice,
  }) async {
    try {
      final assets = await _physicalAssetsDataSource.getAssets();

      final model = PhysicalAssetsModel.fromDto(assets, goldTradePrice, silverTradePrice);

      return model;
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> addCoinPhysicalAsset({required String coinId, required int possessed}) async {
    try {
      await _physicalAssetsDataSource.createCoinAsset(id: int.parse(coinId), possessed: possessed);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> updateCoinPhysicalAsset({required String coinId, required int possessed}) async {
    try {
      await _physicalAssetsDataSource.updateCoinAsset(id: coinId, possessed: possessed);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> removeCoinPhysicalAsset({required String id}) async {
    try {
      await _physicalAssetsDataSource.removeCoinAsset(id: id);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> addCashPhysicalAsset({required String name, required int possessed, required int unitValue}) async {
    try {
      await _physicalAssetsDataSource.createCashAsset(name: name, possessed: possessed, unitValue: unitValue);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> updateCashPhysicalAsset({
    required String id,
    required String name,
    required int possessed,
    required int unitValue,
  }) async {
    try {
      await _physicalAssetsDataSource.updateCashAsset(id: id, name: name, possessed: possessed, unitValue: unitValue);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> removeCashPhysicalAsset({required String id}) async {
    try {
      await _physicalAssetsDataSource.removeCashAsset(id: id);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> addRawPhysicalAsset({
    required String name,
    required int possessed,
    required double unitWeight,
    required PreciousMetalTypeModel metalType,
    required double purity,
  }) async {
    try {
      await _physicalAssetsDataSource.createRawAsset(
        name: name,
        possessed: possessed,
        unitWeight: unitWeight.toInt(),
        composition:
            switch (metalType) {
              PreciousMetalTypeModel.gold => PreciousMetalTypeDto.gold,
              PreciousMetalTypeModel.silver => PreciousMetalTypeDto.silver,
              PreciousMetalTypeModel.other => PreciousMetalTypeDto.other,
            }.toApiValue(),
        purity: (purity * 100).toInt(),
      );
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> updateRawPhysicalAsset({
    required String id,
    required String name,
    required int possessed,
    required double unitWeight,
    required PreciousMetalTypeModel metalType,
    required double purity,
  }) async {
    try {
      await _physicalAssetsDataSource.updateRawAsset(
        id: int.parse(id),
        name: name,
        possessed: possessed,
        unitWeight: unitWeight.toInt(),
        composition:
            switch (metalType) {
              PreciousMetalTypeModel.gold => PreciousMetalTypeDto.gold,
              PreciousMetalTypeModel.silver => PreciousMetalTypeDto.silver,
              PreciousMetalTypeModel.other => PreciousMetalTypeDto.other,
            }.toApiValue(),
        purity: (purity * 100).toInt(),
      );
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<void> removeRawPhysicalAsset({required String id}) async {
    try {
      await _physicalAssetsDataSource.removeRawAsset(id: id);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }
}
