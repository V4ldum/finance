import 'package:dio/dio.dart';
import 'package:finance/feature/physical_assets/data/dto/trade_values_dto.dart';
import 'package:finance/shared/constant/app_string.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_trade_data_source.g.dart';

@riverpod
PreciousMetalsTradeDataSource preciousMetalsTradeDataSource(PreciousMetalsTradeDataSourceRef ref) {
  final cache = ref.watch(appCacheControllerProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: AppString.preciousMetalTradeValueApi,
      headers: {
        AppString.customBackHeader: cache.customBackApiKey,
      },
    ),
  );

  return PreciousMetalsTradeDataSource(dio);
}

class PreciousMetalsTradeDataSource {
  PreciousMetalsTradeDataSource(this._dio);

  late final Dio _dio;

  Future<TradeValuesDto> getAllValues() async {
    final response = await _dio.get<JsonResponse>('trade_values');
    return TradeValuesDto.fromHttpResponse(response.data!);
  }

  Future<TradeValueDto> getGoldValue() async {
    final response = await _dio.get<JsonResponse>('trade_values/gold');
    return TradeValueDto.fromHttpResponse(response.data!);
  }

  Future<TradeValueDto> getSilverValue() async {
    final response = await _dio.get<JsonResponse>('trade_values/silver');
    return TradeValueDto.fromHttpResponse(response.data!);
  }

  Future<TradeValueDto> getSP500Value() async {
    final response = await _dio.get<JsonResponse>('trade_values/sp500');
    return TradeValueDto.fromHttpResponse(response.data!);
  }
}
