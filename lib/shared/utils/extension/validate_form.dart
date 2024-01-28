import 'package:flutter/widgets.dart';

extension ValidateForm on GlobalKey<FormState> {
  bool get isFormValid => currentState!.validate();
}
