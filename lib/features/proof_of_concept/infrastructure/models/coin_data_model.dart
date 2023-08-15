import 'package:dio/dio.dart';
import 'package:finance/features/proof_of_concept/domain/entities/coin_entity.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta_package/types.dart';

part 'generated/coin_data_model.g.dart';

@JsonSerializable()
class CoinDataModel {
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

  factory CoinDataModel.fromJson(Map<String, dynamic> json) => _$CoinDataModelFromJson(json);

  factory CoinDataModel.fromHttpResponse(Response<Map<String, dynamic>> response) {
    return CoinDataModel.fromJson(response.data!);
  }

  @JsonKey()
  final int id;

  @JsonKey()
  final String title;

  @JsonKey(name: 'min_year')
  final int? minYear;

  @JsonKey(name: 'max_year')
  final int? maxYear;

  @JsonKey()
  final CoinDataDemonetizationModel? demonetization;

  @JsonKey()
  final CoinDataCompositionModel? composition;

  @JsonKey()
  final double? weight; //g

  @JsonKey()
  final double? size; //mm

  @JsonKey()
  final double? thickness; //mm

  @JsonKey()
  final CoinDataCoinFaceModel? obverse;

  @JsonKey()
  final CoinDataCoinFaceModel? reverse;

  @JsonKey()
  final CoinDataCoinFaceModel? edge;

  @JsonKey()
  final CoinDataCoinFaceModel? watermark;

  @JsonKey()
  final String? series;

  Map<String, dynamic> toJson() => _$CoinDataModelToJson(this);

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

@JsonSerializable()
class CoinDataCompositionModel {
  CoinDataCompositionModel({
    required this.text,
  });

  factory CoinDataCompositionModel.fromJson(Map<String, dynamic> json) => _$CoinDataCompositionModelFromJson(json);

  @JsonKey()
  final String text;

  Map<String, dynamic> toJson() => _$CoinDataCompositionModelToJson(this);
}

@JsonSerializable()
class CoinDataDemonetizationModel {
  CoinDataDemonetizationModel({
    required this.isDemonetized,
    required this.demonetizationDate,
  });

  factory CoinDataDemonetizationModel.fromJson(Map<String, dynamic> json) =>
      _$CoinDataDemonetizationModelFromJson(json);

  @JsonKey(name: 'is_demonetized')
  final bool isDemonetized;

  @JsonKey(name: 'demonetization_date')
  final String? demonetizationDate;

  Map<String, dynamic> toJson() => _$CoinDataDemonetizationModelToJson(this);
}

@JsonSerializable()
class CoinDataCoinFaceModel {
  CoinDataCoinFaceModel({
    required this.lettering,
    required this.pictureUrl,
    required this.thumbnailUrl,
  });

  factory CoinDataCoinFaceModel.fromJson(Map<String, dynamic> json) => _$CoinDataCoinFaceModelFromJson(json);

  @JsonKey()
  final String? lettering;

  @JsonKey(name: 'picture', defaultValue: '')
  final String? pictureUrl;

  @JsonKey(name: 'thumbnail', defaultValue: '')
  final String? thumbnailUrl;

  Map<String, dynamic> toJson() => _$CoinDataCoinFaceModelToJson(this);

  CoinFaceEntity toEntity() {
    return CoinFaceEntity(
      lettering: Option.instance(lettering),
      pictureUrl: Option.instance(pictureUrl),
      thumbnailUrl: Option.instance(thumbnailUrl),
    );
  }
}
