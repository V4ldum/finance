// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(version) => "version ${version}";

  static String m1(label) => "Label: \'${label}\'";

  static String m2(date) => "Yes (${date})";

  static String m3(item) => "Are you sure you want to delete \'${item}\'";

  static String m4(size) => "${size} mm";

  static String m5(thickness) => "${thickness} mm";

  static String m6(weight) => "${weight} g";

  static String m7(days) =>
      "${Intl.plural(days, one: 'yesterday', other: '${days} days ago')}";

  static String m8(hours) =>
      "${hours} ${Intl.plural(hours, one: 'hour', other: 'hours')} ago";

  static String m9(minutes) =>
      "${minutes} ${Intl.plural(minutes, one: 'minute', other: 'minutes')} ago";

  static String m10(seconds) =>
      "${seconds} ${Intl.plural(seconds, one: 'second', other: 'seconds')} ago";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accounts": MessageLookupByLibrary.simpleMessage("Accounts"),
        "addCashTitle": MessageLookupByLibrary.simpleMessage("Add cash"),
        "addCoinAutofillMessage": MessageLookupByLibrary.simpleMessage(
            "Information has been autofilled. Double check that everything is correct before adding the coin."),
        "addCoinTitle": MessageLookupByLibrary.simpleMessage("Add a coin"),
        "addRawPreciousMetalTitle":
            MessageLookupByLibrary.simpleMessage("Add a raw metal"),
        "addToAssetsButton":
            MessageLookupByLibrary.simpleMessage("Add to assets"),
        "appVersion": m0,
        "authenticationFailedBody":
            MessageLookupByLibrary.simpleMessage("Login or password incorrect"),
        "authenticationFailedTitle":
            MessageLookupByLibrary.simpleMessage("Connection failed"),
        "authenticationOtpFailedBody": MessageLookupByLibrary.simpleMessage(
            "The provided secret code is incorrect"),
        "authenticationOtpFailedTitle":
            MessageLookupByLibrary.simpleMessage("Invalid secret code"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cash": MessageLookupByLibrary.simpleMessage("Cash"),
        "cashUnitValue": MessageLookupByLibrary.simpleMessage("Unit value"),
        "checkingAccounts":
            MessageLookupByLibrary.simpleMessage("Checking accounts"),
        "coin": MessageLookupByLibrary.simpleMessage("Coin"),
        "coinCompositionLabel": m1,
        "coinFeaturesDemonetization":
            MessageLookupByLibrary.simpleMessage("Demonetized"),
        "coinFeaturesDemonetizedCoinDate": m2,
        "coinFeaturesNoValue": MessageLookupByLibrary.simpleMessage("ø"),
        "coinFeaturesSeries": MessageLookupByLibrary.simpleMessage("Series"),
        "coinPicturesNoPicturesAvailable": MessageLookupByLibrary.simpleMessage(
            "No picture available for this coin"),
        "creditAccounts":
            MessageLookupByLibrary.simpleMessage("Credit Accounts"),
        "crowdlendings": MessageLookupByLibrary.simpleMessage("Crowdlendings"),
        "cryptos": MessageLookupByLibrary.simpleMessage("Cryptos"),
        "dashboardDrawerItem":
            MessageLookupByLibrary.simpleMessage("Dashboard"),
        "dashboardSettingsStockCategorisationEmptyError":
            MessageLookupByLibrary.simpleMessage(
                "You don\'t have any stocks. Start investing in stocks to categorize them."),
        "dashboardSettingsStockCategorisationMessage":
            MessageLookupByLibrary.simpleMessage(
                "By default, stocks are considered speculative. Select the ones you want to tag as investment in the following list."),
        "dashboardSettingsStockCategorisationTitle":
            MessageLookupByLibrary.simpleMessage("Stock Categorisation"),
        "deleteAssetButton": MessageLookupByLibrary.simpleMessage("Delete"),
        "deleteDialogContent": m3,
        "deleteDialogTitle":
            MessageLookupByLibrary.simpleMessage("Confirm deletion"),
        "distribution": MessageLookupByLibrary.simpleMessage("Distribution"),
        "emptyEmailError":
            MessageLookupByLibrary.simpleMessage("You must type an email."),
        "emptyNameError":
            MessageLookupByLibrary.simpleMessage("You must type a name."),
        "emptyOtpError": MessageLookupByLibrary.simpleMessage(
            "You must type a secret code."),
        "emptyPasswordError":
            MessageLookupByLibrary.simpleMessage("You must type a password."),
        "estimatedPrice":
            MessageLookupByLibrary.simpleMessage("Estimated price: "),
        "exportButton": MessageLookupByLibrary.simpleMessage("Export data"),
        "exportSuccessMessage":
            MessageLookupByLibrary.simpleMessage("Export successful"),
        "finary": MessageLookupByLibrary.simpleMessage("Finary"),
        "finaryAuthenticationLoginMessage":
            MessageLookupByLibrary.simpleMessage(
                "Your connection information will not be saved."),
        "finaryAuthenticationOtpMessage": MessageLookupByLibrary.simpleMessage(
            "Two factor authentication is enabled. Please type in the code shown by your authentication application."),
        "finaryAuthenticationTitle":
            MessageLookupByLibrary.simpleMessage("Log in to Finary"),
        "finarySuccessfulAuthentication":
            MessageLookupByLibrary.simpleMessage("Successful connection"),
        "fondsEuro": MessageLookupByLibrary.simpleMessage("Life insurance"),
        "genericEmptyBody": MessageLookupByLibrary.simpleMessage(
            "Maybe you did not link your bank account with Finary"),
        "genericEmptyTitle":
            MessageLookupByLibrary.simpleMessage("No data found"),
        "genericError":
            MessageLookupByLibrary.simpleMessage("An unknown error occurred."),
        "goldMetalType": MessageLookupByLibrary.simpleMessage("Gold"),
        "importButton": MessageLookupByLibrary.simpleMessage("Import data"),
        "importSuccessMessage":
            MessageLookupByLibrary.simpleMessage("Import successful"),
        "information": MessageLookupByLibrary.simpleMessage("Information"),
        "invalidEmailError": MessageLookupByLibrary.simpleMessage(
            "You must type a valid email."),
        "invalidOtpError": MessageLookupByLibrary.simpleMessage(
            "You must type a valid secret code."),
        "investment": MessageLookupByLibrary.simpleMessage("Investment"),
        "loans": MessageLookupByLibrary.simpleMessage("Loans"),
        "logIn": MessageLookupByLibrary.simpleMessage("Log in"),
        "logOut": MessageLookupByLibrary.simpleMessage("Log out"),
        "loginTextFieldLabel": MessageLookupByLibrary.simpleMessage("Login"),
        "metalDetailsTitle": MessageLookupByLibrary.simpleMessage("Details"),
        "metalDropdown": MessageLookupByLibrary.simpleMessage("Metal type"),
        "metalFeaturesComposition":
            MessageLookupByLibrary.simpleMessage("Composition"),
        "metalFeaturesSize": MessageLookupByLibrary.simpleMessage("Size"),
        "metalFeaturesSizeValue": m4,
        "metalFeaturesThickness":
            MessageLookupByLibrary.simpleMessage("Thickness"),
        "metalFeaturesThicknessValue": m5,
        "metalFeaturesTitle": MessageLookupByLibrary.simpleMessage("Features"),
        "metalFeaturesWeight": MessageLookupByLibrary.simpleMessage("Weight"),
        "metalFeaturesWeightValue": m6,
        "metalPicturesTitle": MessageLookupByLibrary.simpleMessage("Pictures"),
        "name": MessageLookupByLibrary.simpleMessage("Name"),
        "no": MessageLookupByLibrary.simpleMessage("No"),
        "noPhysicalAssets": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any physical assets. Add some by pressing the button at the top right."),
        "numista": MessageLookupByLibrary.simpleMessage("Numista"),
        "numistaApiKeyField": MessageLookupByLibrary.simpleMessage("API Key"),
        "numistaApiKeyTooltip": MessageLookupByLibrary.simpleMessage(
            "To obtain an API key, head over to\r\n"),
        "numistaBadRequestBody": MessageLookupByLibrary.simpleMessage(
            "Invalid value for a parameter or missing mandatory parameter"),
        "numistaBadRequestTitle":
            MessageLookupByLibrary.simpleMessage("Bad Request"),
        "numistaCoinNotFoundBody": MessageLookupByLibrary.simpleMessage(
            "Check that the provided ID is correct"),
        "numistaCoinNotFoundTitle":
            MessageLookupByLibrary.simpleMessage("Coin not found"),
        "numistaInvalidKeyBody": MessageLookupByLibrary.simpleMessage(
            "Check your key in the settings"),
        "numistaInvalidKeyTitle":
            MessageLookupByLibrary.simpleMessage("Missing or invalid API key"),
        "numistaWebsiteUrl":
            MessageLookupByLibrary.simpleMessage("https://en.numista.com/api"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "otherAssets": MessageLookupByLibrary.simpleMessage("Other assets"),
        "otherMetalType": MessageLookupByLibrary.simpleMessage("Other"),
        "otpTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Secret code"),
        "passwordTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Password"),
        "physicalAssetCoinAlreadyExistsContent":
            MessageLookupByLibrary.simpleMessage(
                "You must update the item instead of adding a new one."),
        "physicalAssetCoinAlreadyExistsTitle":
            MessageLookupByLibrary.simpleMessage("Coin already exists"),
        "physicalAssetDetailTitle":
            MessageLookupByLibrary.simpleMessage("Item\'s details"),
        "physicalAssetItemAlreadyExistsContent":
            MessageLookupByLibrary.simpleMessage(
                "You should either change the name of the new item or edit the old one."),
        "physicalAssetItemAlreadyExistsTitle":
            MessageLookupByLibrary.simpleMessage("Item already exists"),
        "physicalAssetsDrawerItem":
            MessageLookupByLibrary.simpleMessage("Physical assets"),
        "physicalAssetsPageTitle":
            MessageLookupByLibrary.simpleMessage("My assets"),
        "physicalAssetsSettingsGoldFavorableRatioGSR":
            MessageLookupByLibrary.simpleMessage(
                "Gold favorable when lower than"),
        "physicalAssetsSettingsGoldFavorableRatioSPGR":
            MessageLookupByLibrary.simpleMessage(
                "Gold favorable when higher than"),
        "physicalAssetsSettingsGoldRatio":
            MessageLookupByLibrary.simpleMessage("Gold ratio"),
        "physicalAssetsSettingsGoldToSilverRatio":
            MessageLookupByLibrary.simpleMessage("Gold to Silver ratio (GSR)"),
        "physicalAssetsSettingsSPFavorableRatioSPGR":
            MessageLookupByLibrary.simpleMessage(
                "SP500 favorable when lower than"),
        "physicalAssetsSettingsSPRatio":
            MessageLookupByLibrary.simpleMessage("SP500 ratio"),
        "physicalAssetsSettingsSPToGoldRatio":
            MessageLookupByLibrary.simpleMessage("SP500 to Gold ratio (SPGR)"),
        "physicalAssetsSettingsSilverFavorableRatioGSR":
            MessageLookupByLibrary.simpleMessage(
                "Silver favorable when higher than"),
        "physicalAssetsSettingsSilverRatio":
            MessageLookupByLibrary.simpleMessage("Silver ratio"),
        "possessed": MessageLookupByLibrary.simpleMessage("Possessed"),
        "preciousMetals":
            MessageLookupByLibrary.simpleMessage("Precious Metals"),
        "preciousMetalsAPIFailedBody": MessageLookupByLibrary.simpleMessage(
            "An error occurred while getting the metals\' value. You can still show the weight diagram"),
        "preciousMetalsAPIFailedTitle":
            MessageLookupByLibrary.simpleMessage("No value available"),
        "preciousMetalsEmptyBody": MessageLookupByLibrary.simpleMessage(
            "Start adding precious metals into the app to see the breakdown here"),
        "preciousMetalsEmptyTitle": MessageLookupByLibrary.simpleMessage(
            "You don\'t have any precious metals"),
        "purity": MessageLookupByLibrary.simpleMessage("Purity"),
        "quantity": MessageLookupByLibrary.simpleMessage("Quantity"),
        "raw": MessageLookupByLibrary.simpleMessage("Raw"),
        "realEstates": MessageLookupByLibrary.simpleMessage("Real estates"),
        "savings": MessageLookupByLibrary.simpleMessage("Savings"),
        "savingsAccounts":
            MessageLookupByLibrary.simpleMessage("Savings accounts"),
        "searchCoin": MessageLookupByLibrary.simpleMessage("Search for a coin"),
        "sessionExpiredBody": MessageLookupByLibrary.simpleMessage(
            "Manual authentication is required in the settings of the app"),
        "sessionExpiredTitle": MessageLookupByLibrary.simpleMessage(
            "No session found or session expired"),
        "settingsAssetsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Distribution targets, stocks categorisation"),
        "settingsAssetsTitle":
            MessageLookupByLibrary.simpleMessage("Dashboard"),
        "settingsAuthenticationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Log in to the third-party services"),
        "settingsAuthenticationTitle":
            MessageLookupByLibrary.simpleMessage("Connections"),
        "settingsDrawerItem": MessageLookupByLibrary.simpleMessage("Settings"),
        "settingsImportExportSubtitle": MessageLookupByLibrary.simpleMessage(
            "Import backups of the app or export it for future import"),
        "settingsImportExportTitle":
            MessageLookupByLibrary.simpleMessage("Import & Export"),
        "settingsPageTitle": MessageLookupByLibrary.simpleMessage("Settings"),
        "settingsPhysicalAssetsSubtitle":
            MessageLookupByLibrary.simpleMessage("Ratios settings"),
        "settingsPhysicalAssetsTitle":
            MessageLookupByLibrary.simpleMessage("Physical assets"),
        "silverMetalType": MessageLookupByLibrary.simpleMessage("Silver"),
        "speculative": MessageLookupByLibrary.simpleMessage("Speculative"),
        "startups": MessageLookupByLibrary.simpleMessage("Startups"),
        "stocks": MessageLookupByLibrary.simpleMessage("Stocks"),
        "stocksEmptyBody": MessageLookupByLibrary.simpleMessage(
            "Start investing and you will see the breakdown here"),
        "stocksEmptyTitle":
            MessageLookupByLibrary.simpleMessage("You don\'t have any stocks"),
        "stocksLiquidity":
            MessageLookupByLibrary.simpleMessage("Stocks liquidity accounts"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "syncDaysAgo": m7,
        "syncHoursAgo": m8,
        "syncLabel": MessageLookupByLibrary.simpleMessage("Updated"),
        "syncMinutesAgo": m9,
        "syncNow": MessageLookupByLibrary.simpleMessage("now"),
        "syncSecondsAgo": m10,
        "tooManyRequestsBody": MessageLookupByLibrary.simpleMessage(
            "You have sent too many simultaneous requests or have reached your monthly quota."),
        "tooManyRequestsTitle":
            MessageLookupByLibrary.simpleMessage("Too many requests"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalWeight": MessageLookupByLibrary.simpleMessage("Total weight"),
        "unknownErrorBody":
            MessageLookupByLibrary.simpleMessage("An error occurred."),
        "unknownErrorTitle": MessageLookupByLibrary.simpleMessage("Error"),
        "updateAssetTitle":
            MessageLookupByLibrary.simpleMessage("Update the asset"),
        "updateAssetsButton": MessageLookupByLibrary.simpleMessage("Update"),
        "yes": MessageLookupByLibrary.simpleMessage("Yes")
      };
}
