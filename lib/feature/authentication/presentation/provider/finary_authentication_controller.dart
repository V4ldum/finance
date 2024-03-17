import 'package:finance/feature/authentication/application/finary_auth_service.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/finary_authentication_controller.g.dart';

@riverpod
class FinaryAuthenticationController extends _$FinaryAuthenticationController {
  @override
  bool build() => ref.read(appCacheControllerProvider).finarySessionId.isNotEmpty;

  void logIn() {
    state = ref.read(appCacheControllerProvider).finarySessionId.isNotEmpty;
  }

  Future<void> logOut() async {
    await ref.read(finaryAuthServiceProvider).clearSession();
    ref.read(appCacheControllerProvider).finaryAssets = null;

    state = ref.read(appCacheControllerProvider).finarySessionId.isNotEmpty;
  }
}
