import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta_package/types.dart';

part 'generated/investments_distribution_query_model.g.dart';

@JsonSerializable()
class InvestmentsDistributionQueryModel {
  InvestmentsDistributionQueryModel({
    required this.items,
  });

  factory InvestmentsDistributionQueryModel.fromJson(JsonResponse json) =>
      _$InvestmentsDistributionQueryModelFromJson(json);

  factory InvestmentsDistributionQueryModel.fromHttpResponse(Response<JsonResponse> response) {
    return InvestmentsDistributionQueryModel.fromJson(response.data!['result'] as JsonResponse);
  }

  @JsonKey(name: 'distribution', defaultValue: [])
  final List<InvestmentsDistributionItemModel> items;

  JsonResponse toJson() => _$InvestmentsDistributionQueryModelToJson(this);
}

@JsonSerializable()
class InvestmentsDistributionItemModel {
  InvestmentsDistributionItemModel({
    required this.label,
    required this.amount,
    required this.share,
  });

  factory InvestmentsDistributionItemModel.fromJson(JsonResponse json) =>
      _$InvestmentsDistributionItemModelFromJson(json);

  @JsonKey()
  final String label;

  @JsonKey()
  final double amount;

  @JsonKey()
  final double share;

  JsonResponse toJson() => _$InvestmentsDistributionItemModelToJson(this);
}
