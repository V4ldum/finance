import 'package:dio/dio.dart';
import 'package:finance/feature/physical_assets/data/dto/coin_data_dto.dart';
import 'package:finance/feature/physical_assets/data/dto/coins_query_dto.dart';
import 'package:finance/shared/constant/app_string.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:intl/intl.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/numista_data_source.g.dart';

@riverpod
NumistaDataSource numistaDataSource(NumistaDataSourceRef ref) {
  final cache = ref.watch(appCacheControllerProvider);

  final dio = Dio(
    BaseOptions(
      baseUrl: AppString.numistaApiUrl,
      headers: {
        AppString.numistaKeyHeader: cache.numistaApiKey,
      },
    ),
  );

  return NumistaDataSource(dio);
}

class NumistaDataSource {
  NumistaDataSource(this._dio);

  late final Dio _dio;

  String _getLangFromLocale() {
    // If Locale is french, returns fr, otherwise returns en
    // No other Locale supported
    return Intl.getCurrentLocale().startsWith('fr') ? 'fr' : 'en';
  }

  Future<CoinsQueryDto> searchCoin(String query) async {
    final lang = _getLangFromLocale();

    final response = await _dio.get<JsonResponse>(
      '/types',
      queryParameters: {
        'lang': lang,
        'category': 'coin',
        'q': query,
      },
    );

    return CoinsQueryDto.fromHttpResponse(response.data!);
  }

  Future<CoinDataDto> getCoinInformation({required String id}) async {
    final lang = _getLangFromLocale();

    final response = await _dio.get<JsonResponse>(
      '/types/$id',
      queryParameters: {
        'lang': lang,
      },
    );

    return CoinDataDto.fromHttpResponse(response.data!);
  }
}
