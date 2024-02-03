// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(version) => "version ${version}";

  static String m1(days) =>
      "${Intl.plural(days, one: 'hier', other: 'Il y a ${days} jours')}";

  static String m2(hours) =>
      "Il y a ${hours} ${Intl.plural(hours, one: 'heure', other: 'heures')}";

  static String m3(minutes) =>
      "Il y a ${minutes} ${Intl.plural(minutes, one: 'minute', other: 'minutes')}";

  static String m4(seconds) =>
      "Il y a ${seconds} ${Intl.plural(seconds, one: 'seconde', other: 'secondes')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accounts": MessageLookupByLibrary.simpleMessage("Comptes"),
        "appVersion": m0,
        "authenticationFailedBody": MessageLookupByLibrary.simpleMessage(
            "Nom d\'utilisateur ou mot de passe incorrect."),
        "authenticationFailedTitle":
            MessageLookupByLibrary.simpleMessage("Echec de la connexion"),
        "authenticationOtpFailedBody": MessageLookupByLibrary.simpleMessage(
            "Le code secret saisi est incorrect"),
        "authenticationOtpFailedTitle":
            MessageLookupByLibrary.simpleMessage("Code secret incorrect"),
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "checkingAccounts":
            MessageLookupByLibrary.simpleMessage("Comptes courants"),
        "creditAccounts":
            MessageLookupByLibrary.simpleMessage("Comptes de crédit"),
        "crowdlendings": MessageLookupByLibrary.simpleMessage("Crowdlendings"),
        "cryptos": MessageLookupByLibrary.simpleMessage("Crypto-monnaies"),
        "dashboardDrawerItem":
            MessageLookupByLibrary.simpleMessage("Tableau de bord"),
        "dashboardSettingsStockCategorisationEmptyError":
            MessageLookupByLibrary.simpleMessage(
                "Vous n\'avez pas d\'actions. Commencez à investir pour les catégoriser."),
        "dashboardSettingsStockCategorisationMessage":
            MessageLookupByLibrary.simpleMessage(
                "Par défault, les actions sont considérées comme spéculatives. Selectionnez celles que vous voulez catégoriser comme investissements dans la liste ci-dessous."),
        "dashboardSettingsStockCategorisationTitle":
            MessageLookupByLibrary.simpleMessage("Categorisation des actions"),
        "distribution": MessageLookupByLibrary.simpleMessage("Répartition"),
        "emptyEmailError":
            MessageLookupByLibrary.simpleMessage("Vous devez saisir un email."),
        "emptyOtpError": MessageLookupByLibrary.simpleMessage(
            "Vous devez saisir un code secret."),
        "emptyPasswordError": MessageLookupByLibrary.simpleMessage(
            "Vous devez saisir un mot de passe."),
        "exportButton":
            MessageLookupByLibrary.simpleMessage("Exporter les données"),
        "finary": MessageLookupByLibrary.simpleMessage("Finary"),
        "finaryAuthenticationLoginMessage":
            MessageLookupByLibrary.simpleMessage(
                "Vos informations de connexion ne seront pas sauvegardées."),
        "finaryAuthenticationOtpMessage": MessageLookupByLibrary.simpleMessage(
            "L\'authentification à deux facteurs est activée. Merci de saisir le code affiché par votre application d\'authentification"),
        "finaryAuthenticationTitle":
            MessageLookupByLibrary.simpleMessage("Connexion à Finary"),
        "finarySuccessfulAuthentication":
            MessageLookupByLibrary.simpleMessage("Connexion réussie"),
        "fondsEuro": MessageLookupByLibrary.simpleMessage("Fonds euro"),
        "genericError": MessageLookupByLibrary.simpleMessage(
            "Une erreur inconnue est survenue."),
        "geography":
            MessageLookupByLibrary.simpleMessage("Géographie des actions"),
        "importButton":
            MessageLookupByLibrary.simpleMessage("Importer les données"),
        "invalidEmailError": MessageLookupByLibrary.simpleMessage(
            "Vous devez saisir un email valide."),
        "invalidOtpError": MessageLookupByLibrary.simpleMessage(
            "Vous devez saisir un code secret valide."),
        "investment": MessageLookupByLibrary.simpleMessage("Investissement"),
        "loans": MessageLookupByLibrary.simpleMessage("Prêts"),
        "logIn": MessageLookupByLibrary.simpleMessage("Se connecter"),
        "logOut": MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "loginTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "other": MessageLookupByLibrary.simpleMessage("Autre"),
        "otherAssets": MessageLookupByLibrary.simpleMessage("Autre"),
        "otpTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Code secret"),
        "passwordTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "realEstates": MessageLookupByLibrary.simpleMessage("Immobilier"),
        "savings": MessageLookupByLibrary.simpleMessage("Epargne"),
        "savingsAccounts":
            MessageLookupByLibrary.simpleMessage("Comptes d\'épargne"),
        "sessionExpiredBody": MessageLookupByLibrary.simpleMessage(
            "Une authentification manuelle est nécessaire dans les paramètres de l\'application"),
        "sessionExpiredTitle": MessageLookupByLibrary.simpleMessage(
            "Aucune session trouvée ou session expirée"),
        "settingsAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Alertes sur la valeur d\'actions"),
        "settingsAlertsTitle": MessageLookupByLibrary.simpleMessage("Alertes"),
        "settingsAssetsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Répartitions ciblées, catégorisation des actions"),
        "settingsAssetsTitle":
            MessageLookupByLibrary.simpleMessage("Tableau de bord"),
        "settingsAuthenticationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Se connecter aux services tiers"),
        "settingsAuthenticationTitle":
            MessageLookupByLibrary.simpleMessage("Connexions"),
        "settingsDrawerItem":
            MessageLookupByLibrary.simpleMessage("Paramètres"),
        "settingsImportExportSubtitle": MessageLookupByLibrary.simpleMessage(
            "Importer une sauvegarde de l\'application ou exporter pour un import futur"),
        "settingsImportExportTitle":
            MessageLookupByLibrary.simpleMessage("Import & Export"),
        "settingsPageTitle": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "speculative": MessageLookupByLibrary.simpleMessage("Speculation"),
        "startups": MessageLookupByLibrary.simpleMessage("Startups"),
        "stocks": MessageLookupByLibrary.simpleMessage("Actions"),
        "submit": MessageLookupByLibrary.simpleMessage("Envoyer"),
        "syncDaysAgo": m1,
        "syncHoursAgo": m2,
        "syncLabel": MessageLookupByLibrary.simpleMessage("Mis à jour"),
        "syncMinutesAgo": m3,
        "syncNow": MessageLookupByLibrary.simpleMessage("now"),
        "syncSecondsAgo": m4,
        "tooManyRequestsBody": MessageLookupByLibrary.simpleMessage(
            "Vous avez envoyé trop de requêtes simultanées ou avez atteint votre quota mensuel."),
        "tooManyRequestsTitle":
            MessageLookupByLibrary.simpleMessage("Trop de requêtes"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "unknownErrorBody":
            MessageLookupByLibrary.simpleMessage("Une erreur est survenue."),
        "unknownErrorTitle": MessageLookupByLibrary.simpleMessage("Erreur")
      };
}
