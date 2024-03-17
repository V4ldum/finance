import 'package:finance/feature/physical_assets/data/dto/coin_data_dto.dart';

class CoinDataModel {
  CoinDataModel({
    required this.id,
    required this.name,
    required this.minYear,
    required this.maxYear,
    required this.demonetization,
    required this.composition,
    required this.weight, // g
    required this.size, // mm
    required this.thickness, // mm
    required this.obverse,
    required this.reverse,
    required this.edge,
    required this.watermark,
    required this.series,
  });

  factory CoinDataModel.fromDto(CoinDataDto dto) {
    return CoinDataModel(
      id: dto.id,
      name: dto.name,
      minYear: dto.minYear.toString(),
      maxYear: dto.maxYear.toString(),
      demonetization: dto.demonetization != null ? CoinDataDemonetizationModel.fromDto(dto.demonetization!) : null,
      composition: dto.composition?.text ?? '',
      weight: dto.weight,
      size: dto.size,
      thickness: dto.thickness,
      obverse: dto.obverse != null ? CoinDataCoinFaceModel.fromDto(dto.obverse!) : null,
      reverse: dto.reverse != null ? CoinDataCoinFaceModel.fromDto(dto.reverse!) : null,
      edge: dto.edge != null ? CoinDataCoinFaceModel.fromDto(dto.edge!) : null,
      watermark: dto.watermark != null ? CoinDataCoinFaceModel.fromDto(dto.watermark!) : null,
      series: dto.series,
    );
  }

  final int id;
  final String name;
  final String minYear;
  final String maxYear;
  final CoinDataDemonetizationModel? demonetization;
  final String composition;
  final double? weight; // g
  final double? size; // mm
  final double? thickness; // mm
  final CoinDataCoinFaceModel? obverse;
  final CoinDataCoinFaceModel? reverse;
  final CoinDataCoinFaceModel? edge;
  final CoinDataCoinFaceModel? watermark;
  final String series;
}

class CoinDataDemonetizationModel {
  CoinDataDemonetizationModel({
    required this.isDemonetized,
    required this.date,
  });

  factory CoinDataDemonetizationModel.fromDto(CoinDataDemonetizationDto dto) {
    return CoinDataDemonetizationModel(
      isDemonetized: dto.isDemonetized,
      date: dto.demonetizationDate,
    );
  }

  final bool isDemonetized;
  final String date;
}

class CoinDataCoinFaceModel {
  CoinDataCoinFaceModel({
    required this.lettering,
    required this.description,
    required this.pictureUrl,
    required this.thumbnailUrl,
    required this.copyright,
  });

  factory CoinDataCoinFaceModel.fromDto(CoinDataCoinFaceDto dto) {
    return CoinDataCoinFaceModel(
      lettering: dto.lettering,
      description: dto.description,
      pictureUrl: dto.pictureUrl,
      thumbnailUrl: dto.thumbnailUrl,
      copyright: dto.copyright,
    );
  }

  final String lettering;
  final String description;
  final String pictureUrl;
  final String thumbnailUrl;
  final String copyright;
}
