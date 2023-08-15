import 'package:finance/_l10n/generated/l10n.dart';
import 'package:meta_package/types.dart';

class GetCoinDataException extends DisplayableException {
  GetCoinDataException.unauthorized() : super(S.current.unauthorizedAccessTitle, S.current.unauthorizedAccessBody);
  GetCoinDataException.tooManyRequests() : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);
  GetCoinDataException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);
}
