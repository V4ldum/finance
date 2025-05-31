import 'package:dio/dio.dart';
import 'package:finance/features/assets/data/dtos/accounts_dto.dart';
import 'package:finance/features/assets/data/dtos/geographical_repartition_dto.dart';
import 'package:finance/features/assets/data/dtos/period_dto.dart';
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

  final Dio _dio = Dio(BaseOptions(baseUrl: AppString.finaryApiUrl));

  Future<UserInfoDto> getUserInfo({required String accessToken}) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );
    return UserInfoDto.fromHttpResponse(response.data!);
  }

  Future<AccountsDto> getCheckingAccounts({required PeriodDto period, required String accessToken}) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me/portfolio/checking_accounts/accounts',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      queryParameters: {'period': period.toApiValue()},
    );
    return AccountsDto.fromHttpResponse(response.data!);
  }

  Future<AccountsDto> getSavingsAccounts({required PeriodDto period, required String accessToken}) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me/portfolio/savings_accounts/accounts',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      queryParameters: {'period': period.toApiValue()},
    );
    return AccountsDto.fromHttpResponse(response.data!);
  }

  Future<AccountsDto> getInvestments({required PeriodDto period, required String accessToken}) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me/portfolio/investments/accounts',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
      queryParameters: {'period': period.toApiValue()},
    );
    return AccountsDto.fromHttpResponse(response.data!);
  }

  Future<GeographicalRepartitionDto> getGeographicalRepartition({required String accessToken}) async {
    final response = await _dio.get<JsonMapResponse>(
      '/users/me/portfolio/investments/geographical_allocation',
      options: Options(headers: {'Authorization': 'Bearer $accessToken'}),
    );
    return GeographicalRepartitionDto.fromHttpResponse(response.data!);
  }
}
