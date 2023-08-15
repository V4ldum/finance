import 'package:finance/features/proof_of_concept/presentation/pages/auth/auth_page_presenter.dart';
import 'package:finance/shared/constants/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Paddings.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('Auth'),
            ),
            const SizedBox(height: Paddings.m),
            TextField(
              controller: ref.watch(presenter).usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                filled: true,
              ),
            ),
            const SizedBox(height: Paddings.m),
            TextField(
              controller: ref.watch(presenter).passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'password',
                filled: true,
              ),
            ),
            const SizedBox(height: Paddings.m),
            FilledButton(
              onPressed: () {
                ref.watch(presenter).onTapAuthenticationButton(ref);
              },
              child: const Text('Auth'),
            ),
          ],
        ),
      ),
    );
  }
}
