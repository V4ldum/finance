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

  /// `Unauthorized Access`
  String get unauthorizedAccessTitle {
    return Intl.message(
      'Unauthorized Access',
      name: 'unauthorizedAccessTitle',
      desc: '',
      args: [],
    );
  }

  /// `Invalid or missing API key`
  String get unauthorizedAccessBody {
    return Intl.message(
      'Invalid or missing API key',
      name: 'unauthorizedAccessBody',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests`
  String get tooManyRequestsTitle {
    return Intl.message(
      'Too many requests',
      name: 'tooManyRequestsTitle',
      desc: '',
      args: [],
    );
  }

  /// `You have sent too many simultaneous requests or have reached your monthly quota.`
  String get tooManyRequestsBody {
    return Intl.message(
      'You have sent too many simultaneous requests or have reached your monthly quota.',
      name: 'tooManyRequestsBody',
      desc: '',
      args: [],
    );
  }

  /// `Error`
  String get unknownErrorTitle {
    return Intl.message(
      'Error',
      name: 'unknownErrorTitle',
      desc: '',
      args: [],
    );
  }

  /// `An error occurred.`
  String get unknownErrorBody {
    return Intl.message(
      'An error occurred.',
      name: 'unknownErrorBody',
      desc: '',
      args: [],
    );
  }

  /// `Authentication failure`
  String get invalidUsernameOrPasswordTitle {
    return Intl.message(
      'Authentication failure',
      name: 'invalidUsernameOrPasswordTitle',
      desc: '',
      args: [],
    );
  }

  /// `Username or password incorrect.`
  String get invalidUsernameOrPasswordBody {
    return Intl.message(
      'Username or password incorrect.',
      name: 'invalidUsernameOrPasswordBody',
      desc: '',
      args: [],
    );
  }

  /// `Session expired`
  String get sessionExpiredTitle {
    return Intl.message(
      'Session expired',
      name: 'sessionExpiredTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your session expired. Please reauthenticate yourself.`
  String get sessionExpiredBody {
    return Intl.message(
      'Your session expired. Please reauthenticate yourself.',
      name: 'sessionExpiredBody',
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
