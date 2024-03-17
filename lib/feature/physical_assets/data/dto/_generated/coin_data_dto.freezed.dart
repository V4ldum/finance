// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../coin_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinDataDto _$CoinDataDtoFromJson(Map<String, dynamic> json) {
  return _CoinDataDto.fromJson(json);
}

/// @nodoc
mixin _$CoinDataDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_year')
  int? get minYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_year')
  int? get maxYear => throw _privateConstructorUsedError;
  CoinDataDemonetizationDto? get demonetization =>
      throw _privateConstructorUsedError;
  CoinDataCompositionDto? get composition => throw _privateConstructorUsedError;
  double? get weight => throw _privateConstructorUsedError; // g
  double? get size => throw _privateConstructorUsedError; // mm
  double? get thickness => throw _privateConstructorUsedError; // mm
  CoinDataCoinFaceDto? get obverse => throw _privateConstructorUsedError;
  CoinDataCoinFaceDto? get reverse => throw _privateConstructorUsedError;
  CoinDataCoinFaceDto? get edge => throw _privateConstructorUsedError;
  CoinDataCoinFaceDto? get watermark => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get series => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinDataDtoCopyWith<CoinDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinDataDtoCopyWith<$Res> {
  factory $CoinDataDtoCopyWith(
          CoinDataDto value, $Res Function(CoinDataDto) then) =
      _$CoinDataDtoCopyWithImpl<$Res, CoinDataDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'title', defaultValue: '') String name,
      @JsonKey(name: 'min_year') int? minYear,
      @JsonKey(name: 'max_year') int? maxYear,
      CoinDataDemonetizationDto? demonetization,
      CoinDataCompositionDto? composition,
      double? weight,
      double? size,
      double? thickness,
      CoinDataCoinFaceDto? obverse,
      CoinDataCoinFaceDto? reverse,
      CoinDataCoinFaceDto? edge,
      CoinDataCoinFaceDto? watermark,
      @JsonKey(defaultValue: '') String series});

  $CoinDataDemonetizationDtoCopyWith<$Res>? get demonetization;
  $CoinDataCompositionDtoCopyWith<$Res>? get composition;
  $CoinDataCoinFaceDtoCopyWith<$Res>? get obverse;
  $CoinDataCoinFaceDtoCopyWith<$Res>? get reverse;
  $CoinDataCoinFaceDtoCopyWith<$Res>? get edge;
  $CoinDataCoinFaceDtoCopyWith<$Res>? get watermark;
}

