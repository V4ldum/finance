import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/authentication/presentation/providers/finary_authentication_controller.dart';
import 'package:finance/features/physical_assets/application/precious_metals_service.dart';
import 'package:finance/features/settings/presentation/widgets/api_key_field.dart';
import 'package:finance/shared/constants/app_component_size.dart';
import 'package:finance/shared/constants/app_icon_size.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AuthenticationSettingsPage extends ConsumerWidget {
  const AuthenticationSettingsPage({
    super.key,
  });

  Future<void> _logInButtonTapped(WidgetRef ref) async {
    await ref.context.pushNamed(AppRoutes.finaryAuthentication);
    ref.read(finaryAuthenticationControllerProvider.notifier).logIn();
  }

  void _logOutButtonTapped(WidgetRef ref) {
    ref.read(finaryAuthenticationControllerProvider.notifier).logOut();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final finaryAuthenticated = ref.watch(finaryAuthenticationControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.settingsAuthenticationTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
          child: Column(
            children: [
              /// Finary
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: AppPadding.m,
                    children: [
                      Text(
                        S.current.finary,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      if (finaryAuthenticated)
                        Icon(
                          LucideIcons.check,
                          color: ColorScheme.fromSwatch(primarySwatch: Colors.green).primary,
                          size: AppIconSize.xl,
                        )
                      else
                        Icon(
                          LucideIcons.x,
                          color: ColorScheme.fromSwatch(primarySwatch: Colors.red).primary,
                          size: AppIconSize.xl,
                        ),
                    ],
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: Intl.getCurrentLocale().contains('fr') ? AppComponentSize.m : AppComponentSize.s,
                    ),
                    child: finaryAuthenticated
                        ? ElevatedButton(
                            onPressed: () => _logOutButtonTapped(ref),
                            child: Text(S.current.logOut),
                          )
                        : FilledButton(
                            onPressed: () => _logInButtonTapped(ref),
                            child: Text(S.current.logIn),
                          ),
                  ),
                ],
              ),

              const SizedBox(height: AppPadding.l),

              /// Custom Back
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                spacing: AppPadding.m,
                children: [
                  Row(
                    children: [
                      Text(
                        S.current.customBack,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Theme(
                        // Tooltip is bugged and shows dark UI for light brightness and the other way around
                        data: Theme.of(context).copyWith(
                          brightness: Theme.of(context).brightness == Brightness.dark //
                              ? Brightness.light
                              : Brightness.dark,
                        ),
                        child: Tooltip(
                          message: S.current.customBackMessage,
                          margin: const EdgeInsets.symmetric(horizontal: AppPadding.s),
                          showDuration: const Duration(seconds: 10),
                          triggerMode: TooltipTriggerMode.tap,
                          preferBelow: false,
                          enableTapToDismiss: false,
                          child: Theme(
                            // Revert the change down this branch
                            data: Theme.of(context),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: AppPadding.m,
                                vertical: AppPadding.xs,
                              ),
                              child: Icon(
                                LucideIcons.info,
                                size: AppIconSize.s,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  ApiKeyField(
                    initialValue: ref.read(appCacheControllerProvider).customBackApiKey,
                    updateKeyCallback: ref.read(preciousMetalsServiceProvider).saveCustomBackApiKey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
