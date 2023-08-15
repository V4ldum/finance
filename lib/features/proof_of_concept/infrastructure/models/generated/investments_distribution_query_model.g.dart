// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../investments_distribution_query_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvestmentsDistributionQueryModel _$InvestmentsDistributionQueryModelFromJson(
        Map<String, dynamic> json) =>
    InvestmentsDistributionQueryModel(
      items: (json['distribution'] as List<dynamic>?)
              ?.map((e) => InvestmentsDistributionItemModel.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$InvestmentsDistributionQueryModelToJson(
        InvestmentsDistributionQueryModel instance) =>
    <String, dynamic>{
      'distribution': instance.items,
    };

InvestmentsDistributionItemModel _$InvestmentsDistributionItemModelFromJson(
        Map<String, dynamic> json) =>
    InvestmentsDistributionItemModel(
      label: json['label'] as String,
      amount: (json['amount'] as num).toDouble(),
      share: (json['share'] as num).toDouble(),
    );

Map<String, dynamic> _$InvestmentsDistributionItemModelToJson(
        InvestmentsDistributionItemModel instance) =>
    <String, dynamic>{
      'label': instance.label,
      'amount': instance.amount,
      'share': instance.share,
    };
