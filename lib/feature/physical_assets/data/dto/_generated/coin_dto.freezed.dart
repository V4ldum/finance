// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../coin_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinDto _$CoinDtoFromJson(Map<String, dynamic> json) {
  return _CoinDto.fromJson(json);
}

/// @nodoc
mixin _$CoinDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'numista_id')
  String get numistaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  double get size => throw _privateConstructorUsedError;
  double? get thickness => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_year')
  String get minYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_year', defaultValue: '')
  String get maxYear => throw _privateConstructorUsedError;
  PreciousMetalTypeDto get composition => throw _privateConstructorUsedError;
  int get purity => throw _privateConstructorUsedError;
  CoinFaceDto? get obverse => throw _privateConstructorUsedError;
  CoinFaceDto? get reverse => throw _privateConstructorUsedError;
  CoinFaceDto? get edge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinDtoCopyWith<CoinDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinDtoCopyWith<$Res> {
  factory $CoinDtoCopyWith(CoinDto value, $Res Function(CoinDto) then) =
      _$CoinDtoCopyWithImpl<$Res, CoinDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'numista_id') String numistaId,
      String name,
      double weight,
      double size,
      double? thickness,
      @JsonKey(name: 'min_year') String minYear,
      @JsonKey(name: 'max_year', defaultValue: '') String maxYear,
      PreciousMetalTypeDto composition,
      int purity,
      CoinFaceDto? obverse,
      CoinFaceDto? reverse,
      CoinFaceDto? edge});

  $CoinFaceDtoCopyWith<$Res>? get obverse;
  $CoinFaceDtoCopyWith<$Res>? get reverse;
  $CoinFaceDtoCopyWith<$Res>? get edge;
}

