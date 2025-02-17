import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:meta_package/meta_package.dart';

class FinaryAuthenticationException extends DisplayableException {
  FinaryAuthenticationException.badRequest()
    : super(S.current.authenticationOtpFailedTitle, S.current.authenticationOtpFailedBody);

  FinaryAuthenticationException.unauthorized()
    : super(S.current.authenticationFailedTitle, S.current.authenticationFailedBody);

  FinaryAuthenticationException.tooManyRequests()
    : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  FinaryAuthenticationException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);

  factory FinaryAuthenticationException.fromStatusCode(int? statusCode) {
    return switch (statusCode) {
      400 => FinaryAuthenticationException.badRequest(),
      //401 => FinaryAuthenticationException.unauthorized(),
      422 => FinaryAuthenticationException.unauthorized(),
      429 => FinaryAuthenticationException.tooManyRequests(),
      _ => FinaryAuthenticationException.unknown(),
    };
  }
}
