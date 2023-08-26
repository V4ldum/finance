import 'package:dio/dio.dart';
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

  factory CoinDataModel.fromJson(JsonResponse json) => _$CoinDataModelFromJson(json);

  factory CoinDataModel.fromHttpResponse(Response<JsonResponse> response) {
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

  JsonResponse toJson() => _$CoinDataModelToJson(this);
}

@JsonSerializable()
class CoinDataCompositionModel {
  CoinDataCompositionModel({
    required this.text,
  });

  factory CoinDataCompositionModel.fromJson(JsonResponse json) => _$CoinDataCompositionModelFromJson(json);

  @JsonKey()
  final String text;

  JsonResponse toJson() => _$CoinDataCompositionModelToJson(this);
}

@JsonSerializable()
class CoinDataDemonetizationModel {
  CoinDataDemonetizationModel({
    required this.isDemonetized,
    required this.demonetizationDate,
  });

  factory CoinDataDemonetizationModel.fromJson(JsonResponse json) => _$CoinDataDemonetizationModelFromJson(json);

  @JsonKey(name: 'is_demonetized')
  final bool isDemonetized;

  @JsonKey(name: 'demonetization_date')
  final String? demonetizationDate;

  JsonResponse toJson() => _$CoinDataDemonetizationModelToJson(this);
}

@JsonSerializable()
class CoinDataCoinFaceModel {
  CoinDataCoinFaceModel({
    required this.lettering,
    required this.pictureUrl,
    required this.thumbnailUrl,
  });

  factory CoinDataCoinFaceModel.fromJson(JsonResponse json) => _$CoinDataCoinFaceModelFromJson(json);

  @JsonKey()
  final String? lettering;

  @JsonKey(name: 'picture', defaultValue: '')
  final String? pictureUrl;

  @JsonKey(name: 'thumbnail', defaultValue: '')
  final String? thumbnailUrl;

  JsonResponse toJson() => _$CoinDataCoinFaceModelToJson(this);
}
