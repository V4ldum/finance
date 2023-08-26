import 'package:finance/features/proof_of_concept/domain/providers.dart';
import 'package:finance/features/proof_of_concept/domain/service/finary_api_repository.dart';
import 'package:finance/features/proof_of_concept/presentation/pages/auth/auth_navigator.dart';
import 'package:finance/navigation/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/types.dart';

final authPageController = Provider.autoDispose((ref) {
  final repository = ref.read(finaryApiRepositoryProvider);
  final navigator = ref.read(authNavigatorProvider);

  return AuthPagePresenter(repository, navigator);
});

class AuthPagePresenter extends BasePresenter {
  AuthPagePresenter(this.repository, this.navigator);

  final FinaryApiRepository repository;
  final AuthNavigator navigator;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> onTapAuthenticationButton(BuildContext context) async {
    try {
      var authentication = await repository.auth(usernameController.text, passwordController.text);

      if (!context.mounted) {
        return;
      }

      displaySnackBar(
        context: context,
        content: const Text('authentication error'),
      );

      if (authentication.otpRelayToken.isSome) {
        final otp = await _getOtp(context);
        authentication = await repository.authOtp(
          usernameController.text,
          passwordController.text,
          otp,
          authentication.otpRelayToken.unwrap(),
        );
      }

      await navigator.openApi();
    } catch (e) {
      // authentication failed
      debugPrint(e.toString());
    }
  }

  Future<String> _getOtp(BuildContext context) async {
    final otp = await showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        final controller = TextEditingController();
        return AlertDialog(
          title: const Text('One time password required'),
          content: TextField(
            controller: controller,
            decoration: const InputDecoration(
              hintText: 'OTP',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => AppNavigator.closeWithResult(controller.text),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    return otp!;
  }
}
