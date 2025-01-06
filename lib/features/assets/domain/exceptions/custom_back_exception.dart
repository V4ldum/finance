import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:meta_package/meta_package.dart';

class CustomBackException extends DisplayableException {
  CustomBackException.badRequest()
      : super(S.current.physicalAssetCoinAlreadyExistsTitle, S.current.physicalAssetCoinAlreadyExistsContent);

  CustomBackException.unauthorized() : super(S.current.customBackNoKeyTitle, S.current.customBackNoKeyBody);

  CustomBackException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);

  factory CustomBackException.fromStatusCode(int? statusCode) {
    return switch (statusCode) {
      400 => CustomBackException.badRequest(),
      401 => CustomBackException.unauthorized(),
      _ => CustomBackException.unknown(),
    };
  }
}
