import 'package:dio/dio.dart';
import 'package:finance/features/assets/data/dtos/geographical_repartition_dto.dart';
import 'package:finance/features/assets/data/dtos/investment_summary_dto.dart';
import 'package:finance/features/assets/data/dtos/period_dto.dart';
import 'package:finance/features/assets/data/dtos/stocks_detail_dto.dart';
import 'package:finance/features/assets/data/dtos/type_dto.dart';
import 'package:finance/features/assets/data/dtos/user_info_dto.dart';
import 'package:finance/shared/constants/app_string.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/finary_data_source.g.dart';

@riverpod
FinaryDataSource finaryDataSource(Ref ref) {
  return FinaryDataSource();
}

class FinaryDataSource {
  FinaryDataSource();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppString.finaryApiUrl,
    ),
  );

  Future<InvestmentSummaryDto> getInvestmentSummary({
    required TypeDto type,
    required PeriodDto period,
    required String accessToken,
  }) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me/portfolio',
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ),
      queryParameters: {
        'type': type.toApiValue(),
        'period': period.toApiValue(),
      },
    );
    return InvestmentSummaryDto.fromHttpResponse(response.data!);
  }

  Future<UserInfoDto> getUserInfo({
    required String accessToken,
  }) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me',
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ),
    );
    return UserInfoDto.fromHttpResponse(response.data!);
  }

  Future<StocksDetailDto> getStocksDetail({
    required PeriodDto period,
    required String accessToken,
  }) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me/portfolio/investments',
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ),
      queryParameters: {
        'period': period.toApiValue(),
      },
    );
    return StocksDetailDto.fromHttpResponse(response.data!);
  }

  Future<GeographicalRepartitionDto> getGeographicalRepartition({
    required String accessToken,
  }) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me/portfolio/investments/geographical_allocation',
      options: Options(
        headers: {
          'Authorization': 'Bearer $accessToken',
        },
      ),
    );
    return GeographicalRepartitionDto.fromHttpResponse(response.data!);
  }
}
