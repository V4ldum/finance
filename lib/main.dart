import 'package:finance/_l10n/generated/l10n.dart';
import 'package:finance/features/proof_of_concept/presentation/pages/home/home_page.dart';
import 'package:finance/navigation/app_navigator.dart';
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
    return MaterialApp(
      localizationsDelegates: const [
        S.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // This is authorized here and only here
      // ignore: invalid_use_of_protected_member
      navigatorKey: AppNavigator.rootNavigationKey,
      home: const HomePage(),
    );
  }
}
