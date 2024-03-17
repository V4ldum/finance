import 'package:finance/_l10n/_generated/l10n.dart';

class StringValidator {
  StringValidator._();

  static String? validatePasswordEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.emptyPasswordError;
    }
    return null;
  }

  static String? validateEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.emptyNameError;
    }
    return null;
  }

  static String? validateOnlyNumbers(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.emptyOtpError;
    }
    if (num.tryParse(value) == null) {
      return S.current.invalidOtpError;
    }
    return null;
  }
}
