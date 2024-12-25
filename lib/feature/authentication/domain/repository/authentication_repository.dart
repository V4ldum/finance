import 'package:dio/dio.dart';
import 'package:finance/feature/authentication/data/data_source/finary_authentication_data_source.dart';
import 'package:finance/feature/authentication/domain/exception/finary_authentication_exception.dart';
import 'package:finance/feature/authentication/domain/model/finary_authentication_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/authentication_repository.g.dart';

@riverpod
FinaryAuthenticationRepository finaryAuthenticationRepository(Ref ref) {
  return FinaryAuthenticationRepository(ref);
}

class FinaryAuthenticationRepository {
  FinaryAuthenticationRepository(this._ref);

  final Ref _ref;

  FinaryAuthenticationDataSource get _dataSource => _ref.read(finaryAuthenticationDataSourceProvider);
  AppCache get _appCache => _ref.read(appCacheControllerProvider);

  Future<FinaryAuthenticationModel> auth(String login, String password) async {
    try {
      return FinaryAuthenticationModel.fromDto(
        await _dataSource.auth(login: login, password: password),
      );
    } on DioException catch (e) {
      throw FinaryAuthenticationException.fromStatusCode(e.response?.statusCode);
    }
  }

  Future<FinaryAuthenticationModel> authOtp(String sia, String otp) async {
    try {
      return FinaryAuthenticationModel.fromDto(
        await _dataSource.authOtp(sia: sia, otp: otp),
      );
    } on DioException catch (e) {
      // Manually drill the 400 error for wrong OTP if it's a 422 here, otherwise put the usual error
      throw FinaryAuthenticationException.fromStatusCode(e.response?.statusCode == 422 ? 400 : e.response?.statusCode);
    }
  }

  Future<String> refreshToken(String sessionId) async {
    try {
      if (_appCache.finarySessionId.isEmpty) {
        return '';
      }

      return await _dataSource.refreshToken(sessionId: sessionId);
    } on DioException catch (e) {
      throw FinaryAuthenticationException.fromStatusCode(e.response?.statusCode);
    }
  }
}
