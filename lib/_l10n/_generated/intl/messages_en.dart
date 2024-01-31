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

  static String m1(days) =>
      "${Intl.plural(days, one: 'yesterday', other: '${days} days ago')}";

  static String m2(hours) =>
      "${hours} ${Intl.plural(hours, one: 'hour', other: 'hours')} ago";

  static String m3(minutes) =>
      "${minutes} ${Intl.plural(minutes, one: 'minute', other: 'minutes')} ago";

  static String m4(seconds) =>
      "${seconds} ${Intl.plural(seconds, one: 'second', other: 'seconds')} ago";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accounts": MessageLookupByLibrary.simpleMessage("Accounts"),
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
        "checkingAccounts":
            MessageLookupByLibrary.simpleMessage("Checking accounts"),
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
        "distribution": MessageLookupByLibrary.simpleMessage("Distribution"),
        "emptyEmailError":
            MessageLookupByLibrary.simpleMessage("You must type an email."),
        "emptyOtpError": MessageLookupByLibrary.simpleMessage(
            "You must type a secret code."),
        "emptyPasswordError":
            MessageLookupByLibrary.simpleMessage("You must type a password."),
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
        "fondsEuro": MessageLookupByLibrary.simpleMessage("Fonds euro"),
        "genericError":
            MessageLookupByLibrary.simpleMessage("An unknown error occurred."),
        "geography": MessageLookupByLibrary.simpleMessage("Stocks Geography"),
        "invalidEmailError": MessageLookupByLibrary.simpleMessage(
            "You must type a valid email."),
        "invalidOtpError": MessageLookupByLibrary.simpleMessage(
            "You must type a valid secret code."),
        "investment": MessageLookupByLibrary.simpleMessage("Investment"),
        "loans": MessageLookupByLibrary.simpleMessage("Loans"),
        "logIn": MessageLookupByLibrary.simpleMessage("Log in"),
        "logOut": MessageLookupByLibrary.simpleMessage("Log out"),
        "loginTextFieldLabel": MessageLookupByLibrary.simpleMessage("Login"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "other": MessageLookupByLibrary.simpleMessage("Other"),
        "otherAssets": MessageLookupByLibrary.simpleMessage("Other assets"),
        "otpTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Secret code"),
        "passwordTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Password"),
        "realEstates": MessageLookupByLibrary.simpleMessage("Real estates"),
        "savings": MessageLookupByLibrary.simpleMessage("Savings"),
        "savingsAccounts":
            MessageLookupByLibrary.simpleMessage("Savings accounts"),
        "sessionExpiredBody": MessageLookupByLibrary.simpleMessage(
            "Manual authentication is required"),
        "sessionExpiredTitle": MessageLookupByLibrary.simpleMessage(
            "No session found or session expired"),
        "settingsAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("Stocks value alerts"),
        "settingsAlertsTitle": MessageLookupByLibrary.simpleMessage("Alerts"),
        "settingsAssetsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Distribution targets, stocks categorisation"),
        "settingsAssetsTitle":
            MessageLookupByLibrary.simpleMessage("Dashboard"),
        "settingsAuthenticationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Log in to the third-party services"),
        "settingsAuthenticationTitle":
            MessageLookupByLibrary.simpleMessage("Connections"),
        "settingsDrawerItem": MessageLookupByLibrary.simpleMessage("Settings"),
        "settingsPageTitle": MessageLookupByLibrary.simpleMessage("Settings"),
        "speculative": MessageLookupByLibrary.simpleMessage("Speculative"),
        "startups": MessageLookupByLibrary.simpleMessage("Startups"),
        "stocks": MessageLookupByLibrary.simpleMessage("Stocks"),
        "submit": MessageLookupByLibrary.simpleMessage("Submit"),
        "syncDaysAgo": m1,
        "syncHoursAgo": m2,
        "syncLabel": MessageLookupByLibrary.simpleMessage("Updated"),
        "syncMinutesAgo": m3,
        "syncNow": MessageLookupByLibrary.simpleMessage("now"),
        "syncSecondsAgo": m4,
        "tooManyRequestsBody": MessageLookupByLibrary.simpleMessage(
            "You have sent too many simultaneous requests or have reached your monthly quota."),
        "tooManyRequestsTitle":
            MessageLookupByLibrary.simpleMessage("Too many requests"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "unknownErrorBody":
            MessageLookupByLibrary.simpleMessage("An error occurred."),
        "unknownErrorTitle": MessageLookupByLibrary.simpleMessage("Error")
      };
}
