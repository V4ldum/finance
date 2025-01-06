import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:meta_package/meta_package.dart';

class NumistaException extends DisplayableException {
  NumistaException.badRequest() : super(S.current.numistaBadRequestTitle, S.current.numistaBadRequestBody);

  NumistaException.unauthorized() : super(S.current.numistaInvalidKeyTitle, S.current.numistaInvalidKeyBody);

  NumistaException.notFound() : super(S.current.numistaCoinNotFoundTitle, S.current.numistaCoinNotFoundBody);

  NumistaException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  NumistaException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);

  factory NumistaException.fromStatusCode(int? statusCode) {
    return switch (statusCode) {
      400 => NumistaException.badRequest(),
      401 => NumistaException.unauthorized(),
      404 => NumistaException.notFound(),
      429 => NumistaException.tooManyRequests(),
      _ => NumistaException.unknown(),
    };
  }
}
