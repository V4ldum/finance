// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../coin_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinDataDtoImpl _$$CoinDataDtoImplFromJson(Map<String, dynamic> json) =>
    _$CoinDataDtoImpl(
      id: json['id'] as int,
      name: json['title'] as String? ?? '',
      minYear: json['min_year'] as int?,
      maxYear: json['max_year'] as int?,
      demonetization: json['demonetization'] == null
          ? null
          : CoinDataDemonetizationDto.fromJson(
              json['demonetization'] as Map<String, dynamic>),
      composition: json['composition'] == null
          ? null
          : CoinDataCompositionDto.fromJson(
              json['composition'] as Map<String, dynamic>),
      weight: (json['weight'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      thickness: (json['thickness'] as num?)?.toDouble(),
      obverse: json['obverse'] == null
          ? null
          : CoinDataCoinFaceDto.fromJson(
              json['obverse'] as Map<String, dynamic>),
      reverse: json['reverse'] == null
          ? null
          : CoinDataCoinFaceDto.fromJson(
              json['reverse'] as Map<String, dynamic>),
      edge: json['edge'] == null
          ? null
          : CoinDataCoinFaceDto.fromJson(json['edge'] as Map<String, dynamic>),
      watermark: json['watermark'] == null
          ? null
          : CoinDataCoinFaceDto.fromJson(
              json['watermark'] as Map<String, dynamic>),
      series: json['series'] as String? ?? '',
    );

Map<String, dynamic> _$$CoinDataDtoImplToJson(_$CoinDataDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'min_year': instance.minYear,
      'max_year': instance.maxYear,
      'demonetization': instance.demonetization,
      'composition': instance.composition,
      'weight': instance.weight,
      'size': instance.size,
      'thickness': instance.thickness,
      'obverse': instance.obverse,
      'reverse': instance.reverse,
      'edge': instance.edge,
      'watermark': instance.watermark,
      'series': instance.series,
    };

_$CoinDataCompositionDtoImpl _$$CoinDataCompositionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinDataCompositionDtoImpl(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$CoinDataCompositionDtoImplToJson(
        _$CoinDataCompositionDtoImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

_$CoinDataDemonetizationDtoImpl _$$CoinDataDemonetizationDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinDataDemonetizationDtoImpl(
      isDemonetized: json['is_demonetized'] as bool,
      demonetizationDate: json['demonetization_date'] as String? ?? '',
    );

Map<String, dynamic> _$$CoinDataDemonetizationDtoImplToJson(
        _$CoinDataDemonetizationDtoImpl instance) =>
    <String, dynamic>{
      'is_demonetized': instance.isDemonetized,
      'demonetization_date': instance.demonetizationDate,
    };

_$CoinDataCoinFaceDtoImpl _$$CoinDataCoinFaceDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinDataCoinFaceDtoImpl(
      lettering: json['lettering'] as String? ?? '',
      description: json['description'] as String? ?? '',
      pictureUrl: json['picture'] as String? ?? '',
      thumbnailUrl: json['thumbnail'] as String? ?? '',
      copyright: json['picture_copyright'] as String? ?? '',
    );

Map<String, dynamic> _$$CoinDataCoinFaceDtoImplToJson(
        _$CoinDataCoinFaceDtoImpl instance) =>
    <String, dynamic>{
      'lettering': instance.lettering,
      'description': instance.description,
      'picture': instance.pictureUrl,
      'thumbnail': instance.thumbnailUrl,
      'picture_copyright': instance.copyright,
    };
