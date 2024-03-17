import 'package:finance/feature/authentication/domain/model/finary_authentication_model.dart';
import 'package:finance/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/finary_auth_service.g.dart';

@riverpod
FinaryAuthService finaryAuthService(FinaryAuthServiceRef ref) {
  return FinaryAuthService(ref);
}

class FinaryAuthService {
  FinaryAuthService(this._ref);

  final FinaryAuthServiceRef _ref;

  FinaryAuthenticationRepository get _finaryAuthRepository => _ref.read(finaryAuthenticationRepositoryProvider);
  LocalStorageRepository get _localStorageRepository => _ref.read(localStorageRepositoryProvider);
  AppCacheController get _appCacheController => _ref.read(appCacheControllerProvider.notifier);

  Future<void> _saveSessionId(String sessionId) async {
    await _localStorageRepository.saveSessionId(sessionId);

    await getSessionId();
  }

  Future<FinaryAuthenticationModel> auth({required String login, required String password}) async {
    final result = await _finaryAuthRepository.auth(login, password);

    if (!result.otpRequired) {
      await _saveSessionId(result.sessionId);
    }

    return result;
  }

  Future<FinaryAuthenticationModel> authOtp({required FinaryAuthenticationModel authModel, required String otp}) async {
    final result = await _finaryAuthRepository.authOtp(authModel.sia, otp);

    if (!result.otpRequired) {
      await _saveSessionId(result.sessionId);
    }

    return result;
  }

  Future<void> getSessionId() async {
    _appCacheController.refreshSessionId(
      sessionId: await _localStorageRepository.readSessionId(),
    );
  }

  Future<void> clearSession() async {
    await _localStorageRepository.clearSessionId();

    _appCacheController.refreshSessionId(sessionId: null);
  }
}
