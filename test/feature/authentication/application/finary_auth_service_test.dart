import 'package:finance/feature/authentication/application/finary_auth_service.dart';
import 'package:finance/feature/authentication/domain/model/finary_authentication_model.dart';
import 'package:finance/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FinaryAuthenticationRepositoryMock extends Mock implements FinaryAuthenticationRepository {}

class LocalStorageRepositoryMock extends Mock implements LocalStorageRepository {}

class AppCacheControllerMock extends Mock implements AppCacheController {}

void main() {
  late FinaryAuthenticationRepository authRepository;
  late LocalStorageRepository localStorageRepository;
  late AppCacheController cacheController;
  late FinaryAuthService sut;

  setUp(() {
    authRepository = FinaryAuthenticationRepositoryMock();
    localStorageRepository = LocalStorageRepositoryMock();
    cacheController = AppCacheControllerMock();
    sut = FinaryAuthService(authRepository, localStorageRepository, cacheController);
  });

  void arrangeLocalStorageRepositoryGetSessionId() {
    when(() => localStorageRepository.readSessionId()).thenAnswer((_) async => 'sess_123');
    when(() => cacheController.refreshSessionId(sessionId: any(named: 'sessionId'))).thenAnswer((_) async {});
  }

  void arrangeLocalStorageRepositorySaveSessionId() {
    when(() => localStorageRepository.saveSessionId(any())).thenAnswer((_) async {});
    arrangeLocalStorageRepositoryGetSessionId();
  }

  void arrangeLocalStorageRepositoryClearSessionId() {
    when(() => localStorageRepository.clearSessionId()).thenAnswer((_) async {});
    when(() => cacheController.refreshSessionId(sessionId: null)).thenAnswer((_) async {});
  }

  void arrangeFinaryAuthRepositoryAuth({required bool otpRequired}) {
    arrangeLocalStorageRepositorySaveSessionId();
    when(() => authRepository.auth(any(), any()))
        .thenAnswer((_) async => FinaryAuthenticationModel(sia: '', sessionId: '', otpRequired: otpRequired));
  }

  void arrangeFinaryAuthRepositoryAuthOtp({required bool otpRequired}) {
    arrangeLocalStorageRepositorySaveSessionId();
    when(() => authRepository.authOtp(any(), any()))
        .thenAnswer((_) async => FinaryAuthenticationModel(sia: '', sessionId: '', otpRequired: otpRequired));
  }

  test('auth with otp required', () async {
    arrangeFinaryAuthRepositoryAuth(otpRequired: true);

    await sut.auth(login: 'test', password: 'test');

    verify(() => authRepository.auth(any(), any())).called(1);
    verifyNever(() => localStorageRepository.saveSessionId(any()));
    verifyNever(() => cacheController.refreshSessionId(sessionId: any(named: 'sessionId')));
    verifyNever(() => localStorageRepository.readSessionId());
  });
  test('auth with otp not required', () async {
    arrangeFinaryAuthRepositoryAuth(otpRequired: false);

    await sut.auth(login: 'test', password: 'test');

    verify(() => authRepository.auth(any(), any())).called(1);
    verify(() => localStorageRepository.saveSessionId(any())).called(1);
    verify(() => cacheController.refreshSessionId(sessionId: any(named: 'sessionId'))).called(1);
    verify(() => localStorageRepository.readSessionId()).called(1);
  });
  test('authOtp with otp required', () async {
    arrangeFinaryAuthRepositoryAuthOtp(otpRequired: true);

    await sut.authOtp(authModel: FinaryAuthenticationModel(sia: 'test', sessionId: '', otpRequired: true), otp: 'test');

    verify(() => authRepository.authOtp(any(), any())).called(1);
    verifyNever(() => localStorageRepository.saveSessionId(any()));
    verifyNever(() => cacheController.refreshSessionId(sessionId: any(named: 'sessionId')));
    verifyNever(() => localStorageRepository.readSessionId());
  });
  test('authOtp with otp not required', () async {
    arrangeFinaryAuthRepositoryAuthOtp(otpRequired: false);

    await sut.authOtp(authModel: FinaryAuthenticationModel(sia: 'test', sessionId: '', otpRequired: true), otp: 'test');

    verify(() => authRepository.authOtp(any(), any())).called(1);
    verify(() => localStorageRepository.saveSessionId(any())).called(1);
    verify(() => cacheController.refreshSessionId(sessionId: any(named: 'sessionId'))).called(1);
    verify(() => localStorageRepository.readSessionId()).called(1);
  });
  test('getSessionId', () async {
    arrangeLocalStorageRepositoryGetSessionId();

    await sut.getSessionId();

    verify(() => localStorageRepository.readSessionId()).called(1);
    verify(() => cacheController.refreshSessionId(sessionId: any(named: 'sessionId'))).called(1);
  });
  test('clearSessionId', () async {
    arrangeLocalStorageRepositoryClearSessionId();

    await sut.clearSession();

    verify(() => localStorageRepository.clearSessionId()).called(1);
    verify(() => cacheController.refreshSessionId(sessionId: null)).called(1);
  });
}
