import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta_package/types.dart';

part 'generated/coin_data_model.g.dart';

/// JSON Serializable model for a coin
@JsonSerializable()
class CoinDataModel {
  /// Standard constructor for [CoinDataModel]
  CoinDataModel({
    required this.id,
    required this.title,
    required this.minYear,
    required this.maxYear,
    required this.demonetization,
    required this.composition,
    required this.weight,
    required this.size,
    required this.thickness,
    required this.obverse,
    required this.reverse,
    required this.edge,
    required this.watermark,
    required this.series,
  });

  /// Factory constructor for [CoinDataModel] using JSON as an input
  factory CoinDataModel.fromJson(Map<String, dynamic> json) => _$CoinDataModelFromJson(json);

  /// Factory constructor for [CoinDataModel] using Dio Response an an input
  /// Calls [CoinDataModel.fromJson] after unwrapping the response's JSON data
  factory CoinDataModel.fromHttpResponse(Response<Map<String, dynamic>> response) {
    return CoinDataModel.fromJson(response.data!);
  }

  /// The id to the coin's details
  @JsonKey()
  final int id;
  @JsonKey()

  /// The coin's name
  final String title;

  /// The coin's first year in circulation
  @JsonKey(name: 'min_year')
  final int? minYear;

  /// The coin's last year in circulation
  @JsonKey(name: 'max_year')
  final int? maxYear;

  /// Whether the coin is demonetized
  @JsonKey()
  final CoinDataDemonetizationModel? demonetization;

  /// The coin's composition
  @JsonKey()
  final CoinDataCompositionModel? composition;

  /// The coin's weight in grams
  @JsonKey()
  final double? weight; //g

  /// The coin's diameter in millimeters
  @JsonKey()
  final double? size; //mm

  /// The coin's thickness in millimeters
  @JsonKey()
  final double? thickness; //mm

  /// Informations about the coin's obverse
  @JsonKey()
  final CoinDataCoinFaceModel? obverse;

  /// Informations about the coin's reverse
  @JsonKey()
  final CoinDataCoinFaceModel? reverse;

  /// Informations about the coin's edge
  @JsonKey()
  final CoinDataCoinFaceModel? edge;

  /// Informations about the coin's watermark
  @JsonKey()
  final CoinDataCoinFaceModel? watermark;

  /// The series of the coin
  @JsonKey()
  final String? series;

  /// Converts the Model to it's JSON equivalent
  Map<String, dynamic> toJson() => _$CoinDataModelToJson(this);

  /// Converts the Model to it's Entity equivalent
  CoinEntity toEntity() {
    return CoinEntity(
      id: id,
      name: title,
      minYear: Option.instance(minYear),
      maxYear: Option.instance(maxYear),
      isDemonetized: demonetization?.isDemonetized ?? false,
      composition: Option.instance(composition?.text),
      weight: Option.instance(weight),
      size: Option.instance(size),
      thickness: Option.instance(thickness),
      obverse: Option.instance(obverse?.toEntity()),
      reverse: Option.instance(reverse?.toEntity()),
      edge: Option.instance(edge?.toEntity()),
      watermark: Option.instance(watermark?.toEntity()),
      series: Option.instance(series),
    );
  }
}

/// JSON Serializable model for a coin's composition
@JsonSerializable()
class CoinDataCompositionModel {
  /// Standard constructor for [CoinDataCompositionModel]
  CoinDataCompositionModel({
    required this.text,
  });

  /// Factory constructor for [CoinDataCompositionModel] using JSON as an input
  factory CoinDataCompositionModel.fromJson(Map<String, dynamic> json) => _$CoinDataCompositionModelFromJson(json);

  /// The coin's composition
  @JsonKey()
  final String text;

  /// Converts the Model to it's JSON equivalent
  Map<String, dynamic> toJson() => _$CoinDataCompositionModelToJson(this);
}

/// JSON Serializable model for a coin monetization status
@JsonSerializable()
class CoinDataDemonetizationModel {
  /// Standard constructor for [CoinDataDemonetizationModel]
  CoinDataDemonetizationModel({
    required this.isDemonetized,
    required this.demonetizationDate,
  });

  /// Factory constructor for [CoinDataDemonetizationModel] using JSON as an input
  factory CoinDataDemonetizationModel.fromJson(Map<String, dynamic> json) =>
      _$CoinDataDemonetizationModelFromJson(json);

  /// Whether the coin is demonetized
  @JsonKey(name: 'is_demonetized')
  final bool isDemonetized;

  /// If the coin is demonetized, the date it was
  @JsonKey(name: 'demonetization_date')
  final String? demonetizationDate;

  /// Converts the Model to it's JSON equivalent
  Map<String, dynamic> toJson() => _$CoinDataDemonetizationModelToJson(this);
}

/// JSON Serializable model for the information of a coin's face
@JsonSerializable()
class CoinDataCoinFaceModel {
  /// Standard constructor for [CoinDataCoinFaceModel]
  CoinDataCoinFaceModel({
    required this.lettering,
    required this.pictureUrl,
    required this.thumbnailUrl,
  });

  /// Factory constructor for [CoinDataCoinFaceModel] using JSON as an input
  factory CoinDataCoinFaceModel.fromJson(Map<String, dynamic> json) => _$CoinDataCoinFaceModelFromJson(json);

  /// Text that can be seen on this face
  @JsonKey()
  final String? lettering;

  /// An URL to the picture of the face
  @JsonKey(name: 'picture', defaultValue: '')
  final String? pictureUrl;

  /// AN URL to the thumbnail of the face (smaller than the picture)
  @JsonKey(name: 'thumbnail', defaultValue: '')
  final String? thumbnailUrl;

  /// Converts the Model to it's JSON equivalent
  Map<String, dynamic> toJson() => _$CoinDataCoinFaceModelToJson(this);

  /// Converts the Model to it's Entity equivalent
  CoinFaceEntity toEntity() {
    return CoinFaceEntity(
      lettering: Option.instance(lettering),
      pictureUrl: Option.instance(pictureUrl),
      thumbnailUrl: Option.instance(thumbnailUrl),
    );
  }
}
