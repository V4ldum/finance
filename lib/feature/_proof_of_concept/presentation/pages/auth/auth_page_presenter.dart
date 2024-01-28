import 'package:finance/feature/_proof_of_concept/domain/providers.dart';
import 'package:finance/feature/_proof_of_concept/domain/service/finary_api_repository.dart';
import 'package:finance/feature/_proof_of_concept/presentation/pages/api/api_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authPageController = Provider.autoDispose((ref) {
  final repository = ref.read(finaryApiRepositoryProvider);

  return AuthPagePresenter(repository);
});

class AuthPagePresenter {
  AuthPagePresenter(this.repository);

  final FinaryApiRepository repository;

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> onTapAuthenticationButton(BuildContext context) async {
    try {
      var authentication = await repository.auth(usernameController.text, passwordController.text);

      if (!context.mounted) {
        return;
      }

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('authentication error'),
        ),
      );

      if (authentication.otpRelayToken.isNotEmpty) {
        final otp = await _getOtp(context);
        authentication = await repository.authOtp(
          usernameController.text,
          passwordController.text,
          otp,
          authentication.otpRelayToken,
        );
      }

      if (!context.mounted) {
        return;
      }

      await Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (_) => const ApiPage(),
        ),
      );
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
              onPressed: () => Navigator.of(context).pop(controller.text),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    return otp!;
  }
}
