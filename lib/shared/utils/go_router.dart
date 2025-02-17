import 'package:finance/features/assets/domain/models/asset_model.dart';
import 'package:finance/features/assets/domain/models/precious_metal_asset_model.dart';
import 'package:finance/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:finance/features/physical_assets/domain/models/coin_model.dart';
import 'package:finance/features/physical_assets/presentation/pages/coin_details_page.dart';
import 'package:finance/features/physical_assets/presentation/pages/edit_cash_page.dart';
import 'package:finance/features/physical_assets/presentation/pages/edit_coin_page.dart';
import 'package:finance/features/physical_assets/presentation/pages/edit_raw_precious_metal_page.dart';
import 'package:finance/features/physical_assets/presentation/pages/physical_asset_details_page.dart';
import 'package:finance/features/physical_assets/presentation/pages/physical_assets_page.dart';
import 'package:finance/features/physical_assets/presentation/pages/search_coin_page.dart';
import 'package:finance/features/settings/presentation/pages/authentication_settings_page.dart';
import 'package:finance/features/settings/presentation/pages/dashboard_settings_page.dart';
import 'package:finance/features/settings/presentation/pages/finary_authentication_page.dart';
import 'package:finance/features/settings/presentation/pages/import_export_page.dart';
import 'package:finance/features/settings/presentation/pages/physical_assets_settings_page.dart';
import 'package:finance/features/settings/presentation/pages/settings_page.dart';
import 'package:finance/shared/presentation/pages/loading_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

@protected
final router = GoRouter(
  initialLocation: AppRoutes._loadingPath,
  routes: [
    GoRoute(name: AppRoutes.loading, path: AppRoutes._loadingPath, builder: (_, __) => const LoadingPage()),

    /// Dashboard
    GoRoute(name: AppRoutes.dashboard, path: AppRoutes._dashboardPath, builder: (_, __) => const DashboardPage()),

    /// Precious Metals
    GoRoute(
      name: AppRoutes.preciousMetals,
      path: AppRoutes._preciousMetalsPath,
      builder: (_, __) => const PhysicalAssetsPage(),
      routes: [
        GoRoute(
          name: AppRoutes.searchCoin,
          path: AppRoutes._searchCoinPath,
          builder: (_, __) => const SearchCoinPage(),
        ),
        GoRoute(
          name: AppRoutes.physicalAssetDetails,
          path: AppRoutes._physicalAssetDetailsPath,
          builder: (_, state) => PhysicalAssetDetailsPage(asset: state.extra! as AssetModel),
        ),
        GoRoute(
          name: AppRoutes.coinDetails,
          path: AppRoutes._coinDetailsPath,
          builder: (_, state) {
            final (String id, bool showAddButton) = state.extra! as (String, bool);
            return CoinDetailsPage(coinId: id, showAddButton: showAddButton);
          },
        ),
        GoRoute(
          name: AppRoutes.editCoin,
          path: AppRoutes._editCoinPath,
          builder: (_, state) {
            if (state.extra is CoinModel) {
              return EditCoinPage(coin: state.extra as CoinModel?);
            }
            return EditCoinPage(asset: state.extra as PreciousMetalAssetModel?);
          },
        ),
        GoRoute(
          name: AppRoutes.editCash,
          path: AppRoutes._editCashPath,
          builder: (_, state) => EditCashPage(asset: state.extra as AssetModel?),
        ),
        GoRoute(
          name: AppRoutes.editRawPreciousMetal,
          path: AppRoutes._editRawPreciousMetalPath,
          builder: (_, state) => EditRawPreciousMetalPage(asset: state.extra as PreciousMetalAssetModel?),
        ),
      ],
    ),

    /// Settings
    GoRoute(
      name: AppRoutes.settings,
      path: AppRoutes._settingsPath,
      builder: (_, __) => const SettingsPage(),
      routes: [
        GoRoute(
          name: AppRoutes.authenticationSettings,
          path: AppRoutes._authenticationSettingsPath,
          builder: (_, __) => const AuthenticationSettingsPage(),
          routes: [
            GoRoute(
              name: AppRoutes.finaryAuthentication,
              path: AppRoutes._finaryAuthenticationPath,
              builder: (_, __) => const FinaryAuthenticationPage(),
            ),
          ],
        ),
        GoRoute(
          name: AppRoutes.dashboardSettings,
          path: AppRoutes._dashboardSettingsPath,
          builder: (_, __) => const DashboardSettingsPage(),
        ),
        GoRoute(
          name: AppRoutes.physicalAssetsSettings,
          path: AppRoutes._physicalAssetsSettingsPath,
          builder: (_, __) => const PhysicalAssetsSettingsPage(),
        ),
        GoRoute(
          name: AppRoutes.importExport,
          path: AppRoutes._importExportPath,
          builder: (_, __) => const ImportExportPage(),
        ),
      ],
    ),
  ],
);

class AppRoutes {
  AppRoutes._();

  static const String loading = 'loading';
  static const String _loadingPath = '/';

  static const String dashboard = 'dashboard';
  static const String _dashboardPath = '/dashboard';

  static const String preciousMetals = 'precious_metal';
  static const String _preciousMetalsPath = '/precious_metal';

  static const String physicalAssetDetails = 'physical_asset_details';
  static const String _physicalAssetDetailsPath = '/physical_asset_details';

  static const String editCash = 'edit_cash';
  static const String _editCashPath = '/edit_cash';

  static const String editRawPreciousMetal = 'edit_raw_precious_metal';
  static const String _editRawPreciousMetalPath = '/edit_raw_precious_metal';

  static const String editCoin = 'edit_coin';
  static const String _editCoinPath = '/edit_coin';

  static const String searchCoin = 'search_coin';
  static const String _searchCoinPath = '/search_coin';

  static const String coinDetails = 'coin_details';
  static const String _coinDetailsPath = '/coin_details';

  static const String settings = 'settings';
  static const String _settingsPath = '/settings';

  static const String authenticationSettings = 'authentication_settings';
  static const String _authenticationSettingsPath = '/authentication_settings';

  static const String finaryAuthentication = 'finary_authentication';
  static const String _finaryAuthenticationPath = '/finary_authentication';

  static const String importExport = 'import_export';
  static const String _importExportPath = '/import_export';

  static const String dashboardSettings = 'dashboard_settings';
  static const String _dashboardSettingsPath = '/dashboard_settings';

  static const String physicalAssetsSettings = 'physical_assets_settings';
  static const String _physicalAssetsSettingsPath = '/physical_assets_settings';
}
