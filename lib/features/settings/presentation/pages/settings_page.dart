import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/shared/constants/app_asset.dart';
import 'package:finance/shared/presentation/widgets/app_navigation_drawer.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      drawer: const AppNavigationDrawer(),
      appBar: AppBar(
        title: Text(S.current.settingsPageTitle),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ListTile(
              title: Text(S.current.settingsAssetsTitle),
              subtitle: Text(S.current.settingsAssetsSubtitle),
              leading: const Icon(Icons.account_balance_wallet),
              onTap: () => context.pushNamed(AppRoute.dashboardSettings),
            ),
            ListTile(
              title: Text(S.current.settingsPhysicalAssetsTitle),
              subtitle: Text(S.current.settingsPhysicalAssetsSubtitle),
              leading: const ImageIcon(AssetImage(AppAsset.salesIcon)),
              onTap: () => context.pushNamed(AppRoute.physicalAssetsSettings),
            ),
            ListTile(
              title: Text(S.current.settingsAuthenticationTitle),
              subtitle: Text(S.current.settingsAuthenticationSubtitle),
              leading: const Icon(Icons.login),
              onTap: () => context.pushNamed(AppRoute.authenticationSettings),
            ),
            ListTile(
              title: Text(S.current.settingsImportExportTitle),
              subtitle: Text(S.current.settingsImportExportSubtitle),
              leading: const Icon(Icons.import_export),
              onTap: () => context.pushNamed(AppRoute.importExport),
            ),
          ],
        ),
      ),
    );
  }
}
