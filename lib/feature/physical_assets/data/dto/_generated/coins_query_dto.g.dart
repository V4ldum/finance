// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../coins_query_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinsQueryDtoImpl _$$CoinsQueryDtoImplFromJson(Map<String, dynamic> json) =>
    _$CoinsQueryDtoImpl(
      coins: (json['types'] as List<dynamic>?)
              ?.map((e) => CoinQueryItemDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$CoinsQueryDtoImplToJson(_$CoinsQueryDtoImpl instance) =>
    <String, dynamic>{
      'types': instance.coins,
    };

_$CoinQueryItemDtoImpl _$$CoinQueryItemDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$CoinQueryItemDtoImpl(
      id: json['id'] as int? ?? 0,
      name: json['title'] as String? ?? '',
      minYear: json['min_year'] as int?,
      maxYear: json['max_year'] as int?,
      obverseThumbnailUrl: json['obverse_thumbnail'] as String? ?? '',
      reverseThumbnailUrl: json['reverse_thumbnail'] as String? ?? '',
    );

Map<String, dynamic> _$$CoinQueryItemDtoImplToJson(
        _$CoinQueryItemDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.name,
      'min_year': instance.minYear,
      'max_year': instance.maxYear,
      'obverse_thumbnail': instance.obverseThumbnailUrl,
      'reverse_thumbnail': instance.reverseThumbnailUrl,
    };
