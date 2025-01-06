import 'package:intl/intl.dart';

class AppString {
  AppString._();

  static String numistaCoinPageUrl(String id) =>
      'https://${Intl.getCurrentLocale().startsWith('fr') ? 'fr' : 'en'}.numista.com/catalogue/pieces$id.html';

  static const finaryApiUrl = 'https://api.finary.com';
  static const finaryAppUrl = 'https://app.finary.com';
  static const finaryClerkApiUrl = 'https://clerk.finary.com';

  static const preciousMetalTradeValueApi = 'https://finance.valdum.dev/api';
  static const physicalAssetsApi = 'https://finance.valdum.dev/api';
  static const customBackHeader = 'X-API-KEY';
}
