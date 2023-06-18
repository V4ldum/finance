import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:finance/features/proof_of_concept/infrastructure/data_sources/remote/coin_data_source.dart';
import 'package:finance/features/proof_of_concept/infrastructure/exceptions/exceptions.dart';
import 'package:finance/features/proof_of_concept/infrastructure/models/coin_data_model.dart';
import 'package:finance/features/proof_of_concept/infrastructure/models/coins_query_model.dart';
import 'package:finance/shared/constants/strings.dart';
import 'package:meta_package/types.dart';

/// Concrete implementation of the data source related to coins.
/// Uses Numista's REST API to get coin data
/// API documentation can be found at https://en.numista.com/api/doc/index.php
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
  Future<Result<List<CoinSummaryEntity>, SearchCoinsException>> searchCoins(String query) async {
    try {
      return Ok(
        CoinsQueryModel.fromHttpResponse(
          await _dio.get<Map<String, dynamic>>('/types?lang=fr&category=coin&q=$query'),
        ).toEntity(),
      );
    } on DioException catch (e) {
      return Err(
        switch (e.response!.statusCode) {
          401 => SearchCoinsException.unauthorized(),
          429 => SearchCoinsException.tooManyRequests(),
          _ => SearchCoinsException.unknown(),
        },
      );
    }
  }

  @override
  Future<Result<CoinEntity, GetCoinDataException>> getCoinData(int id) async {
    try {
      return Ok(
        CoinDataModel.fromHttpResponse(
          await _dio.get<Map<String, dynamic>>('/types/$id?lang=fr'),
        ).toEntity(),
      );
    } on DioException catch (e) {
      return Err(
        switch (e.response!.statusCode) {
          401 => GetCoinDataException.unauthorized(),
          429 => GetCoinDataException.tooManyRequests(),
          _ => GetCoinDataException.unknown(),
        },
      );
    }
  }
}
