import 'package:dio/dio.dart';
import 'package:finance/feature/dashboard/data/dto/geographical_repartition_dto.dart';
import 'package:finance/feature/dashboard/data/dto/investment_summary_dto.dart';
import 'package:finance/feature/dashboard/data/dto/period_dto.dart';
import 'package:finance/feature/dashboard/data/dto/stocks_detail_dto.dart';
import 'package:finance/feature/dashboard/data/dto/type_dto.dart';
import 'package:finance/feature/dashboard/data/dto/user_info_dto.dart';
import 'package:finance/shared/constant/strings.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/finary_data_source.g.dart';

@riverpod
FinaryDataSource finaryDataSource(FinaryDataSourceRef ref) {
  return FinaryDataSource();
}

class FinaryDataSource {
  FinaryDataSource();

  late final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Strings.finaryApiUrl,
    ),
  );

  Future<InvestmentSummaryDto> getInvestmentSummary({
    required TypeDto type,
    required PeriodDto period,
    required String accessToken,
  }) async {
    final response = await _dio.get<JsonResponse>(
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
    final response = await _dio.get<JsonResponse>(
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
    final response = await _dio.get<JsonResponse>(
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
    final response = await _dio.get<JsonResponse>(
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
