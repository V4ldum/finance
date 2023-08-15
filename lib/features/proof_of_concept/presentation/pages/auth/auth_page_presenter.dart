import 'package:finance/features/proof_of_concept/application/providers.dart';
import 'package:finance/features/proof_of_concept/presentation/pages/auth/auth_navigator.dart';
import 'package:finance/navigation/app_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/types.dart';

final presenter = Provider.autoDispose((ref) => AuthPagePresenter());

class AuthPagePresenter extends BasePresenter {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> onTapAuthenticationButton(WidgetRef ref) async {
    var authentication = await ref.watch(authFinaryUseCaseProvider)(usernameController.text, passwordController.text);

    if (authentication.isErr) {
      // ignore: use_build_context_synchronously
      mountGuard(ref.context, (context) {
        displaySnackBar(
          context: context,
          content: Text(authentication.err().unwrap().message),
        );
      });
      return;
    }

    if (authentication.ok().unwrap().otpRelayToken.isSome) {
      final otp = await _getOtp(ref);
      authentication = await ref.watch(authOtpFinaryUseCaseProvider)(
        username: usernameController.text,
        password: passwordController.text,
        otp: otp,
        authenticationEntity: authentication.ok().unwrap(),
      );
    }

    if (authentication.isOk) {
      await ref.read(authNavigatorProvider).openApi();
    } else {
      debugPrint('no');
    }
  }

  Future<String> _getOtp(WidgetRef ref) async {
    final otp = await showDialog<String>(
      context: ref.context,
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
            )
          ],
        );
      },
    );

    return otp!;
  }
}
