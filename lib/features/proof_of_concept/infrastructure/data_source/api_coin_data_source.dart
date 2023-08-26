import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/infrastructure/abstract_data_source/coin_data_source.dart';
import 'package:finance/features/proof_of_concept/infrastructure/dto/coin_data_model.dart';
import 'package:finance/features/proof_of_concept/infrastructure/dto/coins_query_model.dart';
import 'package:finance/shared/constants/strings.dart';
import 'package:meta_package/types.dart';

class ApiCoinDataSource implements CoinDataSource {
  final _dio = Dio(
    BaseOptions(
      baseUrl: Strings.numistaApiUrl,
      headers: {
        Strings.numistaKeyHeader: Strings.numistaSecretKey,
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
