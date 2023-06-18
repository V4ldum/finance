// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Accès non autorisé`
  String get unauthorizedAccessTitle {
    return Intl.message(
      'Accès non autorisé',
      name: 'unauthorizedAccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Clé d'API manquante ou invalide.`
  String get unauthorizedAccessBody {
    return Intl.message(
      'Clé d\'API manquante ou invalide.',
      name: 'unauthorizedAccessBody',
      desc: '',
      args: [],
    );
  }

  /// `Trop de requêtes`
  String get tooManyRequestsTitle {
    return Intl.message(
      'Trop de requêtes',
      name: 'tooManyRequestsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Vous avez envoyé trop de requêtes simultanées ou avez atteint votre quota mensuel.`
  String get tooManyRequestsBody {
    return Intl.message(
      'Vous avez envoyé trop de requêtes simultanées ou avez atteint votre quota mensuel.',
      name: 'tooManyRequestsBody',
      desc: '',
      args: [],
    );
  }

  /// `Erreur`
  String get unknownErrorTitle {
    return Intl.message(
      'Erreur',
      name: 'unknownErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `Une erreur est survenue.`
  String get unknownErrorBody {
    return Intl.message(
      'Une erreur est survenue.',
      name: 'unknownErrorBody',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
