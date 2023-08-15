import 'package:meta_package/types.dart';

class CoinEntity {
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

  final int id;
  final String name;
  final Option<int> minYear;
  final Option<int> maxYear;
  final bool isDemonetized;
  final Option<String> composition;
  final Option<double> weight; // g
  final Option<double> size; // mm
  final Option<double> thickness; // mm
  final Option<CoinFaceEntity> obverse;
  final Option<CoinFaceEntity> reverse;
  final Option<CoinFaceEntity> edge;
  final Option<CoinFaceEntity> watermark;
  final Option<String> series;
}

class CoinFaceEntity {
  CoinFaceEntity({
    required this.lettering,
    required this.pictureUrl,
    required this.thumbnailUrl,
  });

  final Option<String> lettering;
  final Option<String> pictureUrl;
  final Option<String> thumbnailUrl;
}
