import 'package:finance/_l10n/generated/l10n.dart';
import 'package:meta_package/meta_package.dart';

class FinaryAPIException extends DisplayableException {
  FinaryAPIException.unauthorized() : super(S.current.sessionExpiredTitle, S.current.sessionExpiredBody);

  FinaryAPIException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  FinaryAPIException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);
}
