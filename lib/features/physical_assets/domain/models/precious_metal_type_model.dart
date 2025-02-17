import 'package:finance/_l10n/_generated/l10n.dart';

enum PreciousMetalTypeModel { gold, silver, other }

extension PreciousMetalTypeModelExtension on PreciousMetalTypeModel {
  String toIntlString() {
    return switch (this) {
      PreciousMetalTypeModel.gold => S.current.goldMetalType,
      PreciousMetalTypeModel.silver => S.current.silverMetalType,
      PreciousMetalTypeModel.other => S.current.otherMetalType,
    };
  }
}
