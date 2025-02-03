import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/settings/application/import_export_data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ImportExportPage extends ConsumerWidget {
  const ImportExportPage({super.key});

  Future<void> _import(WidgetRef ref) async {
    await ref.read(importExportDataServiceProvider).import();

    final context = ref.context;
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(S.current.importSuccessMessage),
        ),
      );
    }
  }

  Future<void> _export(WidgetRef ref) async {
    await ref.read(importExportDataServiceProvider).export();

    final context = ref.context;
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(S.current.exportSuccessMessage),
        ),
      );
    }
  }

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
              leading: const Icon(LucideIcons.logOut),
              onTap: () => _export(ref),
            ),
            ListTile(
              title: Text(S.current.importButton),
              leading: const Icon(LucideIcons.logIn),
              onTap: () => _import(ref),
            ),
          ],
        ),
      ),
    );
  }
}
