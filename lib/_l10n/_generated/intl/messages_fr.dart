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

  static String m1(label) => "Label: \'${label}\'";

  static String m2(item) => "Êtes-vous sûr de voulour supprimer \'${item}\'";

  static String m6(days) =>
      "${Intl.plural(days, one: 'hier', other: 'Il y a ${days} jours')}";

  static String m7(hours) =>
      "Il y a ${hours} ${Intl.plural(hours, one: 'heure', other: 'heures')}";

  static String m8(minutes) =>
      "Il y a ${minutes} ${Intl.plural(minutes, one: 'minute', other: 'minutes')}";

  static String m9(seconds) =>
      "Il y a ${seconds} ${Intl.plural(seconds, one: 'seconde', other: 'secondes')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "accounts": MessageLookupByLibrary.simpleMessage("Comptes"),
        "addCashTitle":
            MessageLookupByLibrary.simpleMessage("Ajouter du liquide"),
        "addCoinAutofillMessage": MessageLookupByLibrary.simpleMessage(
            "Les informations ont été pré-remplies. Vérifier que tout est correct avant d\'ajouter la pièce."),
        "addCoinTitle":
            MessageLookupByLibrary.simpleMessage("Ajouter une pièce"),
        "addRawPreciousMetalTitle":
            MessageLookupByLibrary.simpleMessage("Ajouter un métal brut"),
        "addToAssetsButton":
            MessageLookupByLibrary.simpleMessage("Ajouter au patrimoine"),
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
        "cash": MessageLookupByLibrary.simpleMessage("Liquide"),
        "cashUnitValue":
            MessageLookupByLibrary.simpleMessage("Valeur unitaire"),
        "checkingAccounts":
            MessageLookupByLibrary.simpleMessage("Comptes courants"),
        "coin": MessageLookupByLibrary.simpleMessage("Pièce"),
        "coinCompositionLabel": m1,
        "coinDateNow": MessageLookupByLibrary.simpleMessage("présent"),
        "coinFeaturesNoValue": MessageLookupByLibrary.simpleMessage("ø"),
        "coinPicturesNoPicturesAvailable": MessageLookupByLibrary.simpleMessage(
            "Aucune image disponible pour cette pièce."),
        "creditAccounts":
            MessageLookupByLibrary.simpleMessage("Comptes de crédit"),
        "crowdlendings": MessageLookupByLibrary.simpleMessage("Crowdlendings"),
        "cryptos": MessageLookupByLibrary.simpleMessage("Crypto-monnaies"),
        "customBack": MessageLookupByLibrary.simpleMessage("API maison"),
        "customBackMessage": MessageLookupByLibrary.simpleMessage(
            "Pour obtenir une clé d\'API, contactez \r\nl\'administrateur de l\'application"),
        "customBackNoKeyBody": MessageLookupByLibrary.simpleMessage(
            "Veuillez renseigner ou vérifier votre clé dans les paramètres."),
        "customBackNoKeyTitle": MessageLookupByLibrary.simpleMessage(
            "Pas de clé d\'API ou clé d\'API invalide"),
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
        "deleteAssetButton": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "deleteDialogContent": m2,
        "deleteDialogTitle":
            MessageLookupByLibrary.simpleMessage("Confirmer la suppression"),
        "distribution": MessageLookupByLibrary.simpleMessage("Répartition"),
        "emptyEmailError":
            MessageLookupByLibrary.simpleMessage("Vous devez saisir un email."),
        "emptyNameError":
            MessageLookupByLibrary.simpleMessage("Vous devez saisir un nom."),
        "emptyOtpError": MessageLookupByLibrary.simpleMessage(
            "Vous devez saisir un code secret."),
        "emptyPasswordError": MessageLookupByLibrary.simpleMessage(
            "Vous devez saisir un mot de passe."),
        "estimatedPrice":
            MessageLookupByLibrary.simpleMessage("Prix estimée : "),
        "exportButton":
            MessageLookupByLibrary.simpleMessage("Exporter les données"),
        "exportSuccessMessage":
            MessageLookupByLibrary.simpleMessage("Export réussi"),
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
        "fondsEuro": MessageLookupByLibrary.simpleMessage("Assurance vie"),
        "genericEmptyBody": MessageLookupByLibrary.simpleMessage(
            "Peut-être que vous n\'avez pas lié votre compte en banque avec Finary"),
        "genericEmptyTitle":
            MessageLookupByLibrary.simpleMessage("Aucune données trouvées"),
        "genericError": MessageLookupByLibrary.simpleMessage(
            "Une erreur inconnue est survenue."),
        "goldMetalType": MessageLookupByLibrary.simpleMessage("Or"),
        "importButton":
            MessageLookupByLibrary.simpleMessage("Importer les données"),
        "importSuccessMessage":
            MessageLookupByLibrary.simpleMessage("Import réussi"),
        "information": MessageLookupByLibrary.simpleMessage("Informations"),
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
        "metalDropdown": MessageLookupByLibrary.simpleMessage("Type de métal"),
        "name": MessageLookupByLibrary.simpleMessage("Nom"),
        "no": MessageLookupByLibrary.simpleMessage("Non"),
        "noPhysicalAssets": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez aucun métaux précieux. Ajoutez-en en appuyant sur le bouton en haut à droite"),
        "noResult": MessageLookupByLibrary.simpleMessage("Aucun résultat"),
        "numista": MessageLookupByLibrary.simpleMessage("Numista"),
        "numistaApiKeyField":
            MessageLookupByLibrary.simpleMessage("Clé d\'API"),
        "numistaApiKeyTooltip": MessageLookupByLibrary.simpleMessage(
            "Pour obtenir une clé d\'API, rendez-vous sur\r\n"),
        "numistaBadRequestBody": MessageLookupByLibrary.simpleMessage(
            "Valeur incorrecte ou paramètre obligagoire manquant"),
        "numistaBadRequestTitle":
            MessageLookupByLibrary.simpleMessage("Requête incorrecte"),
        "numistaCoinNotFoundBody": MessageLookupByLibrary.simpleMessage(
            "Vérifier que l\'ID fourni est correct"),
        "numistaCoinNotFoundTitle": MessageLookupByLibrary.simpleMessage(
            "La pièce n\'a pas été trouvée"),
        "numistaInvalidKeyBody": MessageLookupByLibrary.simpleMessage(
            "Vérifiez votre clé dans les paramètres"),
        "numistaInvalidKeyTitle": MessageLookupByLibrary.simpleMessage(
            "Clé d\'API manquante ou invalide"),
        "numistaWebsiteUrl":
            MessageLookupByLibrary.simpleMessage("https://fr.numista.com/api"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "other": MessageLookupByLibrary.simpleMessage("Autre"),
        "otherAssets": MessageLookupByLibrary.simpleMessage("Autre"),
        "otherMetalType": MessageLookupByLibrary.simpleMessage("Autre"),
        "otpTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Code secret"),
        "passwordTextFieldLabel":
            MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "physicalAssetCoinAlreadyExistsContent":
            MessageLookupByLibrary.simpleMessage(
                "Vous devez mettre à jour la pièce au lieu d\'en ajouter une nouvelle."),
        "physicalAssetCoinAlreadyExistsTitle":
            MessageLookupByLibrary.simpleMessage("La pièce existe déjà"),
        "physicalAssetDetailTitle":
            MessageLookupByLibrary.simpleMessage("Détail de l\'objet"),
        "physicalAssetItemAlreadyExistsContent":
            MessageLookupByLibrary.simpleMessage(
                "Vous devez renommer le nouvel objet ou mettre à jour l\'ancien."),
        "physicalAssetItemAlreadyExistsTitle":
            MessageLookupByLibrary.simpleMessage("L\'objet existe déjà"),
        "physicalAssetsDrawerItem":
            MessageLookupByLibrary.simpleMessage("Patrimoine physique"),
        "physicalAssetsPageTitle":
            MessageLookupByLibrary.simpleMessage("Mon patrimoine"),
        "physicalAssetsSettingsGoldFavorableRatioGSR":
            MessageLookupByLibrary.simpleMessage(
                "Favorable à l\'or lorsque inférieur à"),
        "physicalAssetsSettingsGoldFavorableRatioSPGR":
            MessageLookupByLibrary.simpleMessage(
                "Favorable à l\'or lorsque supérieur à"),
        "physicalAssetsSettingsGoldRatio":
            MessageLookupByLibrary.simpleMessage("Ratio de l\'or"),
        "physicalAssetsSettingsGoldToSilverRatio":
            MessageLookupByLibrary.simpleMessage("Ratio Or/Argent (GSR)"),
        "physicalAssetsSettingsSPFavorableRatioSPGR":
            MessageLookupByLibrary.simpleMessage(
                "Favorable au SP500 lorsque inférieur à"),
        "physicalAssetsSettingsSPRatio":
            MessageLookupByLibrary.simpleMessage("Ratio du SP500"),
        "physicalAssetsSettingsSPToGoldRatio":
            MessageLookupByLibrary.simpleMessage("Ratio SP500/Or (SPGR)"),
        "physicalAssetsSettingsSilverFavorableRatioGSR":
            MessageLookupByLibrary.simpleMessage(
                "Favorable à l\'argent lorsque supérieur à"),
        "physicalAssetsSettingsSilverRatio":
            MessageLookupByLibrary.simpleMessage("Ratio de l\'argent"),
        "possessed": MessageLookupByLibrary.simpleMessage("Détenu"),
        "preciousMetals":
            MessageLookupByLibrary.simpleMessage("Métaux Précieux"),
        "preciousMetalsAPIFailedBody": MessageLookupByLibrary.simpleMessage(
            "Une erreur est survenue lors de la récupération de la valeur des métaux. Vous pouvez toujours afficher le diagramme par poids"),
        "preciousMetalsAPIFailedTitle":
            MessageLookupByLibrary.simpleMessage("Aucune valeur disponible"),
        "preciousMetalsEmptyBody": MessageLookupByLibrary.simpleMessage(
            "Ajouter des métaux précieux dans l\'application et vous verrez le détail ici"),
        "preciousMetalsEmptyTitle": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez aucun métaux précieux"),
        "purity": MessageLookupByLibrary.simpleMessage("Pureté"),
        "quantityPossessed": MessageLookupByLibrary.simpleMessage("Possédé"),
        "raw": MessageLookupByLibrary.simpleMessage("Brut"),
        "realEstates": MessageLookupByLibrary.simpleMessage("Immobilier"),
        "savings": MessageLookupByLibrary.simpleMessage("Epargne"),
        "savingsAccounts":
            MessageLookupByLibrary.simpleMessage("Comptes d\'épargne"),
        "searchCoin":
            MessageLookupByLibrary.simpleMessage("Recherchez une pièce"),
        "sessionExpiredBody": MessageLookupByLibrary.simpleMessage(
            "Une authentification manuelle est nécessaire dans les paramètres de l\'application"),
        "sessionExpiredTitle": MessageLookupByLibrary.simpleMessage(
            "Aucune session trouvée ou session expirée"),
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
        "settingsPhysicalAssetsSubtitle":
            MessageLookupByLibrary.simpleMessage("Paramétrage des ratios"),
        "settingsPhysicalAssetsTitle":
            MessageLookupByLibrary.simpleMessage("Patrimoine physique"),
        "silverMetalType": MessageLookupByLibrary.simpleMessage("Argent"),
        "speculative": MessageLookupByLibrary.simpleMessage("Speculation"),
        "startups": MessageLookupByLibrary.simpleMessage("Startups"),
        "stocks": MessageLookupByLibrary.simpleMessage("Actions"),
        "stocksEmptyBody": MessageLookupByLibrary.simpleMessage(
            "Commencez à investir et vous verrez le détail ici"),
        "stocksEmptyTitle": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez aucunes actions"),
        "stocksLiquidity":
            MessageLookupByLibrary.simpleMessage("Compte liquidité actions"),
        "submit": MessageLookupByLibrary.simpleMessage("Envoyer"),
        "syncDaysAgo": m6,
        "syncHoursAgo": m7,
        "syncLabel": MessageLookupByLibrary.simpleMessage("Mis à jour"),
        "syncMinutesAgo": m8,
        "syncNow": MessageLookupByLibrary.simpleMessage("now"),
        "syncSecondsAgo": m9,
        "tooManyRequestsBody": MessageLookupByLibrary.simpleMessage(
            "Vous avez envoyé trop de requêtes simultanées ou avez atteint votre quota mensuel."),
        "tooManyRequestsTitle":
            MessageLookupByLibrary.simpleMessage("Trop de requêtes"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "totalWeight": MessageLookupByLibrary.simpleMessage("Poids total"),
        "unknownErrorBody":
            MessageLookupByLibrary.simpleMessage("Une erreur est survenue."),
        "unknownErrorTitle": MessageLookupByLibrary.simpleMessage("Erreur"),
        "updateAssetTitle":
            MessageLookupByLibrary.simpleMessage("Modifier le patrimoine"),
        "updateAssetsButton":
            MessageLookupByLibrary.simpleMessage("Mettre à jour"),
        "yes": MessageLookupByLibrary.simpleMessage("Oui")
      };
}
