import 'package:finance/feature/authentication/application/finary_auth_service.dart';
import 'package:finance/feature/authentication/domain/model/finary_authentication_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/finary_authentication_popup_controller.g.dart';

@riverpod
class FinaryAuthenticationProcessController extends _$FinaryAuthenticationProcessController {
  @override
  Future<bool> build() => Future.value(false);

  FinaryAuthenticationModel? _authenticationStatus;

  Future<void> logInFinary(String login, String password, {Future<void> Function()? onSuccess}) async {
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      final authentication = await ref.read(finaryAuthServiceProvider).auth(login: login, password: password);

      _authenticationStatus = authentication;
      if (!_authenticationStatus!.otpRequired) {
        await onSuccess?.call();
        return false;
      }

      return true;
    });

    // No errors & OTP not required
    if (!state.hasError && state.requireValue == false) {
      _authenticationStatus = null;
    }
  }

  Future<void> logInFinaryWithOtp(String otp, {Future<void> Function()? onSuccess}) async {
    if (_authenticationStatus != null && !_authenticationStatus!.otpRequired) {
      return;
    }
    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      await ref.read(finaryAuthServiceProvider).authOtp(authModel: _authenticationStatus!, otp: otp);

      await onSuccess?.call();
      return true;
    });

    // No errors & OTP not required
    if (!state.hasError && state.requireValue == true) {
      _authenticationStatus = null;
    }
  }
}
