import 'package:finance/_l10n/generated/l10n.dart';
import 'package:meta_package/types.dart';

/// Exception thrown by the data source when an error occurs while searching for coins
class SearchCoinsException extends DisplayableException {
  /// Constructor for the [SearchCoinsException] when a 401 HTTP error occurs
  SearchCoinsException.unauthorized() : super(S.current.unauthorizedAccessTitle, S.current.unauthorizedAccessBody);

  /// Constructor for the [SearchCoinsException] when a 429 HTTP error occurs
  SearchCoinsException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  /// Constructor for the [SearchCoinsException] when an unknown error occurs
  SearchCoinsException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);
}
