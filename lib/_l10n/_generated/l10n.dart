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
    assert(
        _current != null, 'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
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

  /// `Connection failed`
  String get authenticationFailedTitle {
    return Intl.message(
      'Connection failed',
      name: 'authenticationFailedTitle',
      desc: '',
      args: [],
    );
  }

  /// `Login or password incorrect`
  String get authenticationFailedBody {
    return Intl.message(
      'Login or password incorrect',
      name: 'authenticationFailedBody',
      desc: '',
      args: [],
    );
  }

  /// `Invalid secret code`
  String get authenticationOtpFailedTitle {
    return Intl.message(
      'Invalid secret code',
      name: 'authenticationOtpFailedTitle',
      desc: '',
      args: [],
    );
  }

  /// `The provided secret code is incorrect`
  String get authenticationOtpFailedBody {
    return Intl.message(
      'The provided secret code is incorrect',
      name: 'authenticationOtpFailedBody',
      desc: '',
      args: [],
    );
  }

  /// `No session found or session expired`
  String get sessionExpiredTitle {
    return Intl.message(
      'No session found or session expired',
      name: 'sessionExpiredTitle',
      desc: '',
      args: [],
    );
  }

  /// `Manual authentication is required in the settings of the app`
  String get sessionExpiredBody {
    return Intl.message(
      'Manual authentication is required in the settings of the app',
      name: 'sessionExpiredBody',
      desc: '',
      args: [],
    );
  }

  /// `You must type an email.`
  String get emptyEmailError {
    return Intl.message(
      'You must type an email.',
      name: 'emptyEmailError',
      desc: '',
      args: [],
    );
  }

  /// `You must type a valid email.`
  String get invalidEmailError {
    return Intl.message(
      'You must type a valid email.',
      name: 'invalidEmailError',
      desc: '',
      args: [],
    );
  }

  /// `You must type a password.`
  String get emptyPasswordError {
    return Intl.message(
      'You must type a password.',
      name: 'emptyPasswordError',
      desc: '',
      args: [],
    );
  }

  /// `You must type a secret code.`
  String get emptyOtpError {
    return Intl.message(
      'You must type a secret code.',
      name: 'emptyOtpError',
      desc: '',
      args: [],
    );
  }

  /// `You must type a valid secret code.`
  String get invalidOtpError {
    return Intl.message(
      'You must type a valid secret code.',
      name: 'invalidOtpError',
      desc: '',
      args: [],
    );
  }

  /// `An unknown error occurred.`
  String get genericError {
    return Intl.message(
      'An unknown error occurred.',
      name: 'genericError',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboardDrawerItem {
    return Intl.message(
      'Dashboard',
      name: 'dashboardDrawerItem',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsDrawerItem {
    return Intl.message(
      'Settings',
      name: 'settingsDrawerItem',
      desc: '',
      args: [],
    );
  }

  /// `version {version}`
  String appVersion(Object version) {
    return Intl.message(
      'version $version',
      name: 'appVersion',
      desc: '',
      args: [version],
    );
  }

  /// `Stocks`
  String get stocks {
    return Intl.message(
      'Stocks',
      name: 'stocks',
      desc: '',
      args: [],
    );
  }

  /// `Accounts`
  String get accounts {
    return Intl.message(
      'Accounts',
      name: 'accounts',
      desc: '',
      args: [],
    );
  }

  /// `Distribution`
  String get distribution {
    return Intl.message(
      'Distribution',
      name: 'distribution',
      desc: '',
      args: [],
    );
  }

  /// `Stocks Geography`
  String get geography {
    return Intl.message(
      'Stocks Geography',
      name: 'geography',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Checking accounts`
  String get checkingAccounts {
    return Intl.message(
      'Checking accounts',
      name: 'checkingAccounts',
      desc: '',
      args: [],
    );
  }

  /// `Savings accounts`
  String get savingsAccounts {
    return Intl.message(
      'Savings accounts',
      name: 'savingsAccounts',
      desc: '',
      args: [],
    );
  }

  /// `Cryptos`
  String get cryptos {
    return Intl.message(
      'Cryptos',
      name: 'cryptos',
      desc: '',
      args: [],
    );
  }

  /// `Fonds euro`
  String get fondsEuro {
    return Intl.message(
      'Fonds euro',
      name: 'fondsEuro',
      desc: '',
      args: [],
    );
  }

  /// `Real estates`
  String get realEstates {
    return Intl.message(
      'Real estates',
      name: 'realEstates',
      desc: '',
      args: [],
    );
  }

  /// `Startups`
  String get startups {
    return Intl.message(
      'Startups',
      name: 'startups',
      desc: '',
      args: [],
    );
  }

  /// `Crowdlendings`
  String get crowdlendings {
    return Intl.message(
      'Crowdlendings',
      name: 'crowdlendings',
      desc: '',
      args: [],
    );
  }

  /// `Other assets`
  String get otherAssets {
    return Intl.message(
      'Other assets',
      name: 'otherAssets',
      desc: '',
      args: [],
    );
  }

  /// `Loans`
  String get loans {
    return Intl.message(
      'Loans',
      name: 'loans',
      desc: '',
      args: [],
    );
  }

  /// `Credit Accounts`
  String get creditAccounts {
    return Intl.message(
      'Credit Accounts',
      name: 'creditAccounts',
      desc: '',
      args: [],
    );
  }

  /// `Speculative`
  String get speculative {
    return Intl.message(
      'Speculative',
      name: 'speculative',
      desc: '',
      args: [],
    );
  }

  /// `Investment`
  String get investment {
    return Intl.message(
      'Investment',
      name: 'investment',
      desc: '',
      args: [],
    );
  }

  /// `Savings`
  String get savings {
    return Intl.message(
      'Savings',
      name: 'savings',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get other {
    return Intl.message(
      'Other',
      name: 'other',
      desc: '',
      args: [],
    );
  }

  /// `Updated`
  String get syncLabel {
    return Intl.message(
      'Updated',
      name: 'syncLabel',
      desc: '',
      args: [],
    );
  }

  /// `now`
  String get syncNow {
    return Intl.message(
      'now',
      name: 'syncNow',
      desc: '',
      args: [],
    );
  }

  /// `{seconds} {seconds,plural,=1{second}other{seconds}} ago`
  String syncSecondsAgo(num seconds) {
    return Intl.message(
      '$seconds ${Intl.plural(seconds, one: 'second', other: 'seconds')} ago',
      name: 'syncSecondsAgo',
      desc: '',
      args: [seconds],
    );
  }

  /// `{minutes} {minutes,plural,=1{minute}other{minutes}} ago`
  String syncMinutesAgo(num minutes) {
    return Intl.message(
      '$minutes ${Intl.plural(minutes, one: 'minute', other: 'minutes')} ago',
      name: 'syncMinutesAgo',
      desc: '',
      args: [minutes],
    );
  }

  /// `{hours} {hours,plural,=1{hour}other{hours}} ago`
  String syncHoursAgo(num hours) {
    return Intl.message(
      '$hours ${Intl.plural(hours, one: 'hour', other: 'hours')} ago',
      name: 'syncHoursAgo',
      desc: '',
      args: [hours],
    );
  }

  /// `{days,plural,=1{yesterday}other{{days} days ago}}`
  String syncDaysAgo(num days) {
    return Intl.plural(
      days,
      one: 'yesterday',
      other: '$days days ago',
      name: 'syncDaysAgo',
      desc: '',
      args: [days],
    );
  }

  /// `Dashboard`
  String get settingsAssetsTitle {
    return Intl.message(
      'Dashboard',
      name: 'settingsAssetsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Distribution targets, stocks categorisation`
  String get settingsAssetsSubtitle {
    return Intl.message(
      'Distribution targets, stocks categorisation',
      name: 'settingsAssetsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Connections`
  String get settingsAuthenticationTitle {
    return Intl.message(
      'Connections',
      name: 'settingsAuthenticationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Log in to the third-party services`
  String get settingsAuthenticationSubtitle {
    return Intl.message(
      'Log in to the third-party services',
      name: 'settingsAuthenticationSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Alerts`
  String get settingsAlertsTitle {
    return Intl.message(
      'Alerts',
      name: 'settingsAlertsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Stocks value alerts`
  String get settingsAlertsSubtitle {
    return Intl.message(
      'Stocks value alerts',
      name: 'settingsAlertsSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Import & Export`
  String get settingsImportExportTitle {
    return Intl.message(
      'Import & Export',
      name: 'settingsImportExportTitle',
      desc: '',
      args: [],
    );
  }

  /// `Import backups of the app or export it for future import`
  String get settingsImportExportSubtitle {
    return Intl.message(
      'Import backups of the app or export it for future import',
      name: 'settingsImportExportSubtitle',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsPageTitle {
    return Intl.message(
      'Settings',
      name: 'settingsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get logIn {
    return Intl.message(
      'Log in',
      name: 'logIn',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message(
      'Log out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Finary`
  String get finary {
    return Intl.message(
      'Finary',
      name: 'finary',
      desc: '',
      args: [],
    );
  }

  /// `Log in to Finary`
  String get finaryAuthenticationTitle {
    return Intl.message(
      'Log in to Finary',
      name: 'finaryAuthenticationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Your connection information will not be saved.`
  String get finaryAuthenticationLoginMessage {
    return Intl.message(
      'Your connection information will not be saved.',
      name: 'finaryAuthenticationLoginMessage',
      desc: '',
      args: [],
    );
  }

  /// `Two factor authentication is enabled. Please type in the code shown by your authentication application.`
  String get finaryAuthenticationOtpMessage {
    return Intl.message(
      'Two factor authentication is enabled. Please type in the code shown by your authentication application.',
      name: 'finaryAuthenticationOtpMessage',
      desc: '',
      args: [],
    );
  }

  /// `Successful connection`
  String get finarySuccessfulAuthentication {
    return Intl.message(
      'Successful connection',
      name: 'finarySuccessfulAuthentication',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get loginTextFieldLabel {
    return Intl.message(
      'Login',
      name: 'loginTextFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordTextFieldLabel {
    return Intl.message(
      'Password',
      name: 'passwordTextFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Secret code`
  String get otpTextFieldLabel {
    return Intl.message(
      'Secret code',
      name: 'otpTextFieldLabel',
      desc: '',
      args: [],
    );
  }

  /// `Stock Categorisation`
  String get dashboardSettingsStockCategorisationTitle {
    return Intl.message(
      'Stock Categorisation',
      name: 'dashboardSettingsStockCategorisationTitle',
      desc: '',
      args: [],
    );
  }

  /// `By default, stocks are considered speculative. Select the ones you want to tag as investment in the following list.`
  String get dashboardSettingsStockCategorisationMessage {
    return Intl.message(
      'By default, stocks are considered speculative. Select the ones you want to tag as investment in the following list.',
      name: 'dashboardSettingsStockCategorisationMessage',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any stocks. Start investing in stocks to categorize them.`
  String get dashboardSettingsStockCategorisationEmptyError {
    return Intl.message(
      'You don\'t have any stocks. Start investing in stocks to categorize them.',
      name: 'dashboardSettingsStockCategorisationEmptyError',
      desc: '',
      args: [],
    );
  }

  /// `Import data`
  String get importButton {
    return Intl.message(
      'Import data',
      name: 'importButton',
      desc: '',
      args: [],
    );
  }

  /// `Export data`
  String get exportButton {
    return Intl.message(
      'Export data',
      name: 'exportButton',
      desc: '',
      args: [],
    );
  }

  /// `Import réussi`
  String get importSuccessMessage {
    return Intl.message(
      'Import réussi',
      name: 'importSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Export réussi`
  String get exportSuccessMessage {
    return Intl.message(
      'Export réussi',
      name: 'exportSuccessMessage',
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
