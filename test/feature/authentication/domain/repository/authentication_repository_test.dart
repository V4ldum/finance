import 'package:dio/dio.dart';
import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/authentication/data/data_source/finary_authentication_data_source.dart';
import 'package:finance/feature/authentication/data/dto/authentication_dto.dart';
import 'package:finance/feature/authentication/domain/exception/finary_authentication_exception.dart';
import 'package:finance/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FinaryAuthenticationDataSourceMock extends Mock implements FinaryAuthenticationDataSource {}

void main() {
  S.delegate.load(const Locale.fromSubtags());

  late AppCache cache;
  late FinaryAuthenticationDataSource dataSource;
  late FinaryAuthenticationRepository sut;

  setUp(() {
    cache = AppCache(finarySessionId: 'sess_123');
    dataSource = FinaryAuthenticationDataSourceMock();
    sut = FinaryAuthenticationRepository(dataSource, cache);
  });

  void arrangeFinaryAuthenticationDataSourceAuth() {
    when(() => dataSource.auth(login: any(named: 'login'), password: any(named: 'password'))).thenAnswer(
      (_) async => const AuthenticationDto(
        response: AuthenticationResponseDto(sia: 'sia_123', status: AuthenticationStatusDto.complete),
        client: AuthenticationClientDto(session: AuthenticationSessionDto(id: 'id_123')),
      ),
    );
  }

  void arrangeFinaryAuthenticationDataSourceAuthOtp() {
    when(() => dataSource.authOtp(sia: any(named: 'sia'), otp: any(named: 'otp'))).thenAnswer(
      (_) async => const AuthenticationDto(
        response: AuthenticationResponseDto(sia: 'sia_123', status: AuthenticationStatusDto.complete),
        client: AuthenticationClientDto(session: AuthenticationSessionDto(id: 'id_123')),
      ),
    );
  }

  void arrangeFinaryAuthenticationDataSourceAuthOtpBadRequest() {
    when(() => dataSource.authOtp(sia: any(named: 'sia'), otp: any(named: 'otp'))).thenThrow(
      DioException(
        requestOptions: RequestOptions(),
        response: Response(
          statusCode: 422,
          requestOptions: RequestOptions(),
        ),
      ),
    );
  }

  void arrangeFinaryAuthenticationDataSourceRefreshToken() {
    when(() => dataSource.refreshToken(sessionId: any(named: 'sessionId'))).thenAnswer((_) async => 'token_123');
  }

  test('auth', () async {
    arrangeFinaryAuthenticationDataSourceAuth();

    await sut.auth('test', 'test');

    verify(() => dataSource.auth(login: any(named: 'login'), password: any(named: 'password'))).called(1);
  });
  test('authOtp', () async {
    arrangeFinaryAuthenticationDataSourceAuthOtp();

    await sut.authOtp('test', 'test');
    verify(() => dataSource.authOtp(sia: any(named: 'sia'), otp: any(named: 'otp'))).called(1);
  });
  test('authOtp badRequest', () async {
    arrangeFinaryAuthenticationDataSourceAuthOtpBadRequest();

    try {
      await sut.authOtp('test', 'test');
      throw Exception('(1) This should not be called');
    } on FinaryAuthenticationException catch (e) {
      verify(() => dataSource.authOtp(sia: any(named: 'sia'), otp: any(named: 'otp'))).called(1);
      expect(e.title, FinaryAuthenticationException.badRequest().title);
      expect(e.message, FinaryAuthenticationException.badRequest().message);
    } catch (e) {
      throw Exception('(2) This should not be called');
    }
  });
  test('refreshToken with finarySessionId in cache', () async {
    arrangeFinaryAuthenticationDataSourceRefreshToken();

    final ret = await sut.refreshToken('test');

    verify(() => dataSource.refreshToken(sessionId: any(named: 'sessionId'))).called(1);
    expect(ret, 'token_123');
  });
  test('refreshToken without finarySessionId in cache', () async {
    cache = AppCache();
    dataSource = FinaryAuthenticationDataSourceMock();
    sut = FinaryAuthenticationRepository(dataSource, cache);

    arrangeFinaryAuthenticationDataSourceRefreshToken();

    final ret = await sut.refreshToken('test');

    verifyNever(() => dataSource.refreshToken(sessionId: any(named: 'sessionId')));
    expect(ret, '');
  });
}
