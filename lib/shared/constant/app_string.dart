import 'package:intl/intl.dart';

class AppString {
  AppString._();

  static const numistaApiKeyUrl = 'https://numista.com/api';
  static const numistaApiUrl = 'https://api.numista.com/api/v3';
  static const numistaKeyHeader = 'Numista-API-Key';
  static String numistaCoinPageUrl(String id) =>
      'https://${Intl.getCurrentLocale().startsWith('fr') ? 'fr' : 'en'}.numista.com/catalogue/pieces$id.html';

  static const finaryApiUrl = 'https://api.finary.com';
  static const finaryAppUrl = 'https://app.finary.com';
  static const finaryClerkApiUrl = 'https://clerk.finary.com';

  static const preciousMetalTradeValueApi = 'https://kitco-gcdn-prod.stellate.sh/';
}
