import 'package:dio/dio.dart';
import 'package:finance/feature/assets/data/data_source/finary_data_source.dart';
import 'package:finance/feature/assets/data/data_source/physical_assets_data_source.dart';
import 'package:finance/feature/assets/data/dto/period_dto.dart';
import 'package:finance/feature/assets/data/dto/precious_metal_type_dto.dart';
import 'package:finance/feature/assets/data/dto/type_dto.dart';
import 'package:finance/feature/assets/domain/exception/custom_back_exception.dart';
import 'package:finance/feature/assets/domain/exception/finary_exception.dart';
import 'package:finance/feature/assets/domain/model/finary_assets_model.dart';
import 'package:finance/feature/assets/domain/model/physical_assets_model.dart';
import 'package:finance/feature/dashboard/presentation/provider/providers.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
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
      final summary = await _finaryDataSource.getInvestmentSummary(
        type: TypeDto.gross,
        period: _selectedPeriod,
        accessToken: accessToken,
      );
      final userInfo = await _finaryDataSource.getUserInfo(accessToken: accessToken);
      final stocks = await _finaryDataSource.getStocksDetail(period: _selectedPeriod, accessToken: accessToken);

      final assets = FinaryAssetsModel.fromDto(summary, userInfo, stocks, _cache);

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

  Future<void> addCashPhysicalAsset({
    required String name,
    required int possessed,
    required int unitValue,
  }) async {
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
      await _physicalAssetsDataSource.updateCashAsset(
        id: id,
        name: name,
        possessed: possessed,
        unitValue: unitValue,
      );
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
        composition: switch (metalType) {
          PreciousMetalTypeModel.gold => PreciousMetalTypeDto.gold,
          PreciousMetalTypeModel.silver => PreciousMetalTypeDto.silver,
          PreciousMetalTypeModel.other => PreciousMetalTypeDto.other,
        }
            .toApiValue(),
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
        composition: switch (metalType) {
          PreciousMetalTypeModel.gold => PreciousMetalTypeDto.gold,
          PreciousMetalTypeModel.silver => PreciousMetalTypeDto.silver,
          PreciousMetalTypeModel.other => PreciousMetalTypeDto.other,
        }
            .toApiValue(),
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
