import 'package:finance/features/proof_of_concept/infrastructure/dto/coin_data_model.dart';
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

  factory CoinEntity.fromDto(CoinDataModel dto) {
    return CoinEntity(
      id: dto.id,
      name: dto.title,
      minYear: Option.instance(dto.minYear),
      maxYear: Option.instance(dto.maxYear),
      isDemonetized: dto.demonetization?.isDemonetized ?? false,
      composition: Option.instance(dto.composition?.text),
      weight: Option.instance(dto.weight),
      size: Option.instance(dto.size),
      thickness: Option.instance(dto.thickness),
      obverse: dto.obverse != null ? Some(CoinFaceEntity.fromDto(dto.obverse!)) : None(),
      reverse: dto.reverse != null ? Some(CoinFaceEntity.fromDto(dto.reverse!)) : None(),
      edge: dto.edge != null ? Some(CoinFaceEntity.fromDto(dto.edge!)) : None(),
      watermark: dto.watermark != null ? Some(CoinFaceEntity.fromDto(dto.watermark!)) : None(),
      series: Option.instance(dto.series),
    );
  }

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

  factory CoinFaceEntity.fromDto(CoinDataCoinFaceModel dto) {
    return CoinFaceEntity(
      lettering: Option.instance(dto.lettering),
      pictureUrl: Option.instance(dto.pictureUrl),
      thumbnailUrl: Option.instance(dto.thumbnailUrl),
    );
  }

  final Option<String> lettering;
  final Option<String> pictureUrl;
  final Option<String> thumbnailUrl;
}
