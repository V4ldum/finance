import 'package:dio/dio.dart';
import 'package:finance/features/physical_assets/data/dtos/prices_dto.dart';
import 'package:finance/shared/constants/app_string.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_price_data_source.g.dart';

@riverpod
PreciousMetalsPriceDataSource preciousMetalsPriceDataSource(Ref ref) {
  final cache = ref.watch(appCacheControllerProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: AppString.preciousMetalPriceApi,
      headers: {AppString.customBackHeader: cache.customBackApiKey},
    ),
  );

  return PreciousMetalsPriceDataSource(dio);
}

class PreciousMetalsPriceDataSource {
  PreciousMetalsPriceDataSource(this._dio);

  late final Dio _dio;

  Future<PricesDto> getAllPrices() async {
    final response = await _dio.get<JsonMapResponse>('/prices');
    return PricesDto.fromHttpResponse(response.data!);
  }

  Future<PriceDto> getGoldPrice() async {
    final response = await _dio.get<JsonMapResponse>('/prices/gold');
    return PriceDto.fromHttpResponse(response.data!);
  }

  Future<PriceDto> getSilverPrice() async {
    final response = await _dio.get<JsonMapResponse>('/prices/silver');
    return PriceDto.fromHttpResponse(response.data!);
  }

  Future<PriceDto> getSP500Price() async {
    final response = await _dio.get<JsonMapResponse>('/prices/sp500');
    return PriceDto.fromHttpResponse(response.data!);
  }
}
