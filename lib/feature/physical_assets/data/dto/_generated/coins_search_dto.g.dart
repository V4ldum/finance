// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../coins_search_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CoinsSearchDtoImpl _$$CoinsSearchDtoImplFromJson(Map<String, dynamic> json) =>
    _$CoinsSearchDtoImpl(
      coins: (json['query'] as List<dynamic>?)
              ?.map((e) => CoinDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$CoinsSearchDtoImplToJson(
        _$CoinsSearchDtoImpl instance) =>
    <String, dynamic>{
      'query': instance.coins,
    };
