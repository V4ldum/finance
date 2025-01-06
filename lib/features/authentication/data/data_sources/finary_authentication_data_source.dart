import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:finance/features/authentication/data/dtos/authentication_dto.dart';
import 'package:finance/shared/constants/app_string.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/finary_authentication_data_source.g.dart';

@riverpod
FinaryAuthenticationDataSource finaryAuthenticationDataSource(Ref ref) {
  final appCache = ref.watch(appCacheControllerProvider);

  final cookieJar = PersistCookieJar(
    storage: FileStorage('${appCache.applicationDirectory}${Platform.pathSeparator}.finary_cookies'),
  );

  final dio = Dio(
    BaseOptions(
      baseUrl: AppString.finaryClerkApiUrl,
      contentType: Headers.formUrlEncodedContentType,
      headers: {
        'Origin': AppString.finaryAppUrl,
        'Referer': AppString.finaryAppUrl,
      },
    ),
  )..interceptors.add(CookieManager(cookieJar));

  return FinaryAuthenticationDataSource(dio, cookieJar);
}

class FinaryAuthenticationDataSource {
  FinaryAuthenticationDataSource(this._dio, this._cookieJar);

  late final Dio _dio;
  late final CookieJar _cookieJar;

  Future<AuthenticationDto> auth({required String login, required String password}) async {
    try {
      final response = await _dio.post<JsonMapResponse>(
        '/v1/client/sign_ins',
        data: {
          'identifier': login,
          'password': password,
        },
      );
      return AuthenticationDto.fromHttpResponse(response);
    } on DioException catch (e) {
      if (e.response!.statusCode != 400) {
        rethrow;
      }
      // If 400, clear our cookies and retry. It might mean we have a de-sync error
      await _cookieJar.deleteAll();
      return auth(login: login, password: password);
    }
  }

  Future<AuthenticationDto> authOtp({required String otp, required String sia}) async {
    final response = await _dio.post<JsonMapResponse>(
      '/v1/client/sign_ins/$sia/attempt_second_factor',
      data: {
        'strategy': 'totp',
        'code': otp,
      },
    );
    return AuthenticationDto.fromHttpResponse(response);
  }

  Future<String> refreshToken({required String sessionId}) async {
    final response = await _dio.post<JsonMapResponse>(
      '/v1/client/sessions/$sessionId/tokens',
    );
    // Not doing a serialized object just for this parameter
    return (response.data?['jwt'] ?? '') as String;
  }
}
