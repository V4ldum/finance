// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../coins_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoinsQueryModel _$CoinsQueryModelFromJson(Map<String, dynamic> json) =>
    CoinsQueryModel(
      count: json['count'] as int? ?? 0,
      coins: (json['types'] as List<dynamic>?)
              ?.map(
                  (e) => CoinQueryItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$CoinsQueryModelToJson(CoinsQueryModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'types': instance.coins,
    };

CoinQueryItemModel _$CoinQueryItemModelFromJson(Map<String, dynamic> json) =>
    CoinQueryItemModel(
      id: json['id'] as int,
      title: json['title'] as String? ?? '',
      minYear: json['min_year'] as int?,
      maxYear: json['max_year'] as int?,
      obverseThumbnailUrl: json['obverse_thumbnail'] as String? ?? '',
      reverseThumbnailUrl: json['reverse_thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$CoinQueryItemModelToJson(CoinQueryItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'min_year': instance.minYear,
      'max_year': instance.maxYear,
      'obverse_thumbnail': instance.obverseThumbnailUrl,
      'reverse_thumbnail': instance.reverseThumbnailUrl,
    };
