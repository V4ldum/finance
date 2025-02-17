import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/authentication/presentation/providers/finary_authentication_popup_controller.dart';
import 'package:finance/features/settings/presentation/widgets/authentication_error_card.dart';
import 'package:finance/shared/constants/app_duration.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/utils/validators/email_validator.dart';
import 'package:finance/shared/utils/validators/string_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:meta_package/meta_package.dart';

class FinaryAuthenticationPage extends ConsumerWidget {
  const FinaryAuthenticationPage({super.key});

  Future<void> _logInSuccessful({required BuildContext context, required WidgetRef ref}) async {
    context.pop();

    // Added delay to avoid the form from briefly showing before the page is popped
    await Future<void>.delayed(const ExtraShortDuration());

    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(behavior: SnackBarBehavior.floating, content: Text(S.current.finarySuccessfulAuthentication)),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authResult = ref.watch(finaryAuthenticationProcessControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Text(S.current.finaryAuthenticationTitle)),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
        child: authResult.maybeWhen(
          loading: () => const Center(child: CircularProgressIndicator()),
          orElse:
              () => SingleChildScrollView(
                child:
                    authResult.requireValue
                        ? _OtpContent(onLogInSuccess: () => _logInSuccessful(ref: ref, context: context))
                        : _LoginContent(onLogInSuccess: () => _logInSuccessful(ref: ref, context: context)),
              ),
        ),
      ),
    );
  }
}

class _LoginContent extends ConsumerStatefulWidget {
  const _LoginContent({required this.onLogInSuccess});

  final Future<void> Function() onLogInSuccess;

  @override
  ConsumerState<_LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends ConsumerState<_LoginContent> {
  final formKey = GlobalKey<FormState>();

  final loginController = TextEditingController();
  final passwordController = TextEditingController();

  bool passwordObscured = true;

  void _togglePasswordTapped() {
    setState(() {
      passwordObscured = !passwordObscured;
    });
  }

  void _logInTapped() {
    if (formKey.isFormValid) {
      ref
          .read(finaryAuthenticationProcessControllerProvider.notifier)
          .logInFinary(loginController.text, passwordController.text, onSuccess: widget.onLogInSuccess);
    }
  }

  @override
  void dispose() {
    loginController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: AutofillGroup(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: AppPadding.s),
            Text(S.current.finaryAuthenticationLoginMessage),
            const SizedBox(height: AppPadding.l),
            ref
                .watch(finaryAuthenticationProcessControllerProvider)
                .maybeWhen(
                  error:
                      (error, stackTrace) => Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [AuthenticationErrorCard(error: error), const SizedBox(height: AppPadding.m)],
                      ),
                  orElse: () => const SizedBox(),
                ),
            TextFormField(
              autofocus: true,
              controller: loginController,
              validator: EmailValidator.validate,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                prefixIcon: const Icon(LucideIcons.user),
                labelText: S.current.loginTextFieldLabel,
                helperText: '',
                filled: true,
              ),
              autofillHints: const {AutofillHints.email},
            ),
            const SizedBox(height: AppPadding.s),
            TextFormField(
              autocorrect: false,
              controller: passwordController,
              validator: StringValidator.validatePasswordEmpty,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
              obscureText: passwordObscured,
              decoration: InputDecoration(
                prefixIcon: const Icon(LucideIcons.rectangleEllipsis),
                suffixIcon: IconButton(
                  onPressed: _togglePasswordTapped,
                  icon: Icon(passwordObscured ? LucideIcons.eye : LucideIcons.eyeOff),
                ),
                labelText: S.current.passwordTextFieldLabel,
                helperText: '',
                filled: true,
              ),
              autofillHints: const {AutofillHints.password},
            ),
            Row(
              children: [
                const Expanded(flex: 2, child: SizedBox()),
                Expanded(child: TextButton(onPressed: _logInTapped, child: Text(S.current.submit))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _OtpContent extends ConsumerStatefulWidget {
  const _OtpContent({required this.onLogInSuccess});

  final Future<void> Function() onLogInSuccess;

  @override
  ConsumerState<_OtpContent> createState() => _OtpContentState();
}

class _OtpContentState extends ConsumerState<_OtpContent> {
  final formKey = GlobalKey<FormState>();

  final otpController = TextEditingController();
  bool otpObscured = true;

  void _toggleOtpTapped() {
    setState(() {
      otpObscured = !otpObscured;
    });
  }

  void _logInTapped() {
    if (formKey.isFormValid) {
      ref
          .read(finaryAuthenticationProcessControllerProvider.notifier)
          .logInFinaryWithOtp(otpController.text, onSuccess: widget.onLogInSuccess);
    }
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(height: AppPadding.s),
          Text(S.current.finaryAuthenticationOtpMessage),
          const SizedBox(height: AppPadding.l),
          ref
              .watch(finaryAuthenticationProcessControllerProvider)
              .maybeWhen(
                error:
                    (error, stackTrace) => Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [AuthenticationErrorCard(error: error), const SizedBox(height: AppPadding.m)],
                    ),
                orElse: () => const SizedBox(),
              ),
          TextFormField(
            autocorrect: false,
            autofocus: true,
            controller: otpController,
            validator: StringValidator.validateOnlyNumbers,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.number,
            obscureText: otpObscured,
            decoration: InputDecoration(
              prefixIcon: const Icon(LucideIcons.keyRound),
              suffixIcon: IconButton(
                onPressed: _toggleOtpTapped,
                icon: Icon(otpObscured ? LucideIcons.eye : LucideIcons.eyeOff),
              ),
              labelText: S.current.otpTextFieldLabel,
              helperText: '',
              filled: true,
            ),
          ),
          Row(
            children: [
              const Expanded(flex: 2, child: SizedBox()),
              TextButton(onPressed: _logInTapped, child: Text(S.current.submit)),
            ],
          ),
        ],
      ),
    );
  }
}
