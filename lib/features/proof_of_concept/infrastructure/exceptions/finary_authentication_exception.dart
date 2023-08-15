import 'package:finance/_l10n/generated/l10n.dart';
import 'package:meta_package/types.dart';

class FinaryAuthenticationException extends DisplayableException {
  FinaryAuthenticationException.unauthorized()
      : super(S.current.invalidUsernameOrPasswordTitle, S.current.invalidUsernameOrPasswordBody);

  FinaryAuthenticationException.tooManyRequests()
      : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  FinaryAuthenticationException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);
}
