import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_summary_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta_package/types.dart';

part 'generated/coins_query_model.g.dart';

/// JSON Serializable model for a query for coins
@JsonSerializable()
class CoinsQueryModel {
  /// Standard constructor for [CoinsQueryModel]
  CoinsQueryModel({
    required this.count,
    required this.coins,
  });

  /// Factory constructor for [CoinsQueryModel] using JSON as an input
  factory CoinsQueryModel.fromJson(Map<String, dynamic> json) => _$CoinsQueryModelFromJson(json);

  /// Factory constructor for [CoinsQueryModel] using Dio Response an an input
  /// Calls [CoinsQueryModel.fromJson] after unwrapping the response's JSON data
  factory CoinsQueryModel.fromHttpResponse(Response<Map<String, dynamic>> response) {
    return CoinsQueryModel.fromJson(response.data!);
  }

  /// The number of items in the query
  @JsonKey(defaultValue: 0)
  final int count;

  /// A list of [CoinQueryItemModel] corresponding to each item in the query
  @JsonKey(name: 'types', defaultValue: [])
  final List<CoinQueryItemModel> coins;

  /// Converts the Model to it's JSON equivalent
  Map<String, dynamic> toJson() => _$CoinsQueryModelToJson(this);

  /// Converts the Model to it's Entity equivalent
  List<CoinSummaryEntity> toEntity() {
    return coins.map((e) => e.toEntity()).toList();
  }
}

/// JSON Serializable model for a coin in the query
@JsonSerializable()
class CoinQueryItemModel {
  /// Standard constructor for [CoinQueryItemModel]
  CoinQueryItemModel({
    required this.id,
    required this.title,
    required this.minYear,
    required this.maxYear,
    required this.obverseThumbnailUrl,
    required this.reverseThumbnailUrl,
  });

  /// Factory constructor for [CoinsQueryModel] using JSON as an input
  factory CoinQueryItemModel.fromJson(Map<String, dynamic> json) => _$CoinQueryItemModelFromJson(json);

  /// The id to the coin's details
  @JsonKey()
  final int id;

  /// The coin's name
  @JsonKey(defaultValue: '')
  final String title;

  /// The coin's first year in circulation
  @JsonKey(name: 'min_year')
  final int? minYear;

  /// The coin's last year in circulation
  @JsonKey(name: 'max_year')
  final int? maxYear;

  /// an URL to the coin's obverse
  @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
  final String? obverseThumbnailUrl;

  /// an URL to the coin's reverse
  @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
  final String? reverseThumbnailUrl;

  /// Converts the Model to it's JSON equivalent
  Map<String, dynamic> toJson() => _$CoinQueryItemModelToJson(this);

  /// Converts the Model to it's Entity equivalent
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
