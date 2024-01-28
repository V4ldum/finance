// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../geographical_repartition_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeographicalRepartitionDtoImpl _$$GeographicalRepartitionDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$GeographicalRepartitionDtoImpl(
      result: GeographicalRepartitionResultDto.fromJson(
          json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeographicalRepartitionDtoImplToJson(
        _$GeographicalRepartitionDtoImpl instance) =>
    <String, dynamic>{
      'result': instance.result,
    };

_$GeographicalRepartitionResultDtoImpl
    _$$GeographicalRepartitionResultDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$GeographicalRepartitionResultDtoImpl(
          total: (json['total'] as num).toDouble(),
          distribution: (json['distribution'] as List<dynamic>)
              .map((e) => GeographicalRepartitionDistributionItemDto.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$GeographicalRepartitionResultDtoImplToJson(
        _$GeographicalRepartitionResultDtoImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'distribution': instance.distribution,
    };

_$GeographicalRepartitionDistributionItemDtoImpl
    _$$GeographicalRepartitionDistributionItemDtoImplFromJson(
            Map<String, dynamic> json) =>
        _$GeographicalRepartitionDistributionItemDtoImpl(
          label: json['label'] as String,
          amount: (json['amount'] as num).toDouble(),
          share: (json['share'] as num).toDouble(),
        );

Map<String, dynamic> _$$GeographicalRepartitionDistributionItemDtoImplToJson(
        _$GeographicalRepartitionDistributionItemDtoImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
      'share': instance.share,
    };
