import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:meta_package/meta_package.dart';

class PreciousMetalsTradeValueException extends DisplayableException {
  PreciousMetalsTradeValueException.tooManyRequests()
      : super(S.current.tooManyRequestsTitle, S.current.tooManyRequestsBody);

  PreciousMetalsTradeValueException.unknown() : super(S.current.unknownErrorTitle, S.current.unknownErrorBody);

  factory PreciousMetalsTradeValueException.fromStatusCode(int? statusCode) {
    return switch (statusCode) {
      429 => PreciousMetalsTradeValueException.tooManyRequests(),
      _ => PreciousMetalsTradeValueException.unknown(),
    };
  }
}
