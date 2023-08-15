import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta_package/types.dart';

part 'generated/coins_query_model.g.dart';

@JsonSerializable()
class CoinsQueryModel {
  CoinsQueryModel({
    required this.count,
    required this.coins,
  });

  factory CoinsQueryModel.fromJson(JsonResponse json) => _$CoinsQueryModelFromJson(json);

  factory CoinsQueryModel.fromHttpResponse(Response<JsonResponse> response) {
    return CoinsQueryModel.fromJson(response.data!);
  }

  @JsonKey(defaultValue: 0)
  final int count;

  @JsonKey(name: 'types', defaultValue: [])
  final List<CoinQueryItemModel> coins;

  JsonResponse toJson() => _$CoinsQueryModelToJson(this);

  List<CoinSummaryEntity> toEntity() {
    return coins.map((e) => e.toEntity()).toList();
  }
}

@JsonSerializable()
class CoinQueryItemModel {
  CoinQueryItemModel({
    required this.id,
    required this.title,
    required this.minYear,
    required this.maxYear,
    required this.obverseThumbnailUrl,
    required this.reverseThumbnailUrl,
  });

  factory CoinQueryItemModel.fromJson(JsonResponse json) => _$CoinQueryItemModelFromJson(json);

  @JsonKey()
  final int id;

  @JsonKey(defaultValue: '')
  final String title;

  @JsonKey(name: 'min_year')
  final int? minYear;

  @JsonKey(name: 'max_year')
  final int? maxYear;

  @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
  final String? obverseThumbnailUrl;

  @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
  final String? reverseThumbnailUrl;

  JsonResponse toJson() => _$CoinQueryItemModelToJson(this);

  CoinSummaryEntity toEntity() {
    return CoinSummaryEntity(
      id: id,
      name: title,
      minYear: Option.instance(minYear),
      maxYear: Option.instance(maxYear),
      obverseThumbnailUrl: Option.instance(obverseThumbnailUrl),
      reverseThumbnailUrl: Option.instance(reverseThumbnailUrl),
    );
  }
}