/// @nodoc
class _$CoinDataDtoCopyWithImpl<$Res, $Val extends CoinDataDto>
    implements $CoinDataDtoCopyWith<$Res> {
  _$CoinDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minYear = freezed,
    Object? maxYear = freezed,
    Object? demonetization = freezed,
    Object? composition = freezed,
    Object? weight = freezed,
    Object? size = freezed,
    Object? thickness = freezed,
    Object? obverse = freezed,
    Object? reverse = freezed,
    Object? edge = freezed,
    Object? watermark = freezed,
    Object? series = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minYear: freezed == minYear
          ? _value.minYear
          : minYear // ignore: cast_nullable_to_non_nullable
              as int?,
      maxYear: freezed == maxYear
          ? _value.maxYear
          : maxYear // ignore: cast_nullable_to_non_nullable
              as int?,
      demonetization: freezed == demonetization
          ? _value.demonetization
          : demonetization // ignore: cast_nullable_to_non_nullable
              as CoinDataDemonetizationDto?,
      composition: freezed == composition
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as CoinDataCompositionDto?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      obverse: freezed == obverse
          ? _value.obverse
          : obverse // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      reverse: freezed == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      edge: freezed == edge
          ? _value.edge
          : edge // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinDataDemonetizationDtoCopyWith<$Res>? get demonetization {
    if (_value.demonetization == null) {
      return null;
    }

    return $CoinDataDemonetizationDtoCopyWith<$Res>(_value.demonetization!,
        (value) {
      return _then(_value.copyWith(demonetization: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinDataCompositionDtoCopyWith<$Res>? get composition {
    if (_value.composition == null) {
      return null;
    }

    return $CoinDataCompositionDtoCopyWith<$Res>(_value.composition!, (value) {
      return _then(_value.copyWith(composition: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinDataCoinFaceDtoCopyWith<$Res>? get obverse {
    if (_value.obverse == null) {
      return null;
    }

    return $CoinDataCoinFaceDtoCopyWith<$Res>(_value.obverse!, (value) {
      return _then(_value.copyWith(obverse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinDataCoinFaceDtoCopyWith<$Res>? get reverse {
    if (_value.reverse == null) {
      return null;
    }

    return $CoinDataCoinFaceDtoCopyWith<$Res>(_value.reverse!, (value) {
      return _then(_value.copyWith(reverse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinDataCoinFaceDtoCopyWith<$Res>? get edge {
    if (_value.edge == null) {
      return null;
    }

    return $CoinDataCoinFaceDtoCopyWith<$Res>(_value.edge!, (value) {
      return _then(_value.copyWith(edge: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinDataCoinFaceDtoCopyWith<$Res>? get watermark {
    if (_value.watermark == null) {
      return null;
    }

    return $CoinDataCoinFaceDtoCopyWith<$Res>(_value.watermark!, (value) {
      return _then(_value.copyWith(watermark: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoinDataDtoImplCopyWith<$Res>
    implements $CoinDataDtoCopyWith<$Res> {
  factory _$$CoinDataDtoImplCopyWith(
          _$CoinDataDtoImpl value, $Res Function(_$CoinDataDtoImpl) then) =
      __$$CoinDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'title', defaultValue: '') String name,
      @JsonKey(name: 'min_year') int? minYear,
      @JsonKey(name: 'max_year') int? maxYear,
      CoinDataDemonetizationDto? demonetization,
      CoinDataCompositionDto? composition,
      double? weight,
      double? size,
      double? thickness,
      CoinDataCoinFaceDto? obverse,
      CoinDataCoinFaceDto? reverse,
      CoinDataCoinFaceDto? edge,
      CoinDataCoinFaceDto? watermark,
      @JsonKey(defaultValue: '') String series});

  @override
  $CoinDataDemonetizationDtoCopyWith<$Res>? get demonetization;
  @override
  $CoinDataCompositionDtoCopyWith<$Res>? get composition;
  @override
  $CoinDataCoinFaceDtoCopyWith<$Res>? get obverse;
  @override
  $CoinDataCoinFaceDtoCopyWith<$Res>? get reverse;
  @override
  $CoinDataCoinFaceDtoCopyWith<$Res>? get edge;
  @override
  $CoinDataCoinFaceDtoCopyWith<$Res>? get watermark;
}

/// @nodoc
class __$$CoinDataDtoImplCopyWithImpl<$Res>
    extends _$CoinDataDtoCopyWithImpl<$Res, _$CoinDataDtoImpl>
    implements _$$CoinDataDtoImplCopyWith<$Res> {
  __$$CoinDataDtoImplCopyWithImpl(
      _$CoinDataDtoImpl _value, $Res Function(_$CoinDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minYear = freezed,
    Object? maxYear = freezed,
    Object? demonetization = freezed,
    Object? composition = freezed,
    Object? weight = freezed,
    Object? size = freezed,
    Object? thickness = freezed,
    Object? obverse = freezed,
    Object? reverse = freezed,
    Object? edge = freezed,
    Object? watermark = freezed,
    Object? series = null,
  }) {
    return _then(_$CoinDataDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minYear: freezed == minYear
          ? _value.minYear
          : minYear // ignore: cast_nullable_to_non_nullable
              as int?,
      maxYear: freezed == maxYear
          ? _value.maxYear
          : maxYear // ignore: cast_nullable_to_non_nullable
              as int?,
      demonetization: freezed == demonetization
          ? _value.demonetization
          : demonetization // ignore: cast_nullable_to_non_nullable
              as CoinDataDemonetizationDto?,
      composition: freezed == composition
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as CoinDataCompositionDto?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      obverse: freezed == obverse
          ? _value.obverse
          : obverse // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      reverse: freezed == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      edge: freezed == edge
          ? _value.edge
          : edge // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as CoinDataCoinFaceDto?,
      series: null == series
          ? _value.series
          : series // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinDataDtoImpl implements _CoinDataDto {
  const _$CoinDataDtoImpl(
      {required this.id,
      @JsonKey(name: 'title', defaultValue: '') required this.name,
      @JsonKey(name: 'min_year') required this.minYear,
      @JsonKey(name: 'max_year') required this.maxYear,
      required this.demonetization,
      required this.composition,
      required this.weight,
      required this.size,
      required this.thickness,
      required this.obverse,
      required this.reverse,
      required this.edge,
      required this.watermark,
      @JsonKey(defaultValue: '') required this.series});

  factory _$CoinDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinDataDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'min_year')
  final int? minYear;
  @override
  @JsonKey(name: 'max_year')
  final int? maxYear;
  @override
  final CoinDataDemonetizationDto? demonetization;
  @override
  final CoinDataCompositionDto? composition;
  @override
  final double? weight;
// g
  @override
  final double? size;
// mm
  @override
  final double? thickness;
// mm
  @override
  final CoinDataCoinFaceDto? obverse;
  @override
  final CoinDataCoinFaceDto? reverse;
  @override
  final CoinDataCoinFaceDto? edge;
  @override
  final CoinDataCoinFaceDto? watermark;
  @override
  @JsonKey(defaultValue: '')
  final String series;

  @override
  String toString() {
    return 'CoinDataDto(id: $id, name: $name, minYear: $minYear, maxYear: $maxYear, demonetization: $demonetization, composition: $composition, weight: $weight, size: $size, thickness: $thickness, obverse: $obverse, reverse: $reverse, edge: $edge, watermark: $watermark, series: $series)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinDataDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minYear, minYear) || other.minYear == minYear) &&
            (identical(other.maxYear, maxYear) || other.maxYear == maxYear) &&
            (identical(other.demonetization, demonetization) ||
                other.demonetization == demonetization) &&
            (identical(other.composition, composition) ||
                other.composition == composition) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.obverse, obverse) || other.obverse == obverse) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.edge, edge) || other.edge == edge) &&
            (identical(other.watermark, watermark) ||
                other.watermark == watermark) &&
            (identical(other.series, series) || other.series == series));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      minYear,
      maxYear,
      demonetization,
      composition,
      weight,
      size,
      thickness,
      obverse,
      reverse,
      edge,
      watermark,
      series);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinDataDtoImplCopyWith<_$CoinDataDtoImpl> get copyWith =>
      __$$CoinDataDtoImplCopyWithImpl<_$CoinDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinDataDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinDataDto implements CoinDataDto {
  const factory _CoinDataDto(
          {required final int id,
          @JsonKey(name: 'title', defaultValue: '') required final String name,
          @JsonKey(name: 'min_year') required final int? minYear,
          @JsonKey(name: 'max_year') required final int? maxYear,
          required final CoinDataDemonetizationDto? demonetization,
          required final CoinDataCompositionDto? composition,
          required final double? weight,
          required final double? size,
          required final double? thickness,
          required final CoinDataCoinFaceDto? obverse,
          required final CoinDataCoinFaceDto? reverse,
          required final CoinDataCoinFaceDto? edge,
          required final CoinDataCoinFaceDto? watermark,
          @JsonKey(defaultValue: '') required final String series}) =
      _$CoinDataDtoImpl;

  factory _CoinDataDto.fromJson(Map<String, dynamic> json) =
      _$CoinDataDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'min_year')
  int? get minYear;
  @override
  @JsonKey(name: 'max_year')
  int? get maxYear;
  @override
  CoinDataDemonetizationDto? get demonetization;
  @override
  CoinDataCompositionDto? get composition;
  @override
  double? get weight;
  @override // g
  double? get size;
  @override // mm
  double? get thickness;
  @override // mm
  CoinDataCoinFaceDto? get obverse;
  @override
  CoinDataCoinFaceDto? get reverse;
  @override
  CoinDataCoinFaceDto? get edge;
  @override
  CoinDataCoinFaceDto? get watermark;
  @override
  @JsonKey(defaultValue: '')
  String get series;
  @override
  @JsonKey(ignore: true)
  _$$CoinDataDtoImplCopyWith<_$CoinDataDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinDataCompositionDto _$CoinDataCompositionDtoFromJson(
    Map<String, dynamic> json) {
  return _CoinDataCompositionDto.fromJson(json);
}

/// @nodoc
mixin _$CoinDataCompositionDto {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinDataCompositionDtoCopyWith<CoinDataCompositionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinDataCompositionDtoCopyWith<$Res> {
  factory $CoinDataCompositionDtoCopyWith(CoinDataCompositionDto value,
          $Res Function(CoinDataCompositionDto) then) =
      _$CoinDataCompositionDtoCopyWithImpl<$Res, CoinDataCompositionDto>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$CoinDataCompositionDtoCopyWithImpl<$Res,
        $Val extends CoinDataCompositionDto>
    implements $CoinDataCompositionDtoCopyWith<$Res> {
  _$CoinDataCompositionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinDataCompositionDtoImplCopyWith<$Res>
    implements $CoinDataCompositionDtoCopyWith<$Res> {
  factory _$$CoinDataCompositionDtoImplCopyWith(
          _$CoinDataCompositionDtoImpl value,
          $Res Function(_$CoinDataCompositionDtoImpl) then) =
      __$$CoinDataCompositionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$CoinDataCompositionDtoImplCopyWithImpl<$Res>
    extends _$CoinDataCompositionDtoCopyWithImpl<$Res,
        _$CoinDataCompositionDtoImpl>
    implements _$$CoinDataCompositionDtoImplCopyWith<$Res> {
  __$$CoinDataCompositionDtoImplCopyWithImpl(
      _$CoinDataCompositionDtoImpl _value,
      $Res Function(_$CoinDataCompositionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$CoinDataCompositionDtoImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinDataCompositionDtoImpl implements _CoinDataCompositionDto {
  const _$CoinDataCompositionDtoImpl({required this.text});

  factory _$CoinDataCompositionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinDataCompositionDtoImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'CoinDataCompositionDto(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinDataCompositionDtoImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinDataCompositionDtoImplCopyWith<_$CoinDataCompositionDtoImpl>
      get copyWith => __$$CoinDataCompositionDtoImplCopyWithImpl<
          _$CoinDataCompositionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinDataCompositionDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinDataCompositionDto implements CoinDataCompositionDto {
  const factory _CoinDataCompositionDto({required final String text}) =
      _$CoinDataCompositionDtoImpl;

  factory _CoinDataCompositionDto.fromJson(Map<String, dynamic> json) =
      _$CoinDataCompositionDtoImpl.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$CoinDataCompositionDtoImplCopyWith<_$CoinDataCompositionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoinDataDemonetizationDto _$CoinDataDemonetizationDtoFromJson(
    Map<String, dynamic> json) {
  return _CoinDataDemonetizationDto.fromJson(json);
}

/// @nodoc
mixin _$CoinDataDemonetizationDto {
  @JsonKey(name: 'is_demonetized')
  bool get isDemonetized => throw _privateConstructorUsedError;
  @JsonKey(name: 'demonetization_date', defaultValue: '')
  String get demonetizationDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinDataDemonetizationDtoCopyWith<CoinDataDemonetizationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinDataDemonetizationDtoCopyWith<$Res> {
  factory $CoinDataDemonetizationDtoCopyWith(CoinDataDemonetizationDto value,
          $Res Function(CoinDataDemonetizationDto) then) =
      _$CoinDataDemonetizationDtoCopyWithImpl<$Res, CoinDataDemonetizationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_demonetized') bool isDemonetized,
      @JsonKey(name: 'demonetization_date', defaultValue: '')
      String demonetizationDate});
}

/// @nodoc
class _$CoinDataDemonetizationDtoCopyWithImpl<$Res,
        $Val extends CoinDataDemonetizationDto>
    implements $CoinDataDemonetizationDtoCopyWith<$Res> {
  _$CoinDataDemonetizationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDemonetized = null,
    Object? demonetizationDate = null,
  }) {
    return _then(_value.copyWith(
      isDemonetized: null == isDemonetized
          ? _value.isDemonetized
          : isDemonetized // ignore: cast_nullable_to_non_nullable
              as bool,
      demonetizationDate: null == demonetizationDate
          ? _value.demonetizationDate
          : demonetizationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinDataDemonetizationDtoImplCopyWith<$Res>
    implements $CoinDataDemonetizationDtoCopyWith<$Res> {
  factory _$$CoinDataDemonetizationDtoImplCopyWith(
          _$CoinDataDemonetizationDtoImpl value,
          $Res Function(_$CoinDataDemonetizationDtoImpl) then) =
      __$$CoinDataDemonetizationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_demonetized') bool isDemonetized,
      @JsonKey(name: 'demonetization_date', defaultValue: '')
      String demonetizationDate});
}

/// @nodoc
class __$$CoinDataDemonetizationDtoImplCopyWithImpl<$Res>
    extends _$CoinDataDemonetizationDtoCopyWithImpl<$Res,
        _$CoinDataDemonetizationDtoImpl>
    implements _$$CoinDataDemonetizationDtoImplCopyWith<$Res> {
  __$$CoinDataDemonetizationDtoImplCopyWithImpl(
      _$CoinDataDemonetizationDtoImpl _value,
      $Res Function(_$CoinDataDemonetizationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isDemonetized = null,
    Object? demonetizationDate = null,
  }) {
    return _then(_$CoinDataDemonetizationDtoImpl(
      isDemonetized: null == isDemonetized
          ? _value.isDemonetized
          : isDemonetized // ignore: cast_nullable_to_non_nullable
              as bool,
      demonetizationDate: null == demonetizationDate
          ? _value.demonetizationDate
          : demonetizationDate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinDataDemonetizationDtoImpl implements _CoinDataDemonetizationDto {
  const _$CoinDataDemonetizationDtoImpl(
      {@JsonKey(name: 'is_demonetized') required this.isDemonetized,
      @JsonKey(name: 'demonetization_date', defaultValue: '')
      required this.demonetizationDate});

  factory _$CoinDataDemonetizationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinDataDemonetizationDtoImplFromJson(json);

  @override
  @JsonKey(name: 'is_demonetized')
  final bool isDemonetized;
  @override
  @JsonKey(name: 'demonetization_date', defaultValue: '')
  final String demonetizationDate;

  @override
  String toString() {
    return 'CoinDataDemonetizationDto(isDemonetized: $isDemonetized, demonetizationDate: $demonetizationDate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinDataDemonetizationDtoImpl &&
            (identical(other.isDemonetized, isDemonetized) ||
                other.isDemonetized == isDemonetized) &&
            (identical(other.demonetizationDate, demonetizationDate) ||
                other.demonetizationDate == demonetizationDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, isDemonetized, demonetizationDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinDataDemonetizationDtoImplCopyWith<_$CoinDataDemonetizationDtoImpl>
      get copyWith => __$$CoinDataDemonetizationDtoImplCopyWithImpl<
          _$CoinDataDemonetizationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinDataDemonetizationDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinDataDemonetizationDto implements CoinDataDemonetizationDto {
  const factory _CoinDataDemonetizationDto(
          {@JsonKey(name: 'is_demonetized') required final bool isDemonetized,
          @JsonKey(name: 'demonetization_date', defaultValue: '')
          required final String demonetizationDate}) =
      _$CoinDataDemonetizationDtoImpl;

  factory _CoinDataDemonetizationDto.fromJson(Map<String, dynamic> json) =
      _$CoinDataDemonetizationDtoImpl.fromJson;

  @override
  @JsonKey(name: 'is_demonetized')
  bool get isDemonetized;
  @override
  @JsonKey(name: 'demonetization_date', defaultValue: '')
  String get demonetizationDate;
  @override
  @JsonKey(ignore: true)
  _$$CoinDataDemonetizationDtoImplCopyWith<_$CoinDataDemonetizationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoinDataCoinFaceDto _$CoinDataCoinFaceDtoFromJson(Map<String, dynamic> json) {
  return _CoinDataCoinFaceDto.fromJson(json);
}

/// @nodoc
mixin _$CoinDataCoinFaceDto {
  @JsonKey(defaultValue: '')
  String get lettering => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture', defaultValue: '')
  String get pictureUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail', defaultValue: '')
  String get thumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture_copyright', defaultValue: '')
  String get copyright => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinDataCoinFaceDtoCopyWith<CoinDataCoinFaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinDataCoinFaceDtoCopyWith<$Res> {
  factory $CoinDataCoinFaceDtoCopyWith(
          CoinDataCoinFaceDto value, $Res Function(CoinDataCoinFaceDto) then) =
      _$CoinDataCoinFaceDtoCopyWithImpl<$Res, CoinDataCoinFaceDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String lettering,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(name: 'picture', defaultValue: '') String pictureUrl,
      @JsonKey(name: 'thumbnail', defaultValue: '') String thumbnailUrl,
      @JsonKey(name: 'picture_copyright', defaultValue: '') String copyright});
}

/// @nodoc
class _$CoinDataCoinFaceDtoCopyWithImpl<$Res, $Val extends CoinDataCoinFaceDto>
    implements $CoinDataCoinFaceDtoCopyWith<$Res> {
  _$CoinDataCoinFaceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lettering = null,
    Object? description = null,
    Object? pictureUrl = null,
    Object? thumbnailUrl = null,
    Object? copyright = null,
  }) {
    return _then(_value.copyWith(
      lettering: null == lettering
          ? _value.lettering
          : lettering // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinDataCoinFaceDtoImplCopyWith<$Res>
    implements $CoinDataCoinFaceDtoCopyWith<$Res> {
  factory _$$CoinDataCoinFaceDtoImplCopyWith(_$CoinDataCoinFaceDtoImpl value,
          $Res Function(_$CoinDataCoinFaceDtoImpl) then) =
      __$$CoinDataCoinFaceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: '') String lettering,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(name: 'picture', defaultValue: '') String pictureUrl,
      @JsonKey(name: 'thumbnail', defaultValue: '') String thumbnailUrl,
      @JsonKey(name: 'picture_copyright', defaultValue: '') String copyright});
}

/// @nodoc
class __$$CoinDataCoinFaceDtoImplCopyWithImpl<$Res>
    extends _$CoinDataCoinFaceDtoCopyWithImpl<$Res, _$CoinDataCoinFaceDtoImpl>
    implements _$$CoinDataCoinFaceDtoImplCopyWith<$Res> {
  __$$CoinDataCoinFaceDtoImplCopyWithImpl(_$CoinDataCoinFaceDtoImpl _value,
      $Res Function(_$CoinDataCoinFaceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lettering = null,
    Object? description = null,
    Object? pictureUrl = null,
    Object? thumbnailUrl = null,
    Object? copyright = null,
  }) {
    return _then(_$CoinDataCoinFaceDtoImpl(
      lettering: null == lettering
          ? _value.lettering
          : lettering // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pictureUrl: null == pictureUrl
          ? _value.pictureUrl
          : pictureUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinDataCoinFaceDtoImpl implements _CoinDataCoinFaceDto {
  const _$CoinDataCoinFaceDtoImpl(
      {@JsonKey(defaultValue: '') required this.lettering,
      @JsonKey(defaultValue: '') required this.description,
      @JsonKey(name: 'picture', defaultValue: '') required this.pictureUrl,
      @JsonKey(name: 'thumbnail', defaultValue: '') required this.thumbnailUrl,
      @JsonKey(name: 'picture_copyright', defaultValue: '')
      required this.copyright});

  factory _$CoinDataCoinFaceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinDataCoinFaceDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: '')
  final String lettering;
  @override
  @JsonKey(defaultValue: '')
  final String description;
  @override
  @JsonKey(name: 'picture', defaultValue: '')
  final String pictureUrl;
  @override
  @JsonKey(name: 'thumbnail', defaultValue: '')
  final String thumbnailUrl;
  @override
  @JsonKey(name: 'picture_copyright', defaultValue: '')
  final String copyright;

  @override
  String toString() {
    return 'CoinDataCoinFaceDto(lettering: $lettering, description: $description, pictureUrl: $pictureUrl, thumbnailUrl: $thumbnailUrl, copyright: $copyright)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinDataCoinFaceDtoImpl &&
            (identical(other.lettering, lettering) ||
                other.lettering == lettering) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.pictureUrl, pictureUrl) ||
                other.pictureUrl == pictureUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, lettering, description, pictureUrl, thumbnailUrl, copyright);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinDataCoinFaceDtoImplCopyWith<_$CoinDataCoinFaceDtoImpl> get copyWith =>
      __$$CoinDataCoinFaceDtoImplCopyWithImpl<_$CoinDataCoinFaceDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinDataCoinFaceDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinDataCoinFaceDto implements CoinDataCoinFaceDto {
  const factory _CoinDataCoinFaceDto(
      {@JsonKey(defaultValue: '') required final String lettering,
      @JsonKey(defaultValue: '') required final String description,
      @JsonKey(name: 'picture', defaultValue: '')
      required final String pictureUrl,
      @JsonKey(name: 'thumbnail', defaultValue: '')
      required final String thumbnailUrl,
      @JsonKey(name: 'picture_copyright', defaultValue: '')
      required final String copyright}) = _$CoinDataCoinFaceDtoImpl;

  factory _CoinDataCoinFaceDto.fromJson(Map<String, dynamic> json) =
      _$CoinDataCoinFaceDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: '')
  String get lettering;
  @override
  @JsonKey(defaultValue: '')
  String get description;
  @override
  @JsonKey(name: 'picture', defaultValue: '')
  String get pictureUrl;
  @override
  @JsonKey(name: 'thumbnail', defaultValue: '')
  String get thumbnailUrl;
  @override
  @JsonKey(name: 'picture_copyright', defaultValue: '')
  String get copyright;
  @override
  @JsonKey(ignore: true)
  _$$CoinDataCoinFaceDtoImplCopyWith<_$CoinDataCoinFaceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
