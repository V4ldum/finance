import 'package:finance/feature/_proof_of_concept/infrastructure/dto/coin_data_model.dart';

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
      minYear: dto.minYear?.toString() ?? '',
      maxYear: dto.maxYear?.toString() ?? '',
      isDemonetized: dto.demonetization?.isDemonetized ?? false,
      composition: dto.composition?.text ?? '',
      weight: dto.weight ?? 0,
      size: dto.size ?? 0,
      thickness: dto.thickness ?? 0,
      obverse: dto.obverse != null ? CoinFaceEntity.fromDto(dto.obverse!) : null,
      reverse: dto.reverse != null ? CoinFaceEntity.fromDto(dto.reverse!) : null,
      edge: dto.edge != null ? CoinFaceEntity.fromDto(dto.edge!) : null,
      watermark: dto.watermark != null ? CoinFaceEntity.fromDto(dto.watermark!) : null,
      series: dto.series ?? '',
    );
  }

  final int id;
  final String name;
  final String minYear;
  final String maxYear;
  final bool isDemonetized;
  final String composition;
  final double weight; // g
  final double size; // mm
  final double thickness; // mm
  final CoinFaceEntity? obverse;
  final CoinFaceEntity? reverse;
  final CoinFaceEntity? edge;
  final CoinFaceEntity? watermark;
  final String series;
}

class CoinFaceEntity {
  CoinFaceEntity({
    required this.lettering,
    required this.pictureUrl,
    required this.thumbnailUrl,
  });

  factory CoinFaceEntity.fromDto(CoinDataCoinFaceModel dto) {
    return CoinFaceEntity(
      lettering: dto.lettering ?? '',
      pictureUrl: dto.pictureUrl ?? '',
      thumbnailUrl: dto.thumbnailUrl ?? '',
    );
  }

  final String lettering;
  final String pictureUrl;
  final String thumbnailUrl;
}