/// @nodoc
class _$CoinDtoCopyWithImpl<$Res, $Val extends CoinDto>
    implements $CoinDtoCopyWith<$Res> {
  _$CoinDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? numistaId = null,
    Object? name = null,
    Object? weight = null,
    Object? size = null,
    Object? thickness = freezed,
    Object? minYear = null,
    Object? maxYear = null,
    Object? composition = null,
    Object? purity = null,
    Object? obverse = freezed,
    Object? reverse = freezed,
    Object? edge = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      numistaId: null == numistaId
          ? _value.numistaId
          : numistaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      minYear: null == minYear
          ? _value.minYear
          : minYear // ignore: cast_nullable_to_non_nullable
              as String,
      maxYear: null == maxYear
          ? _value.maxYear
          : maxYear // ignore: cast_nullable_to_non_nullable
              as String,
      composition: null == composition
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTypeDto,
      purity: null == purity
          ? _value.purity
          : purity // ignore: cast_nullable_to_non_nullable
              as int,
      obverse: freezed == obverse
          ? _value.obverse
          : obverse // ignore: cast_nullable_to_non_nullable
              as CoinFaceDto?,
      reverse: freezed == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as CoinFaceDto?,
      edge: freezed == edge
          ? _value.edge
          : edge // ignore: cast_nullable_to_non_nullable
              as CoinFaceDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinFaceDtoCopyWith<$Res>? get obverse {
    if (_value.obverse == null) {
      return null;
    }

    return $CoinFaceDtoCopyWith<$Res>(_value.obverse!, (value) {
      return _then(_value.copyWith(obverse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinFaceDtoCopyWith<$Res>? get reverse {
    if (_value.reverse == null) {
      return null;
    }

    return $CoinFaceDtoCopyWith<$Res>(_value.reverse!, (value) {
      return _then(_value.copyWith(reverse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CoinFaceDtoCopyWith<$Res>? get edge {
    if (_value.edge == null) {
      return null;
    }

    return $CoinFaceDtoCopyWith<$Res>(_value.edge!, (value) {
      return _then(_value.copyWith(edge: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoinDtoImplCopyWith<$Res> implements $CoinDtoCopyWith<$Res> {
  factory _$$CoinDtoImplCopyWith(
          _$CoinDtoImpl value, $Res Function(_$CoinDtoImpl) then) =
      __$$CoinDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'numista_id') String numistaId,
      String name,
      double weight,
      double size,
      double? thickness,
      @JsonKey(name: 'min_year') String minYear,
      @JsonKey(name: 'max_year', defaultValue: '') String maxYear,
      PreciousMetalTypeDto composition,
      int purity,
      CoinFaceDto? obverse,
      CoinFaceDto? reverse,
      CoinFaceDto? edge});

  @override
  $CoinFaceDtoCopyWith<$Res>? get obverse;
  @override
  $CoinFaceDtoCopyWith<$Res>? get reverse;
  @override
  $CoinFaceDtoCopyWith<$Res>? get edge;
}

/// @nodoc
class __$$CoinDtoImplCopyWithImpl<$Res>
    extends _$CoinDtoCopyWithImpl<$Res, _$CoinDtoImpl>
    implements _$$CoinDtoImplCopyWith<$Res> {
  __$$CoinDtoImplCopyWithImpl(
      _$CoinDtoImpl _value, $Res Function(_$CoinDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? numistaId = null,
    Object? name = null,
    Object? weight = null,
    Object? size = null,
    Object? thickness = freezed,
    Object? minYear = null,
    Object? maxYear = null,
    Object? composition = null,
    Object? purity = null,
    Object? obverse = freezed,
    Object? reverse = freezed,
    Object? edge = freezed,
  }) {
    return _then(_$CoinDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      numistaId: null == numistaId
          ? _value.numistaId
          : numistaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
      thickness: freezed == thickness
          ? _value.thickness
          : thickness // ignore: cast_nullable_to_non_nullable
              as double?,
      minYear: null == minYear
          ? _value.minYear
          : minYear // ignore: cast_nullable_to_non_nullable
              as String,
      maxYear: null == maxYear
          ? _value.maxYear
          : maxYear // ignore: cast_nullable_to_non_nullable
              as String,
      composition: null == composition
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTypeDto,
      purity: null == purity
          ? _value.purity
          : purity // ignore: cast_nullable_to_non_nullable
              as int,
      obverse: freezed == obverse
          ? _value.obverse
          : obverse // ignore: cast_nullable_to_non_nullable
              as CoinFaceDto?,
      reverse: freezed == reverse
          ? _value.reverse
          : reverse // ignore: cast_nullable_to_non_nullable
              as CoinFaceDto?,
      edge: freezed == edge
          ? _value.edge
          : edge // ignore: cast_nullable_to_non_nullable
              as CoinFaceDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinDtoImpl implements _CoinDto {
  const _$CoinDtoImpl(
      {required this.id,
      @JsonKey(name: 'numista_id') required this.numistaId,
      required this.name,
      required this.weight,
      required this.size,
      required this.thickness,
      @JsonKey(name: 'min_year') required this.minYear,
      @JsonKey(name: 'max_year', defaultValue: '') required this.maxYear,
      required this.composition,
      required this.purity,
      required this.obverse,
      required this.reverse,
      required this.edge});

  factory _$CoinDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinDtoImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'numista_id')
  final String numistaId;
  @override
  final String name;
  @override
  final double weight;
  @override
  final double size;
  @override
  final double? thickness;
  @override
  @JsonKey(name: 'min_year')
  final String minYear;
  @override
  @JsonKey(name: 'max_year', defaultValue: '')
  final String maxYear;
  @override
  final PreciousMetalTypeDto composition;
  @override
  final int purity;
  @override
  final CoinFaceDto? obverse;
  @override
  final CoinFaceDto? reverse;
  @override
  final CoinFaceDto? edge;

  @override
  String toString() {
    return 'CoinDto(id: $id, numistaId: $numistaId, name: $name, weight: $weight, size: $size, thickness: $thickness, minYear: $minYear, maxYear: $maxYear, composition: $composition, purity: $purity, obverse: $obverse, reverse: $reverse, edge: $edge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.numistaId, numistaId) ||
                other.numistaId == numistaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.thickness, thickness) ||
                other.thickness == thickness) &&
            (identical(other.minYear, minYear) || other.minYear == minYear) &&
            (identical(other.maxYear, maxYear) || other.maxYear == maxYear) &&
            (identical(other.composition, composition) ||
                other.composition == composition) &&
            (identical(other.purity, purity) || other.purity == purity) &&
            (identical(other.obverse, obverse) || other.obverse == obverse) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.edge, edge) || other.edge == edge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      numistaId,
      name,
      weight,
      size,
      thickness,
      minYear,
      maxYear,
      composition,
      purity,
      obverse,
      reverse,
      edge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinDtoImplCopyWith<_$CoinDtoImpl> get copyWith =>
      __$$CoinDtoImplCopyWithImpl<_$CoinDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinDto implements CoinDto {
  const factory _CoinDto(
      {required final int id,
      @JsonKey(name: 'numista_id') required final String numistaId,
      required final String name,
      required final double weight,
      required final double size,
      required final double? thickness,
      @JsonKey(name: 'min_year') required final String minYear,
      @JsonKey(name: 'max_year', defaultValue: '')
      required final String maxYear,
      required final PreciousMetalTypeDto composition,
      required final int purity,
      required final CoinFaceDto? obverse,
      required final CoinFaceDto? reverse,
      required final CoinFaceDto? edge}) = _$CoinDtoImpl;

  factory _CoinDto.fromJson(Map<String, dynamic> json) = _$CoinDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'numista_id')
  String get numistaId;
  @override
  String get name;
  @override
  double get weight;
  @override
  double get size;
  @override
  double? get thickness;
  @override
  @JsonKey(name: 'min_year')
  String get minYear;
  @override
  @JsonKey(name: 'max_year', defaultValue: '')
  String get maxYear;
  @override
  PreciousMetalTypeDto get composition;
  @override
  int get purity;
  @override
  CoinFaceDto? get obverse;
  @override
  CoinFaceDto? get reverse;
  @override
  CoinFaceDto? get edge;
  @override
  @JsonKey(ignore: true)
  _$$CoinDtoImplCopyWith<_$CoinDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinFaceDto _$CoinFaceDtoFromJson(Map<String, dynamic> json) {
  return _CoinFaceDto.fromJson(json);
}

/// @nodoc
mixin _$CoinFaceDto {
  @JsonKey(name: 'image_url', defaultValue: '')
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail_url', defaultValue: '')
  String get thumbnail => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get lettering => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String get copyright => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinFaceDtoCopyWith<CoinFaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinFaceDtoCopyWith<$Res> {
  factory $CoinFaceDtoCopyWith(
          CoinFaceDto value, $Res Function(CoinFaceDto) then) =
      _$CoinFaceDtoCopyWithImpl<$Res, CoinFaceDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url', defaultValue: '') String image,
      @JsonKey(name: 'thumbnail_url', defaultValue: '') String thumbnail,
      @JsonKey(defaultValue: '') String lettering,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(defaultValue: '') String copyright});
}

/// @nodoc
class _$CoinFaceDtoCopyWithImpl<$Res, $Val extends CoinFaceDto>
    implements $CoinFaceDtoCopyWith<$Res> {
  _$CoinFaceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? thumbnail = null,
    Object? lettering = null,
    Object? description = null,
    Object? copyright = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      lettering: null == lettering
          ? _value.lettering
          : lettering // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      copyright: null == copyright
          ? _value.copyright
          : copyright // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinFaceDtoImplCopyWith<$Res>
    implements $CoinFaceDtoCopyWith<$Res> {
  factory _$$CoinFaceDtoImplCopyWith(
          _$CoinFaceDtoImpl value, $Res Function(_$CoinFaceDtoImpl) then) =
      __$$CoinFaceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'image_url', defaultValue: '') String image,
      @JsonKey(name: 'thumbnail_url', defaultValue: '') String thumbnail,
      @JsonKey(defaultValue: '') String lettering,
      @JsonKey(defaultValue: '') String description,
      @JsonKey(defaultValue: '') String copyright});
}

/// @nodoc
class __$$CoinFaceDtoImplCopyWithImpl<$Res>
    extends _$CoinFaceDtoCopyWithImpl<$Res, _$CoinFaceDtoImpl>
    implements _$$CoinFaceDtoImplCopyWith<$Res> {
  __$$CoinFaceDtoImplCopyWithImpl(
      _$CoinFaceDtoImpl _value, $Res Function(_$CoinFaceDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? thumbnail = null,
    Object? lettering = null,
    Object? description = null,
    Object? copyright = null,
  }) {
    return _then(_$CoinFaceDtoImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnail: null == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String,
      lettering: null == lettering
          ? _value.lettering
          : lettering // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
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
class _$CoinFaceDtoImpl implements _CoinFaceDto {
  const _$CoinFaceDtoImpl(
      {@JsonKey(name: 'image_url', defaultValue: '') required this.image,
      @JsonKey(name: 'thumbnail_url', defaultValue: '') required this.thumbnail,
      @JsonKey(defaultValue: '') required this.lettering,
      @JsonKey(defaultValue: '') required this.description,
      @JsonKey(defaultValue: '') required this.copyright});

  factory _$CoinFaceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinFaceDtoImplFromJson(json);

  @override
  @JsonKey(name: 'image_url', defaultValue: '')
  final String image;
  @override
  @JsonKey(name: 'thumbnail_url', defaultValue: '')
  final String thumbnail;
  @override
  @JsonKey(defaultValue: '')
  final String lettering;
  @override
  @JsonKey(defaultValue: '')
  final String description;
  @override
  @JsonKey(defaultValue: '')
  final String copyright;

  @override
  String toString() {
    return 'CoinFaceDto(image: $image, thumbnail: $thumbnail, lettering: $lettering, description: $description, copyright: $copyright)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinFaceDtoImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.lettering, lettering) ||
                other.lettering == lettering) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.copyright, copyright) ||
                other.copyright == copyright));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, image, thumbnail, lettering, description, copyright);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinFaceDtoImplCopyWith<_$CoinFaceDtoImpl> get copyWith =>
      __$$CoinFaceDtoImplCopyWithImpl<_$CoinFaceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinFaceDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinFaceDto implements CoinFaceDto {
  const factory _CoinFaceDto(
          {@JsonKey(name: 'image_url', defaultValue: '')
          required final String image,
          @JsonKey(name: 'thumbnail_url', defaultValue: '')
          required final String thumbnail,
          @JsonKey(defaultValue: '') required final String lettering,
          @JsonKey(defaultValue: '') required final String description,
          @JsonKey(defaultValue: '') required final String copyright}) =
      _$CoinFaceDtoImpl;

  factory _CoinFaceDto.fromJson(Map<String, dynamic> json) =
      _$CoinFaceDtoImpl.fromJson;

  @override
  @JsonKey(name: 'image_url', defaultValue: '')
  String get image;
  @override
  @JsonKey(name: 'thumbnail_url', defaultValue: '')
  String get thumbnail;
  @override
  @JsonKey(defaultValue: '')
  String get lettering;
  @override
  @JsonKey(defaultValue: '')
  String get description;
  @override
  @JsonKey(defaultValue: '')
  String get copyright;
  @override
  @JsonKey(ignore: true)
  _$$CoinFaceDtoImplCopyWith<_$CoinFaceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
