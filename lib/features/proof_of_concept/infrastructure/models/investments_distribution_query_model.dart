import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/domain/entities/entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'generated/investments_distribution_query_model.g.dart';

@JsonSerializable()
class InvestmentsDistributionQueryModel {
  InvestmentsDistributionQueryModel({
    required this.items,
  });

  factory InvestmentsDistributionQueryModel.fromJson(Map<String, dynamic> json) =>
      _$InvestmentsDistributionQueryModelFromJson(json);

  factory InvestmentsDistributionQueryModel.fromHttpResponse(Response<Map<String, dynamic>> response) {
    return InvestmentsDistributionQueryModel.fromJson(response.data!['result'] as Map<String, dynamic>);
  }

  @JsonKey(name: 'distribution', defaultValue: [])
  final List<InvestmentsDistributionItemModel> items;

  Map<String, dynamic> toJson() => _$InvestmentsDistributionQueryModelToJson(this);

  List<InvestmentsDistributionItemEntity> toEntity() {
    return items.map((e) => e.toEntity()).toList();
  }
}

@JsonSerializable()
class InvestmentsDistributionItemModel {
  InvestmentsDistributionItemModel({
    required this.label,
    required this.amount,
    required this.share,
  });

  factory InvestmentsDistributionItemModel.fromJson(Map<String, dynamic> json) =>
      _$InvestmentsDistributionItemModelFromJson(json);

  @JsonKey()
  final String label;

  @JsonKey()
  final double amount;

  @JsonKey()
  final double share;

  Map<String, dynamic> toJson() => _$InvestmentsDistributionItemModelToJson(this);

  InvestmentsDistributionItemEntity toEntity() {
    return InvestmentsDistributionItemEntity(
      label: label,
      amount: amount,
      share: share,
    );
  }
}
