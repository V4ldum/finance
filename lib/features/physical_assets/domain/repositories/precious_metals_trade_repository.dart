import 'package:dio/dio.dart';
import 'package:finance/features/assets/domain/exceptions/custom_back_exception.dart';
import 'package:finance/features/physical_assets/data/data_sources/precious_metals_price_data_source.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metals_price_model.dart';
import 'package:finance/features/physical_assets/domain/models/sp500_price_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_trade_repository.g.dart';

@riverpod
PreciousMetalsPriceRepository preciousMetalsPriceRepository(Ref ref) {
  return PreciousMetalsPriceRepository(ref);
}

class PreciousMetalsPriceRepository {
  PreciousMetalsPriceRepository(this._ref);

  final Ref _ref;

  PreciousMetalsPriceDataSource get _preciousMetalsPriceDataSource => _ref.read(preciousMetalsPriceDataSourceProvider);

  Future<PreciousMetalPriceModel> getGoldPrice() async {
    try {
      final value = await _preciousMetalsPriceDataSource.getGoldPrice();

      return PreciousMetalPriceModel.fromDto(value, PreciousMetalTypeModel.gold);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<PreciousMetalPriceModel> getSilverPrice() async {
    try {
      final value = await _preciousMetalsPriceDataSource.getSilverPrice();

      return PreciousMetalPriceModel.fromDto(value, PreciousMetalTypeModel.silver);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<SP500PriceModel> getSP500Price() async {
    try {
      final value = await _preciousMetalsPriceDataSource.getSP500Price();

      return SP500PriceModel.fromDto(value);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }
}
