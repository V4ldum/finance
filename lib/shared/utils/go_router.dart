import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';
import 'package:finance/feature/dashboard/presentation/page/dashboard_page.dart';
import 'package:finance/feature/physical_assets/domain/model/coin_model.dart';
import 'package:finance/feature/physical_assets/presentation/page/coin_details_page.dart';
import 'package:finance/feature/physical_assets/presentation/page/edit_cash_page.dart';
import 'package:finance/feature/physical_assets/presentation/page/edit_coin_page.dart';
import 'package:finance/feature/physical_assets/presentation/page/edit_raw_precious_metal_page.dart';
import 'package:finance/feature/physical_assets/presentation/page/physical_asset_details_page.dart';
import 'package:finance/feature/physical_assets/presentation/page/physical_assets_page.dart';
import 'package:finance/feature/physical_assets/presentation/page/search_coin_page.dart';
import 'package:finance/feature/settings/presentation/page/authentication_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/dashboard_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/finary_authentication_page.dart';
import 'package:finance/feature/settings/presentation/page/import_export_page.dart';
import 'package:finance/feature/settings/presentation/page/physical_assets_settings_page.dart';
import 'package:finance/feature/settings/presentation/page/settings_page.dart';
import 'package:finance/shared/presentation/page/loading_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

@protected
final router = GoRouter(
  initialLocation: AppRoute._loadingPath,
  routes: [
    GoRoute(
      name: AppRoute.loading,
      path: AppRoute._loadingPath,
      builder: (_, __) => const LoadingPage(),
      routes: [
        /// Dashboard
        GoRoute(
          name: AppRoute.dashboard,
          path: AppRoute._dashboardPath,
          builder: (_, __) => const DashboardPage(),
        ),

        /// Precious Metals
        GoRoute(
          name: AppRoute.preciousMetals,
          path: AppRoute._preciousMetalsPath,
          builder: (_, __) => const PhysicalAssetsPage(),
          routes: [
            GoRoute(
              name: AppRoute.searchCoin,
              path: AppRoute._searchCoinPath,
              builder: (_, __) => const SearchCoinPage(),
            ),
            GoRoute(
              name: AppRoute.physicalAssetDetails,
              path: AppRoute._physicalAssetDetailsPath,
              builder: (_, state) => PhysicalAssetDetailsPage(asset: state.extra! as AssetModel),
            ),
            GoRoute(
              name: AppRoute.coinDetails,
              path: AppRoute._coinDetailsPath,
              builder: (_, state) {
                final (String id, bool showAddButton) = state.extra! as (String, bool);
                return CoinDetailsPage(coinId: id, showAddButton: showAddButton);
              },
            ),
            GoRoute(
              name: AppRoute.editCoin,
              path: AppRoute._editCoinPath,
              builder: (_, state) {
                if (state.extra is CoinModel) {
                  return EditCoinPage(coin: state.extra as CoinModel?);
                }
                return EditCoinPage(asset: state.extra as PreciousMetalAssetModel?);
              },
            ),
            GoRoute(
              name: AppRoute.editCash,
              path: AppRoute._editCashPath,
              builder: (_, state) => EditCashPage(asset: state.extra as AssetModel?),
            ),
            GoRoute(
              name: AppRoute.editRawPreciousMetal,
              path: AppRoute._editRawPreciousMetalPath,
              builder: (_, state) => EditRawPreciousMetalPage(asset: state.extra as PreciousMetalAssetModel?),
            ),
          ],
        ),

        /// Settings
        GoRoute(
          name: AppRoute.settings,
          path: AppRoute._settingsPath,
          builder: (_, __) => const SettingsPage(),
          routes: [
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
              name: AppRoute.physicalAssetsSettings,
              path: AppRoute._physicalAssetsSettingsPath,
              builder: (_, __) => const PhysicalAssetsSettingsPage(),
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

  static const String dashboard = 'dashboard';
  static const String _dashboardPath = 'dashboard';

  static const String preciousMetals = 'precious_metal';
  static const String _preciousMetalsPath = 'precious_metal';

  static const String physicalAssetDetails = 'physical_asset_details';
  static const String _physicalAssetDetailsPath = 'physical_asset_details';

  static const String editCash = 'edit_cash';
  static const String _editCashPath = 'edit_cash';

  static const String editRawPreciousMetal = 'edit_raw_precious_metal';
  static const String _editRawPreciousMetalPath = 'edit_raw_precious_metal';

  static const String editCoin = 'edit_coin';
  static const String _editCoinPath = 'edit_coin';

  static const String searchCoin = 'search_coin';
  static const String _searchCoinPath = 'search_coin';

  static const String coinDetails = 'coin_details';
  static const String _coinDetailsPath = 'coin_details';

  static const String settings = 'settings';
  static const String _settingsPath = 'settings';

  static const String authenticationSettings = 'authentication_settings';
  static const String _authenticationSettingsPath = 'authentication_settings';

  static const String finaryAuthentication = 'finary_authentication';
  static const String _finaryAuthenticationPath = 'finary_authentication';

  static const String importExport = 'import_export';
  static const String _importExportPath = 'import_export';

  static const String dashboardSettings = 'dashboard_settings';
  static const String _dashboardSettingsPath = 'dashboard_settings';

  static const String physicalAssetsSettings = 'physical_assets_settings';
  static const String _physicalAssetsSettingsPath = 'physical_assets_settings';
}
