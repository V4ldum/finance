import 'package:meta_package/types.dart';

/// Entity representing the summary of a coin.
/// It has the minimal information to show it in a list of coins
class CoinSummaryEntity {
  /// Constructor for a [CoinSummaryEntity]
  CoinSummaryEntity({
    required this.id,
    required this.name,
    required this.minYear,
    required this.maxYear,
    required this.obverseThumbnailUrl,
    required this.reverseThumbnailUrl,
  });

  /// The id of the coin
  final int id;

  /// The name of the coin
  final String name;

  /// The coin's first year in circulation
  final Option<int> minYear;

  /// The coin's last year in circulation
  final Option<int> maxYear;

  /// An URL to the obverse's image
  final Option<String> obverseThumbnailUrl;

  /// An URL to the reverse's image
  final Option<String> reverseThumbnailUrl;
}
