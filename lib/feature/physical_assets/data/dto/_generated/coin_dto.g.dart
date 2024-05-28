// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../coin_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinDtoImpl _$$CoinDtoImplFromJson(Map<String, dynamic> json) =>
    _$CoinDtoImpl(
      id: (json['id'] as num).toInt(),
      numistaId: json['numista_id'] as String,
      name: json['name'] as String,
      weight: (json['weight'] as num).toDouble(),
      size: (json['size'] as num).toDouble(),
      thickness: (json['thickness'] as num?)?.toDouble(),
      minYear: json['min_year'] as String,
      maxYear: json['max_year'] as String? ?? '',
      composition:
          $enumDecode(_$PreciousMetalTypeDtoEnumMap, json['composition']),
      purity: (json['purity'] as num).toInt(),
      obverse: json['obverse'] == null
          ? null
          : CoinFaceDto.fromJson(json['obverse'] as Map<String, dynamic>),
      reverse: json['reverse'] == null
          ? null
          : CoinFaceDto.fromJson(json['reverse'] as Map<String, dynamic>),
      edge: json['edge'] == null
          ? null
          : CoinFaceDto.fromJson(json['edge'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CoinDtoImplToJson(_$CoinDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'numista_id': instance.numistaId,
      'name': instance.name,
      'weight': instance.weight,
      'size': instance.size,
      'thickness': instance.thickness,
      'min_year': instance.minYear,
      'max_year': instance.maxYear,
      'composition': _$PreciousMetalTypeDtoEnumMap[instance.composition]!,
      'purity': instance.purity,
      'obverse': instance.obverse,
      'reverse': instance.reverse,
      'edge': instance.edge,
    };

const _$PreciousMetalTypeDtoEnumMap = {
  PreciousMetalTypeDto.gold: 'GOLD',
  PreciousMetalTypeDto.silver: 'SILVER',
  PreciousMetalTypeDto.other: 'OTHER',
};

_$CoinFaceDtoImpl _$$CoinFaceDtoImplFromJson(Map<String, dynamic> json) =>
    _$CoinFaceDtoImpl(
      image: json['image_url'] as String? ?? '',
      thumbnail: json['thumbnail_url'] as String? ?? '',
      lettering: json['lettering'] as String? ?? '',
      description: json['description'] as String? ?? '',
      copyright: json['copyright'] as String? ?? '',
    );

Map<String, dynamic> _$$CoinFaceDtoImplToJson(_$CoinFaceDtoImpl instance) =>
    <String, dynamic>{
      'image_url': instance.image,
      'thumbnail_url': instance.thumbnail,
      'lettering': instance.lettering,
      'description': instance.description,
      'copyright': instance.copyright,
    };
