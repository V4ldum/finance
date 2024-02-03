import 'package:dio/dio.dart';
import 'package:finance/feature/_proof_of_concept/infrastructure/abstract_data_source/coin_data_source.dart';
import 'package:finance/feature/_proof_of_concept/infrastructure/dto/coin_data_model.dart';
import 'package:finance/feature/_proof_of_concept/infrastructure/dto/coins_query_model.dart';
import 'package:finance/shared/constant/app_string.dart';
import 'package:meta_package/meta_package.dart';

class ApiCoinDataSource implements CoinDataSource {
  final _dio = Dio(
    BaseOptions(
      baseUrl: AppString.numistaApiUrl,
      headers: {
        AppString.numistaKeyHeader: AppString.numistaSecretKey,
      },
    ),
  );

  @override
  Future<CoinsQueryModel> searchCoins(String query) async {
    return CoinsQueryModel.fromHttpResponse(
      await _dio.get<JsonResponse>('/types?lang=fr&category=coin&q=$query'),
    );
  }

  @override
  Future<CoinDataModel> getCoinData(int id) async {
    return CoinDataModel.fromHttpResponse(
      await _dio.get<JsonResponse>('/types/$id?lang=fr'),
    );
  }
}
