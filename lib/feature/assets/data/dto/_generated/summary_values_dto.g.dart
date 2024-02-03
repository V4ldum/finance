// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../summary_values_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SummaryValuesDtoImpl _$$SummaryValuesDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SummaryValuesDtoImpl(
      amount: (json['amount'] as num).toDouble(),
      evolution: (json['evolution'] as num).toDouble(),
      evolutionPercent: (json['evolution_percent'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$SummaryValuesDtoImplToJson(
        _$SummaryValuesDtoImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'evolution': instance.evolution,
      'evolution_percent': instance.evolutionPercent,
    };
