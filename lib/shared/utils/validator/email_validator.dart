import 'package:finance/_l10n/_generated/l10n.dart';

class EmailValidator {
  EmailValidator._();

  static const String _emailRegExp =
      r'''[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?''';

  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.emptyEmailError;
    }
    if (!RegExp(_emailRegExp).hasMatch(value)) {
      return S.current.invalidEmailError;
    }
    return null;
  }
}
