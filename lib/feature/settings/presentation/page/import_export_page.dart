import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/settings/application/import_export_data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ImportExportPage extends ConsumerWidget {
  const ImportExportPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.settingsImportExportTitle),
      ),
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              title: Text(S.current.exportButton),
              leading: const Icon(Icons.logout),
              onTap: ref.read(importExportDataServiceProvider).export,
            ),
            ListTile(
              title: Text(S.current.importButton),
              leading: const Icon(Icons.login),
              onTap: ref.read(importExportDataServiceProvider).import,
            ),
          ],
        ),
      ),
    );
  }
}
