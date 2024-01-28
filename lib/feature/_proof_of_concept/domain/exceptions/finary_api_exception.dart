import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:meta_package/meta_package.dart';

class FinaryAPIException extends DisplayableException {
  FinaryAPIException.unauthorized() : super(S.current.authenticationFailedTitle, S.current.authenticationFailedBody);

  FinaryAPIException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  FinaryAPIException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);
}
