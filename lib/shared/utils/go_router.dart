import 'package:finance/feature/dashboard/presentation/page/dashboard_page.dart';
import 'package:finance/feature/settings/presentation/page/alerts_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/authentication_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/dashboard_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/finary_authentication_page.dart';
import 'package:finance/feature/settings/presentation/page/import_export_page.dart';
import 'package:finance/feature/settings/presentation/page/settings_page.dart';
import 'package:finance/shared/presentation/page/loading_page.dart';
import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';

@protected
final router = GoRouter(
  initialLocation: Routes._loadingPath,
  routes: [
    GoRoute(
      name: Routes.loading,
      path: Routes._loadingPath,
      builder: (_, __) => const LoadingPage(),
      routes: [
        GoRoute(
          name: Routes.dashboard,
          path: Routes._dashboardPath,
          builder: (_, __) => const DashboardPage(),
        ),
        GoRoute(
          name: Routes.settings,
          path: Routes._settingsPath,
          builder: (_, __) => const SettingsPage(),
          routes: [
            GoRoute(
              name: Routes.alertsSettings,
              path: Routes._alertsSettingsPath,
              builder: (_, __) => const AlertsSettingsPage(),
            ),
            GoRoute(
              name: Routes.authenticationSettings,
              path: Routes._authenticationSettingsPath,
              builder: (_, __) => const AuthenticationSettingsPage(),
              routes: [
                GoRoute(
                  name: Routes.finaryAuthentication,
                  path: Routes._finaryAuthenticationPath,
                  builder: (_, __) => const FinaryAuthenticationPage(),
                ),
              ],
            ),
            GoRoute(
              name: Routes.dashboardSettings,
              path: Routes._dashboardSettingsPath,
              builder: (_, __) => const DashboardSettingsPage(),
            ),
            GoRoute(
              name: Routes.importExport,
              path: Routes._importExportPath,
              builder: (_, __) => const ImportExportPage(),
            ),
          ],
        ),
      ],
    ),
  ],
);

class Routes {
  Routes._();

  static const String loading = 'loading';
  static const String _loadingPath = '/';

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
