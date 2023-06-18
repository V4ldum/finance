// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../coin_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinDataModel _$CoinDataModelFromJson(Map<String, dynamic> json) =>
    CoinDataModel(
      id: json['id'] as int,
      title: json['title'] as String,
      minYear: json['min_year'] as int?,
      maxYear: json['max_year'] as int?,
      demonetization: json['demonetization'] == null
          ? null
          : CoinDataDemonetizationModel.fromJson(
              json['demonetization'] as Map<String, dynamic>),
      composition: json['composition'] == null
          ? null
          : CoinDataCompositionModel.fromJson(
              json['composition'] as Map<String, dynamic>),
      weight: (json['weight'] as num?)?.toDouble(),
      size: (json['size'] as num?)?.toDouble(),
      thickness: (json['thickness'] as num?)?.toDouble(),
      obverse: json['obverse'] == null
          ? null
          : CoinDataCoinFaceModel.fromJson(
              json['obverse'] as Map<String, dynamic>),
      reverse: json['reverse'] == null
          ? null
          : CoinDataCoinFaceModel.fromJson(
              json['reverse'] as Map<String, dynamic>),
      edge: json['edge'] == null
          ? null
          : CoinDataCoinFaceModel.fromJson(
              json['edge'] as Map<String, dynamic>),
      watermark: json['watermark'] == null
          ? null
          : CoinDataCoinFaceModel.fromJson(
              json['watermark'] as Map<String, dynamic>),
      series: json['series'] as String?,
    );

Map<String, dynamic> _$CoinDataModelToJson(CoinDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
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

CoinDataCompositionModel _$CoinDataCompositionModelFromJson(
        Map<String, dynamic> json) =>
    CoinDataCompositionModel(
      text: json['text'] as String,
    );

Map<String, dynamic> _$CoinDataCompositionModelToJson(
        CoinDataCompositionModel instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

CoinDataDemonetizationModel _$CoinDataDemonetizationModelFromJson(
        Map<String, dynamic> json) =>
    CoinDataDemonetizationModel(
      isDemonetized: json['is_demonetized'] as bool,
      demonetizationDate: json['demonetization_date'] as String?,
    );

Map<String, dynamic> _$CoinDataDemonetizationModelToJson(
        CoinDataDemonetizationModel instance) =>
    <String, dynamic>{
      'is_demonetized': instance.isDemonetized,
      'demonetization_date': instance.demonetizationDate,
    };

CoinDataCoinFaceModel _$CoinDataCoinFaceModelFromJson(
        Map<String, dynamic> json) =>
    CoinDataCoinFaceModel(
      lettering: json['lettering'] as String?,
      pictureUrl: json['picture'] as String? ?? '',
      thumbnailUrl: json['thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$CoinDataCoinFaceModelToJson(
        CoinDataCoinFaceModel instance) =>
    <String, dynamic>{
      'lettering': instance.lettering,
      'picture': instance.pictureUrl,
      'thumbnail': instance.thumbnailUrl,
    };
