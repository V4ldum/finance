import 'package:finance/feature/dashboard/presentation/page/dashboard_page.dart';
import 'package:finance/feature/settings/presentation/page/alerts_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/authentication_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/dashboard_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/finary_authentication_page.dart';
import 'package:finance/feature/settings/presentation/page/import_export_page.dart';
import 'package:finance/feature/settings/presentation/page/settings_page.dart';
import 'package:finance/shared/presentation/page/loading_page.dart';
import 'package:finance/shared/presentation/page/privacy_shield_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

@protected
final router = GoRouter(
  initialLocation: AppRoute._loadingPath,
  routes: [
    GoRoute(
      name: AppRoute.privacyShield,
      path: AppRoute._privacyShield,
      pageBuilder: (context, state) => CustomTransitionPage(
        transitionsBuilder: (_, opacity, __, child) => FadeTransition(opacity: opacity, child: child),
        child: const PrivacyShieldPage(),
      ),
    ),
    GoRoute(
      name: AppRoute.loading,
      path: AppRoute._loadingPath,
      builder: (_, __) => const LoadingPage(),
      routes: [
        GoRoute(
          name: AppRoute.dashboard,
          path: AppRoute._dashboardPath,
          builder: (_, __) => const DashboardPage(),
        ),
        GoRoute(
          name: AppRoute.settings,
          path: AppRoute._settingsPath,
          builder: (_, __) => const SettingsPage(),
          routes: [
            GoRoute(
              name: AppRoute.alertsSettings,
              path: AppRoute._alertsSettingsPath,
              builder: (_, __) => const AlertsSettingsPage(),
            ),
            GoRoute(
              name: AppRoute.authenticationSettings,
              path: AppRoute._authenticationSettingsPath,
              builder: (_, __) => const AuthenticationSettingsPage(),
              routes: [
                GoRoute(
                  name: AppRoute.finaryAuthentication,
                  path: AppRoute._finaryAuthenticationPath,
                  builder: (_, __) => const FinaryAuthenticationPage(),
                ),
              ],
            ),
            GoRoute(
              name: AppRoute.dashboardSettings,
              path: AppRoute._dashboardSettingsPath,
              builder: (_, __) => const DashboardSettingsPage(),
            ),
            GoRoute(
              name: AppRoute.importExport,
              path: AppRoute._importExportPath,
              builder: (_, __) => const ImportExportPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class AppRoute {
  AppRoute._();

  static const String loading = 'loading';
  static const String _loadingPath = '/';

  static const String privacyShield = 'privacy_shield';
  static const String _privacyShield = '/hidden';

  static const String dashboard = 'dashboard';
  static const String _dashboardPath = 'dashboard';

  static const String settings = 'settings';
  static const String _settingsPath = 'settings';

  static const String alertsSettings = 'alerts_settings';
  static const String _alertsSettingsPath = 'alerts_settings';

  static const String authenticationSettings = 'authentication_settings';
  static const String _authenticationSettingsPath = 'authentication_settings';

  static const String finaryAuthentication = 'finary_authentication';
  static const String _finaryAuthenticationPath = 'finary_authentication';

  static const String importExport = 'import_export';
  static const String _importExportPath = 'import_export';

  static const String dashboardSettings = 'dashboard_settings';
  static const String _dashboardSettingsPath = 'dashboard_settings';
}
