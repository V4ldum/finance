import 'package:meta_package/types.dart';

class CoinSummaryEntity {
  CoinSummaryEntity({
    required this.id,
    required this.name,
    required this.minYear,
    required this.maxYear,
    required this.obverseThumbnailUrl,
    required this.reverseThumbnailUrl,
  });

  final int id;
  final String name;
  final Option<int> minYear;
  final Option<int> maxYear;
  final Option<String> obverseThumbnailUrl;
  final Option<String> reverseThumbnailUrl;
}
