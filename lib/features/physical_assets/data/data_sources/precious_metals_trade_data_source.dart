import 'package:dio/dio.dart';
import 'package:finance/features/physical_assets/data/dtos/trade_values_dto.dart';
import 'package:finance/shared/constants/app_string.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_trade_data_source.g.dart';

@riverpod
PreciousMetalsTradeDataSource preciousMetalsTradeDataSource(Ref ref) {
  final cache = ref.watch(appCacheControllerProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: AppString.preciousMetalTradeValueApi,
      headers: {AppString.customBackHeader: cache.customBackApiKey},
    ),
  );

  return PreciousMetalsTradeDataSource(dio);
}

class PreciousMetalsTradeDataSource {
  PreciousMetalsTradeDataSource(this._dio);

  late final Dio _dio;

  Future<TradeValuesDto> getAllValues() async {
    final response = await _dio.get<JsonMapResponse>('/trade_values');
    return TradeValuesDto.fromHttpResponse(response.data!);
  }

  Future<TradeValueDto> getGoldValue() async {
    final response = await _dio.get<JsonMapResponse>('/trade_values/gold');
    return TradeValueDto.fromHttpResponse(response.data!);
  }

  Future<TradeValueDto> getSilverValue() async {
    final response = await _dio.get<JsonMapResponse>('/trade_values/silver');
    return TradeValueDto.fromHttpResponse(response.data!);
  }

  Future<TradeValueDto> getSP500Value() async {
    final response = await _dio.get<JsonMapResponse>('/trade_values/sp500');
    return TradeValueDto.fromHttpResponse(response.data!);
  }
}
