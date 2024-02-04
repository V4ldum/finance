import 'dart:io';

import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/dashboard/presentation/page/privacy_shield_page.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      builder: (context, child) {
        if (!Platform.isAndroid) {
          return child!;
        }
        return PrivacyShieldManager(child: child!);
      },
      localizationsDelegates: const [
        S.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blueAccent,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      routerConfig: router,
    );
  }
}

class PrivacyShieldManager extends ConsumerStatefulWidget {
  const PrivacyShieldManager({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  ConsumerState<PrivacyShieldManager> createState() => _PrivacyShieldManagerState();
}

class _PrivacyShieldManagerState extends ConsumerState<PrivacyShieldManager> {
  late final AppLifecycleListener _listener;
  bool shieldUp = false;

  @override
  void initState() {
    super.initState();
    _listener = AppLifecycleListener(
      onResume: () {
        setState(() {
          shieldUp = false;
        });
      },
      onInactive: () {
        setState(() {
          shieldUp = true;
        });
      },
    );
  }

  @override
  void dispose() {
    _listener.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        widget.child,
        AnimatedOpacity(
          opacity: shieldUp ? 1 : 0,
          duration: shieldUp ? const Duration(milliseconds: 50) : const Duration(milliseconds: 150),
          child: const PrivacyShieldPage(),
        ),
      ],
    );
  }
}
