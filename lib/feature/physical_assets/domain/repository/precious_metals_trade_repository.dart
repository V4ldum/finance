import 'package:dio/dio.dart';
import 'package:finance/feature/physical_assets/data/data_source/precious_metals_trade_data_source.dart';
import 'package:finance/feature/physical_assets/domain/exception/precious_metals_trade_value_exception.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metals_trade_value_model.dart';
import 'package:finance/feature/physical_assets/domain/model/sp500_trade_value_model.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_trade_repository.g.dart';

@riverpod
PreciousMetalsTradeRepository preciousMetalsTradeRepository(PreciousMetalsTradeRepositoryRef ref) {
  return PreciousMetalsTradeRepository(ref);
}

class PreciousMetalsTradeRepository {
  PreciousMetalsTradeRepository(this._ref);

  final PreciousMetalsTradeRepositoryRef _ref;

  PreciousMetalsTradeDataSource get _preciousMetalsTradeDataSource => _ref.read(preciousMetalsTradeDataSourceProvider);

  static const _goldSymbol = 'AU';
  static const _silverSymbol = 'AG';

  Future<PreciousMetalTradeValueModel?> _getMetalValue(String symbol) async {
    var retry = false;
    var retryCount = 0;

    while (retry && retryCount < 5) {
      try {
        final value = await _preciousMetalsTradeDataSource.getMetalValue(symbol);

        retry = false;

        return PreciousMetalTradeValueModel.fromDto(value);
      } on DioException catch (e) {
        debugPrint(e.response!.data.toString());

        if (e.response?.statusCode != 400) {
          throw PreciousMetalsTradeValueException.fromStatusCode(e.response?.statusCode);
        }

        retry = true;
        retryCount++;
      }
    }
    return null;
  }

  Future<PreciousMetalTradeValueModel?> getGoldTradePrice() async {
    return _getMetalValue(_goldSymbol);
  }

  Future<PreciousMetalTradeValueModel?> getSilverTradePrice() async {
    return _getMetalValue(_silverSymbol);
  }

  Future<SP500TradeValueModel?> getSP500TradePrice() async {
    var retry = false;
    var retryCount = 0;

    while (retry && retryCount < 5) {
      try {
        final value = await _preciousMetalsTradeDataSource.getSP500Value();

        return SP500TradeValueModel.fromDto(value);
      } on DioException catch (e) {
        debugPrint(e.response!.data.toString());

        if (e.response?.statusCode != 400) {
          throw PreciousMetalsTradeValueException.fromStatusCode(e.response?.statusCode);
        }

        retry = true;
        retryCount++;
      }
    }
    return null;
  }
}
