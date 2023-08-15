import 'package:finance/_l10n/generated/l10n.dart';
import 'package:meta_package/types.dart';

class SearchCoinsException extends DisplayableException {
  SearchCoinsException.unauthorized() : super(S.current.unauthorizedAccessTitle, S.current.unauthorizedAccessBody);
  SearchCoinsException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);
  SearchCoinsException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);
}
