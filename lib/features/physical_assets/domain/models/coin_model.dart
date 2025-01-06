import 'package:finance/features/assets/data/dtos/precious_metal_type_dto.dart';
import 'package:finance/features/physical_assets/data/dtos/coin_dto.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';

class CoinModel {
  CoinModel({
    required this.id,
    required this.numistaId,
    required this.name,
    required this.weight, // g
    required this.size, // mm
    required this.thickness, // mm
    required this.minYear,
    required this.maxYear,
    required this.composition,
    required this.purity,
    required this.obverse,
    required this.reverse,
    required this.edge,
  });

  factory CoinModel.fromDto(CoinDto dto) {
    return CoinModel(
      id: dto.id.toString(),
      numistaId: dto.numistaId,
      name: dto.name,
      weight: dto.weight,
      size: dto.size,
      thickness: dto.thickness,
      minYear: dto.minYear,
      maxYear: dto.maxYear,
      composition: switch (dto.composition) {
        PreciousMetalTypeDto.gold => PreciousMetalTypeModel.gold,
        PreciousMetalTypeDto.silver => PreciousMetalTypeModel.silver,
        PreciousMetalTypeDto.other => PreciousMetalTypeModel.other,
      },
      purity: dto.purity,
      obverse: dto.obverse != null ? CoinFaceModel.fromDto(dto.obverse!) : null,
      reverse: dto.reverse != null ? CoinFaceModel.fromDto(dto.reverse!) : null,
      edge: dto.edge != null ? CoinFaceModel.fromDto(dto.edge!) : null,
    );
  }

  final String id;
  final String numistaId;
  final String name;
  final double? weight; // g
  final double? size; // mm
  final double? thickness; // mm
  final String minYear;
  final String maxYear;
  final PreciousMetalTypeModel composition;
  final int purity;
  final CoinFaceModel? obverse;
  final CoinFaceModel? reverse;
  final CoinFaceModel? edge;
}

class CoinFaceModel {
  CoinFaceModel({
    required this.lettering,
    required this.description,
    required this.pictureUrl,
    required this.thumbnailUrl,
    required this.copyright,
  });

  factory CoinFaceModel.fromDto(CoinFaceDto dto) {
    return CoinFaceModel(
      lettering: dto.lettering,
      description: dto.description,
      pictureUrl: dto.image,
      thumbnailUrl: dto.thumbnail,
      copyright: dto.copyright,
    );
  }

  final String lettering;
  final String description;
  final String pictureUrl;
  final String thumbnailUrl;
  final String copyright;
}
