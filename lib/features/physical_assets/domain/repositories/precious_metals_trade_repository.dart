import 'package:dio/dio.dart';
import 'package:finance/features/assets/domain/exceptions/custom_back_exception.dart';
import 'package:finance/features/physical_assets/data/data_sources/precious_metals_trade_data_source.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metals_trade_value_model.dart';
import 'package:finance/features/physical_assets/domain/models/sp500_trade_value_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_trade_repository.g.dart';

@riverpod
PreciousMetalsTradeRepository preciousMetalsTradeRepository(Ref ref) {
  return PreciousMetalsTradeRepository(ref);
}

class PreciousMetalsTradeRepository {
  PreciousMetalsTradeRepository(this._ref);

  final Ref _ref;

  PreciousMetalsTradeDataSource get _preciousMetalsTradeDataSource => _ref.read(preciousMetalsTradeDataSourceProvider);

  Future<PreciousMetalTradeValueModel> getGoldTradeValue() async {
    try {
      final value = await _preciousMetalsTradeDataSource.getGoldValue();

      return PreciousMetalTradeValueModel.fromDto(value, PreciousMetalTypeModel.gold);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<PreciousMetalTradeValueModel> getSilverTradeValue() async {
    try {
      final value = await _preciousMetalsTradeDataSource.getSilverValue();

      return PreciousMetalTradeValueModel.fromDto(value, PreciousMetalTypeModel.silver);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<SP500TradeValueModel> getSP500TradeValue() async {
    try {
      final value = await _preciousMetalsTradeDataSource.getSP500Value();

      return SP500TradeValueModel.fromDto(value);
    } on DioException catch (e) {
      throw CustomBackException.fromStatusCode(e.response?.statusCode);
    }
  }
}
