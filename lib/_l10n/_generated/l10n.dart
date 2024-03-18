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

  /// `You must type a name.`
  String get emptyNameError {
    return Intl.message(
      'You must type a name.',
      name: 'emptyNameError',
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

  /// `Bad Request`
  String get numistaBadRequestTitle {
    return Intl.message(
      'Bad Request',
      name: 'numistaBadRequestTitle',
      desc: '',
      args: [],
    );
  }

  /// `Invalid value for a parameter or missing mandatory parameter`
  String get numistaBadRequestBody {
    return Intl.message(
      'Invalid value for a parameter or missing mandatory parameter',
      name: 'numistaBadRequestBody',
      desc: '',
      args: [],
    );
  }

  /// `Missing or invalid API key`
  String get numistaInvalidKeyTitle {
    return Intl.message(
      'Missing or invalid API key',
      name: 'numistaInvalidKeyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Check your key in the settings`
  String get numistaInvalidKeyBody {
    return Intl.message(
      'Check your key in the settings',
      name: 'numistaInvalidKeyBody',
      desc: '',
      args: [],
    );
  }

  /// `Coin not found`
  String get numistaCoinNotFoundTitle {
    return Intl.message(
      'Coin not found',
      name: 'numistaCoinNotFoundTitle',
      desc: '',
      args: [],
    );
  }

  /// `Check that the provided ID is correct`
  String get numistaCoinNotFoundBody {
    return Intl.message(
      'Check that the provided ID is correct',
      name: 'numistaCoinNotFoundBody',
      desc: '',
      args: [],
    );
  }

  /// `Item already exists`
  String get physicalAssetItemAlreadyExistsTitle {
    return Intl.message(
      'Item already exists',
      name: 'physicalAssetItemAlreadyExistsTitle',
      desc: '',
      args: [],
    );
  }

  /// `You should either change the name of the new item or edit the old one.`
  String get physicalAssetItemAlreadyExistsContent {
    return Intl.message(
      'You should either change the name of the new item or edit the old one.',
      name: 'physicalAssetItemAlreadyExistsContent',
      desc: '',
      args: [],
    );
  }

  /// `Coin already exists`
  String get physicalAssetCoinAlreadyExistsTitle {
    return Intl.message(
      'Coin already exists',
      name: 'physicalAssetCoinAlreadyExistsTitle',
      desc: '',
      args: [],
    );
  }

  /// `You must update the item instead of adding a new one.`
  String get physicalAssetCoinAlreadyExistsContent {
    return Intl.message(
      'You must update the item instead of adding a new one.',
      name: 'physicalAssetCoinAlreadyExistsContent',
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

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
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

  /// `Physical assets`
  String get physicalAssetsDrawerItem {
    return Intl.message(
      'Physical assets',
      name: 'physicalAssetsDrawerItem',
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

  /// `Precious Metals`
  String get preciousMetals {
    return Intl.message(
      'Precious Metals',
      name: 'preciousMetals',
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

  /// `No data found`
  String get genericEmptyTitle {
    return Intl.message(
      'No data found',
      name: 'genericEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Maybe you did not link your bank account with Finary`
  String get genericEmptyBody {
    return Intl.message(
      'Maybe you did not link your bank account with Finary',
      name: 'genericEmptyBody',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any stocks`
  String get stocksEmptyTitle {
    return Intl.message(
      'You don\'t have any stocks',
      name: 'stocksEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start investing and you will see the breakdown here`
  String get stocksEmptyBody {
    return Intl.message(
      'Start investing and you will see the breakdown here',
      name: 'stocksEmptyBody',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any precious metals`
  String get preciousMetalsEmptyTitle {
    return Intl.message(
      'You don\'t have any precious metals',
      name: 'preciousMetalsEmptyTitle',
      desc: '',
      args: [],
    );
  }

  /// `Start adding precious metals into the app to see the breakdown here`
  String get preciousMetalsEmptyBody {
    return Intl.message(
      'Start adding precious metals into the app to see the breakdown here',
      name: 'preciousMetalsEmptyBody',
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

  /// `Stocks liquidity accounts`
  String get stocksLiquidity {
    return Intl.message(
      'Stocks liquidity accounts',
      name: 'stocksLiquidity',
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

  /// `Life insurance`
  String get fondsEuro {
    return Intl.message(
      'Life insurance',
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

  /// `Cash`
  String get cash {
    return Intl.message(
      'Cash',
      name: 'cash',
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

  /// `Physical assets`
  String get settingsPhysicalAssetsTitle {
    return Intl.message(
      'Physical assets',
      name: 'settingsPhysicalAssetsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ratios settings`
  String get settingsPhysicalAssetsSubtitle {
    return Intl.message(
      'Ratios settings',
      name: 'settingsPhysicalAssetsSubtitle',
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

  /// `Numista`
  String get numista {
    return Intl.message(
      'Numista',
      name: 'numista',
      desc: '',
      args: [],
    );
  }

  /// `API Key`
  String get numistaApiKeyField {
    return Intl.message(
      'API Key',
      name: 'numistaApiKeyField',
      desc: '',
      args: [],
    );
  }

  /// `To obtain an API key, head over to\r\n`
  String get numistaApiKeyTooltip {
    return Intl.message(
      'To obtain an API key, head over to\r\n',
      name: 'numistaApiKeyTooltip',
      desc: '',
      args: [],
    );
  }

  /// `https://en.numista.com/api`
  String get numistaWebsiteUrl {
    return Intl.message(
      'https://en.numista.com/api',
      name: 'numistaWebsiteUrl',
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

  /// `Gold to Silver ratio (GSR)`
  String get physicalAssetsSettingsGoldToSilverRatio {
    return Intl.message(
      'Gold to Silver ratio (GSR)',
      name: 'physicalAssetsSettingsGoldToSilverRatio',
      desc: '',
      args: [],
    );
  }

  /// `Gold favorable when lower than`
  String get physicalAssetsSettingsGoldFavorableRatioGSR {
    return Intl.message(
      'Gold favorable when lower than',
      name: 'physicalAssetsSettingsGoldFavorableRatioGSR',
      desc: '',
      args: [],
    );
  }

  /// `Silver favorable when higher than`
  String get physicalAssetsSettingsSilverFavorableRatioGSR {
    return Intl.message(
      'Silver favorable when higher than',
      name: 'physicalAssetsSettingsSilverFavorableRatioGSR',
      desc: '',
      args: [],
    );
  }

  /// `SP500 to Gold ratio (SPGR)`
  String get physicalAssetsSettingsSPToGoldRatio {
    return Intl.message(
      'SP500 to Gold ratio (SPGR)',
      name: 'physicalAssetsSettingsSPToGoldRatio',
      desc: '',
      args: [],
    );
  }

  /// `SP500 favorable when lower than`
  String get physicalAssetsSettingsSPFavorableRatioSPGR {
    return Intl.message(
      'SP500 favorable when lower than',
      name: 'physicalAssetsSettingsSPFavorableRatioSPGR',
      desc: '',
      args: [],
    );
  }

  /// `Gold favorable when higher than`
  String get physicalAssetsSettingsGoldFavorableRatioSPGR {
    return Intl.message(
      'Gold favorable when higher than',
      name: 'physicalAssetsSettingsGoldFavorableRatioSPGR',
      desc: '',
      args: [],
    );
  }

  /// `Gold ratio`
  String get physicalAssetsSettingsGoldRatio {
    return Intl.message(
      'Gold ratio',
      name: 'physicalAssetsSettingsGoldRatio',
      desc: '',
      args: [],
    );
  }

  /// `Silver ratio`
  String get physicalAssetsSettingsSilverRatio {
    return Intl.message(
      'Silver ratio',
      name: 'physicalAssetsSettingsSilverRatio',
      desc: '',
      args: [],
    );
  }

  /// `SP500 ratio`
  String get physicalAssetsSettingsSPRatio {
    return Intl.message(
      'SP500 ratio',
      name: 'physicalAssetsSettingsSPRatio',
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

  /// `Import successful`
  String get importSuccessMessage {
    return Intl.message(
      'Import successful',
      name: 'importSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Export successful`
  String get exportSuccessMessage {
    return Intl.message(
      'Export successful',
      name: 'exportSuccessMessage',
      desc: '',
      args: [],
    );
  }

  /// `Gold`
  String get goldMetalType {
    return Intl.message(
      'Gold',
      name: 'goldMetalType',
      desc: '',
      args: [],
    );
  }

  /// `Silver`
  String get silverMetalType {
    return Intl.message(
      'Silver',
      name: 'silverMetalType',
      desc: '',
      args: [],
    );
  }

  /// `Other`
  String get otherMetalType {
    return Intl.message(
      'Other',
      name: 'otherMetalType',
      desc: '',
      args: [],
    );
  }

  /// `Raw`
  String get raw {
    return Intl.message(
      'Raw',
      name: 'raw',
      desc: '',
      args: [],
    );
  }

  /// `Coin`
  String get coin {
    return Intl.message(
      'Coin',
      name: 'coin',
      desc: '',
      args: [],
    );
  }

  /// `My assets`
  String get physicalAssetsPageTitle {
    return Intl.message(
      'My assets',
      name: 'physicalAssetsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Item's details`
  String get physicalAssetDetailTitle {
    return Intl.message(
      'Item\'s details',
      name: 'physicalAssetDetailTitle',
      desc: '',
      args: [],
    );
  }

  /// `You don't have any physical assets. Add some by pressing the button at the top right.`
  String get noPhysicalAssets {
    return Intl.message(
      'You don\'t have any physical assets. Add some by pressing the button at the top right.',
      name: 'noPhysicalAssets',
      desc: '',
      args: [],
    );
  }

  /// `Search for a coin`
  String get searchCoin {
    return Intl.message(
      'Search for a coin',
      name: 'searchCoin',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get metalDetailsTitle {
    return Intl.message(
      'Details',
      name: 'metalDetailsTitle',
      desc: '',
      args: [],
    );
  }

  /// `Features`
  String get metalFeaturesTitle {
    return Intl.message(
      'Features',
      name: 'metalFeaturesTitle',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get metalFeaturesWeight {
    return Intl.message(
      'Weight',
      name: 'metalFeaturesWeight',
      desc: '',
      args: [],
    );
  }

  /// `{weight} g`
  String metalFeaturesWeightValue(double weight) {
    return Intl.message(
      '$weight g',
      name: 'metalFeaturesWeightValue',
      desc: '',
      args: [weight],
    );
  }

  /// `Size`
  String get metalFeaturesSize {
    return Intl.message(
      'Size',
      name: 'metalFeaturesSize',
      desc: '',
      args: [],
    );
  }

  /// `{size} mm`
  String metalFeaturesSizeValue(double size) {
    return Intl.message(
      '$size mm',
      name: 'metalFeaturesSizeValue',
      desc: '',
      args: [size],
    );
  }

  /// `Thickness`
  String get metalFeaturesThickness {
    return Intl.message(
      'Thickness',
      name: 'metalFeaturesThickness',
      desc: '',
      args: [],
    );
  }

  /// `{thickness} mm`
  String metalFeaturesThicknessValue(double thickness) {
    return Intl.message(
      '$thickness mm',
      name: 'metalFeaturesThicknessValue',
      desc: '',
      args: [thickness],
    );
  }

  /// `Composition`
  String get metalFeaturesComposition {
    return Intl.message(
      'Composition',
      name: 'metalFeaturesComposition',
      desc: '',
      args: [],
    );
  }

  /// `Demonetized`
  String get coinFeaturesDemonetization {
    return Intl.message(
      'Demonetized',
      name: 'coinFeaturesDemonetization',
      desc: '',
      args: [],
    );
  }

  /// `Yes ({date})`
  String coinFeaturesDemonetizedCoinDate(String date) {
    return Intl.message(
      'Yes ($date)',
      name: 'coinFeaturesDemonetizedCoinDate',
      desc: '',
      args: [date],
    );
  }

  /// `Series`
  String get coinFeaturesSeries {
    return Intl.message(
      'Series',
      name: 'coinFeaturesSeries',
      desc: '',
      args: [],
    );
  }

  /// `Pictures`
  String get metalPicturesTitle {
    return Intl.message(
      'Pictures',
      name: 'metalPicturesTitle',
      desc: '',
      args: [],
    );
  }

  /// `ø`
  String get coinFeaturesNoValue {
    return Intl.message(
      'ø',
      name: 'coinFeaturesNoValue',
      desc: '',
      args: [],
    );
  }

  /// `No picture available for this coin`
  String get coinPicturesNoPicturesAvailable {
    return Intl.message(
      'No picture available for this coin',
      name: 'coinPicturesNoPicturesAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Add a coin`
  String get addCoinTitle {
    return Intl.message(
      'Add a coin',
      name: 'addCoinTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add a raw metal`
  String get addRawPreciousMetalTitle {
    return Intl.message(
      'Add a raw metal',
      name: 'addRawPreciousMetalTitle',
      desc: '',
      args: [],
    );
  }

  /// `Add cash`
  String get addCashTitle {
    return Intl.message(
      'Add cash',
      name: 'addCashTitle',
      desc: '',
      args: [],
    );
  }

  /// `Update the asset`
  String get updateAssetTitle {
    return Intl.message(
      'Update the asset',
      name: 'updateAssetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Information has been autofilled. Double check that everything is correct before adding the coin.`
  String get addCoinAutofillMessage {
    return Intl.message(
      'Information has been autofilled. Double check that everything is correct before adding the coin.',
      name: 'addCoinAutofillMessage',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Possessed`
  String get possessed {
    return Intl.message(
      'Possessed',
      name: 'possessed',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantity {
    return Intl.message(
      'Quantity',
      name: 'quantity',
      desc: '',
      args: [],
    );
  }

  /// `Unit value`
  String get cashUnitValue {
    return Intl.message(
      'Unit value',
      name: 'cashUnitValue',
      desc: '',
      args: [],
    );
  }

  /// `Label: '{label}'`
  String coinCompositionLabel(String label) {
    return Intl.message(
      'Label: \'$label\'',
      name: 'coinCompositionLabel',
      desc: '',
      args: [label],
    );
  }

  /// `Metal type`
  String get metalDropdown {
    return Intl.message(
      'Metal type',
      name: 'metalDropdown',
      desc: '',
      args: [],
    );
  }

  /// `Purity`
  String get purity {
    return Intl.message(
      'Purity',
      name: 'purity',
      desc: '',
      args: [],
    );
  }

  /// `Total weight`
  String get totalWeight {
    return Intl.message(
      'Total weight',
      name: 'totalWeight',
      desc: '',
      args: [],
    );
  }

  /// `Estimated price: `
  String get estimatedPrice {
    return Intl.message(
      'Estimated price: ',
      name: 'estimatedPrice',
      desc: '',
      args: [],
    );
  }

  /// `Add to assets`
  String get addToAssetsButton {
    return Intl.message(
      'Add to assets',
      name: 'addToAssetsButton',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get updateAssetsButton {
    return Intl.message(
      'Update',
      name: 'updateAssetsButton',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get deleteAssetButton {
    return Intl.message(
      'Delete',
      name: 'deleteAssetButton',
      desc: '',
      args: [],
    );
  }

  /// `Confirm deletion`
  String get deleteDialogTitle {
    return Intl.message(
      'Confirm deletion',
      name: 'deleteDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete '{item}'`
  String deleteDialogContent(String item) {
    return Intl.message(
      'Are you sure you want to delete \'$item\'',
      name: 'deleteDialogContent',
      desc: '',
      args: [item],
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
