import 'package:finance/feature/_proof_of_concept/presentation/pages/auth/auth_page_presenter.dart';
import 'package:finance/shared/constant/app_padding.dart';
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
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text('Auth'),
            ),
            const SizedBox(height: AppPadding.m),
            TextField(
              controller: ref.watch(authPageController).usernameController,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                hintText: 'Username',
                filled: true,
              ),
            ),
            const SizedBox(height: AppPadding.m),
            TextField(
              controller: ref.watch(authPageController).passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                hintText: 'password',
                filled: true,
              ),
            ),
            const SizedBox(height: AppPadding.m),
            FilledButton(
              onPressed: () {
                ref.watch(authPageController).onTapAuthenticationButton(context);
              },
              child: const Text('Auth'),
            ),
          ],
        ),
      ),
    );
  }
}
