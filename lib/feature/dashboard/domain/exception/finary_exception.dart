import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:meta_package/meta_package.dart';

class FinaryException extends DisplayableException {
  FinaryException.unauthorized() : super(S.current.sessionExpiredTitle, S.current.sessionExpiredBody);

  FinaryException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  FinaryException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);

  factory FinaryException.fromStatusCode(int? statusCode) {
    return switch (statusCode) {
      401 => FinaryException.unauthorized(),
      429 => FinaryException.tooManyRequests(),
      _ => FinaryException.unknown(),
    };
  }
}
