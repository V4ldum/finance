import 'package:meta_package/types.dart';

/// Entity representir a coin
/// It has all the necessary data that could be needed
class CoinEntity {
  /// Constructor for a [CoinEntity]
  CoinEntity({
    required this.id,
    required this.name,
    required this.minYear,
    required this.maxYear,
    required this.isDemonetized,
    required this.composition,
    required this.weight,
    required this.size,
    required this.thickness,
    required this.obverse,
    required this.reverse,
    required this.edge,
    required this.watermark,
    required this.series,
  });

  /// The id of the coin
  final int id;

  /// the name of the coin
  final String name;

  /// The coin's first year in circulation
  final Option<int> minYear;

  /// The coin's last year in circulation
  final Option<int> maxYear;

  /// Whether the coin is demonetized
  final bool isDemonetized;

  /// The coin's composition
  final Option<String> composition;

  /// The coin's weight in grams
  final Option<double> weight; // g

  /// The coin's diameter in millimeters
  final Option<double> size; // mm

  /// The coin's thickness in millimeters
  final Option<double> thickness; // mm

  /// Information about the oberse of the coin
  final Option<CoinFaceEntity> obverse;

  /// Information about the reverse of the coin
  final Option<CoinFaceEntity> reverse;

  /// Information about the edge of the coin
  final Option<CoinFaceEntity> edge;

  /// Information about the watermark of the coin
  final Option<CoinFaceEntity> watermark;

  /// The series of the coin
  final Option<String> series;
}

/// Entity used by [CoinEntity] to store information about a specific face
/// Can be obverse, reverse, edge or watermark
class CoinFaceEntity {
  /// Constructor for a [CoinFaceEntity]
  CoinFaceEntity({
    required this.lettering,
    required this.pictureUrl,
    required this.thumbnailUrl,
  });

  /// The text seen on the face of the coin
  final Option<String> lettering;

  /// An URL to the face's image
  final Option<String> pictureUrl;

  /// An URL to the face's thumbnail (a smaller image than [pictureUrl])
  final Option<String> thumbnailUrl;
}
