import 'package:dio/dio.dart';
import 'package:finance/features/physical_assets/data/dtos/coin_dto.dart';
import 'package:finance/features/physical_assets/data/dtos/coins_search_dto.dart';
import 'package:finance/shared/constants/app_string.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/coin_data_source.g.dart';

@riverpod
CoinDataSource coinDataSource(Ref ref) {
  final cache = ref.watch(appCacheControllerProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: AppString.preciousMetalTradeValueApi,
      headers: {AppString.customBackHeader: cache.customBackApiKey},
    ),
  );

  return CoinDataSource(dio);
}

class CoinDataSource {
  CoinDataSource(this._dio);

  late final Dio _dio;

  Future<CoinsSearchDto> searchCoin(String query) async {
    final response = await _dio.get<JsonListResponse>('/coins/search', queryParameters: {'q': query});
    return CoinsSearchDto.fromHttpResponse(response.data!);
  }

  Future<CoinDto> getCoin({required int id}) async {
    final response = await _dio.get<JsonMapResponse>('/coins/$id');

    return CoinDto.fromHttpResponse(response.data!);
  }
}
