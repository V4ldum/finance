import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AlertsSettingsPage extends ConsumerWidget {
  const AlertsSettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.settingsAlertsTitle),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('AlertsSettings'),
        ),
      ),
    );
  }
}
