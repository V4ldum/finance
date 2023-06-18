import 'package:finance/_l10n/generated/l10n.dart';
import 'package:meta_package/types.dart';

/// Exception thrown by the data source when an error occurs while getting a coin's details
class GetCoinDataException extends DisplayableException {
  /// Constructor for the [GetCoinDataException] when a 401 HTTP error occurs

  GetCoinDataException.unauthorized() : super(S.current.unauthorizedAccessTitle, S.current.unauthorizedAccessBody);

  /// Constructor for the [GetCoinDataException] when a 429 HTTP error occurs
  GetCoinDataException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  /// Constructor for the [GetCoinDataException] when an unknown error occurs
  GetCoinDataException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);
}
