// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../physical_assets_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PhysicalAssetsDto _$PhysicalAssetsDtoFromJson(Map<String, dynamic> json) {
  return _PhysicalAssetsDto.fromJson(json);
}

/// @nodoc
mixin _$PhysicalAssetsDto {
  @JsonKey(name: 'raw_assets')
  List<RawPhysicalAssetDto> get rawAssets => throw _privateConstructorUsedError;
  @JsonKey(name: 'cash_assets')
  List<CashPhysicalAssetDto> get cashAssets =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'coin_assets')
  List<CoinPhysicalAssetDto> get coinAssets =>
      throw _privateConstructorUsedError;

  /// Serializes this PhysicalAssetsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PhysicalAssetsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhysicalAssetsDtoCopyWith<PhysicalAssetsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhysicalAssetsDtoCopyWith<$Res> {
  factory $PhysicalAssetsDtoCopyWith(
          PhysicalAssetsDto value, $Res Function(PhysicalAssetsDto) then) =
      _$PhysicalAssetsDtoCopyWithImpl<$Res, PhysicalAssetsDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'raw_assets') List<RawPhysicalAssetDto> rawAssets,
      @JsonKey(name: 'cash_assets') List<CashPhysicalAssetDto> cashAssets,
      @JsonKey(name: 'coin_assets') List<CoinPhysicalAssetDto> coinAssets});
}

/// @nodoc
class _$PhysicalAssetsDtoCopyWithImpl<$Res, $Val extends PhysicalAssetsDto>
    implements $PhysicalAssetsDtoCopyWith<$Res> {
  _$PhysicalAssetsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhysicalAssetsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawAssets = null,
    Object? cashAssets = null,
    Object? coinAssets = null,
  }) {
    return _then(_value.copyWith(
      rawAssets: null == rawAssets
          ? _value.rawAssets
          : rawAssets // ignore: cast_nullable_to_non_nullable
              as List<RawPhysicalAssetDto>,
      cashAssets: null == cashAssets
          ? _value.cashAssets
          : cashAssets // ignore: cast_nullable_to_non_nullable
              as List<CashPhysicalAssetDto>,
      coinAssets: null == coinAssets
          ? _value.coinAssets
          : coinAssets // ignore: cast_nullable_to_non_nullable
              as List<CoinPhysicalAssetDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhysicalAssetsDtoImplCopyWith<$Res>
    implements $PhysicalAssetsDtoCopyWith<$Res> {
  factory _$$PhysicalAssetsDtoImplCopyWith(_$PhysicalAssetsDtoImpl value,
          $Res Function(_$PhysicalAssetsDtoImpl) then) =
      __$$PhysicalAssetsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'raw_assets') List<RawPhysicalAssetDto> rawAssets,
      @JsonKey(name: 'cash_assets') List<CashPhysicalAssetDto> cashAssets,
      @JsonKey(name: 'coin_assets') List<CoinPhysicalAssetDto> coinAssets});
}

/// @nodoc
class __$$PhysicalAssetsDtoImplCopyWithImpl<$Res>
    extends _$PhysicalAssetsDtoCopyWithImpl<$Res, _$PhysicalAssetsDtoImpl>
    implements _$$PhysicalAssetsDtoImplCopyWith<$Res> {
  __$$PhysicalAssetsDtoImplCopyWithImpl(_$PhysicalAssetsDtoImpl _value,
      $Res Function(_$PhysicalAssetsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhysicalAssetsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rawAssets = null,
    Object? cashAssets = null,
    Object? coinAssets = null,
  }) {
    return _then(_$PhysicalAssetsDtoImpl(
      rawAssets: null == rawAssets
          ? _value._rawAssets
          : rawAssets // ignore: cast_nullable_to_non_nullable
              as List<RawPhysicalAssetDto>,
      cashAssets: null == cashAssets
          ? _value._cashAssets
          : cashAssets // ignore: cast_nullable_to_non_nullable
              as List<CashPhysicalAssetDto>,
      coinAssets: null == coinAssets
          ? _value._coinAssets
          : coinAssets // ignore: cast_nullable_to_non_nullable
              as List<CoinPhysicalAssetDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PhysicalAssetsDtoImpl implements _PhysicalAssetsDto {
  const _$PhysicalAssetsDtoImpl(
      {@JsonKey(name: 'raw_assets')
      required final List<RawPhysicalAssetDto> rawAssets,
      @JsonKey(name: 'cash_assets')
      required final List<CashPhysicalAssetDto> cashAssets,
      @JsonKey(name: 'coin_assets')
      required final List<CoinPhysicalAssetDto> coinAssets})
      : _rawAssets = rawAssets,
        _cashAssets = cashAssets,
        _coinAssets = coinAssets;

  factory _$PhysicalAssetsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PhysicalAssetsDtoImplFromJson(json);

  final List<RawPhysicalAssetDto> _rawAssets;
  @override
  @JsonKey(name: 'raw_assets')
  List<RawPhysicalAssetDto> get rawAssets {
    if (_rawAssets is EqualUnmodifiableListView) return _rawAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_rawAssets);
  }

  final List<CashPhysicalAssetDto> _cashAssets;
  @override
  @JsonKey(name: 'cash_assets')
  List<CashPhysicalAssetDto> get cashAssets {
    if (_cashAssets is EqualUnmodifiableListView) return _cashAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cashAssets);
  }

  final List<CoinPhysicalAssetDto> _coinAssets;
  @override
  @JsonKey(name: 'coin_assets')
  List<CoinPhysicalAssetDto> get coinAssets {
    if (_coinAssets is EqualUnmodifiableListView) return _coinAssets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coinAssets);
  }

  @override
  String toString() {
    return 'PhysicalAssetsDto(rawAssets: $rawAssets, cashAssets: $cashAssets, coinAssets: $coinAssets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhysicalAssetsDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._rawAssets, _rawAssets) &&
            const DeepCollectionEquality()
                .equals(other._cashAssets, _cashAssets) &&
            const DeepCollectionEquality()
                .equals(other._coinAssets, _coinAssets));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_rawAssets),
      const DeepCollectionEquality().hash(_cashAssets),
      const DeepCollectionEquality().hash(_coinAssets));

  /// Create a copy of PhysicalAssetsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhysicalAssetsDtoImplCopyWith<_$PhysicalAssetsDtoImpl> get copyWith =>
      __$$PhysicalAssetsDtoImplCopyWithImpl<_$PhysicalAssetsDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PhysicalAssetsDtoImplToJson(
      this,
    );
  }
}

abstract class _PhysicalAssetsDto implements PhysicalAssetsDto {
  const factory _PhysicalAssetsDto(
          {@JsonKey(name: 'raw_assets')
          required final List<RawPhysicalAssetDto> rawAssets,
          @JsonKey(name: 'cash_assets')
          required final List<CashPhysicalAssetDto> cashAssets,
          @JsonKey(name: 'coin_assets')
          required final List<CoinPhysicalAssetDto> coinAssets}) =
      _$PhysicalAssetsDtoImpl;

  factory _PhysicalAssetsDto.fromJson(Map<String, dynamic> json) =
      _$PhysicalAssetsDtoImpl.fromJson;

  @override
  @JsonKey(name: 'raw_assets')
  List<RawPhysicalAssetDto> get rawAssets;
  @override
  @JsonKey(name: 'cash_assets')
  List<CashPhysicalAssetDto> get cashAssets;
  @override
  @JsonKey(name: 'coin_assets')
  List<CoinPhysicalAssetDto> get coinAssets;

  /// Create a copy of PhysicalAssetsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhysicalAssetsDtoImplCopyWith<_$PhysicalAssetsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RawPhysicalAssetDto _$RawPhysicalAssetDtoFromJson(Map<String, dynamic> json) {
  return _RawPhysicalAssetDto.fromJson(json);
}

/// @nodoc
mixin _$RawPhysicalAssetDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get possessed => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_weight')
  int get unitWeight => throw _privateConstructorUsedError;
  PreciousMetalTypeDto get composition => throw _privateConstructorUsedError;
  int get purity => throw _privateConstructorUsedError;

  /// Serializes this RawPhysicalAssetDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RawPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RawPhysicalAssetDtoCopyWith<RawPhysicalAssetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawPhysicalAssetDtoCopyWith<$Res> {
  factory $RawPhysicalAssetDtoCopyWith(
          RawPhysicalAssetDto value, $Res Function(RawPhysicalAssetDto) then) =
      _$RawPhysicalAssetDtoCopyWithImpl<$Res, RawPhysicalAssetDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      int possessed,
      @JsonKey(name: 'unit_weight') int unitWeight,
      PreciousMetalTypeDto composition,
      int purity});
}

/// @nodoc
class _$RawPhysicalAssetDtoCopyWithImpl<$Res, $Val extends RawPhysicalAssetDto>
    implements $RawPhysicalAssetDtoCopyWith<$Res> {
  _$RawPhysicalAssetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RawPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? possessed = null,
    Object? unitWeight = null,
    Object? composition = null,
    Object? purity = null,
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
      possessed: null == possessed
          ? _value.possessed
          : possessed // ignore: cast_nullable_to_non_nullable
              as int,
      unitWeight: null == unitWeight
          ? _value.unitWeight
          : unitWeight // ignore: cast_nullable_to_non_nullable
              as int,
      composition: null == composition
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTypeDto,
      purity: null == purity
          ? _value.purity
          : purity // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawPhysicalAssetDtoImplCopyWith<$Res>
    implements $RawPhysicalAssetDtoCopyWith<$Res> {
  factory _$$RawPhysicalAssetDtoImplCopyWith(_$RawPhysicalAssetDtoImpl value,
          $Res Function(_$RawPhysicalAssetDtoImpl) then) =
      __$$RawPhysicalAssetDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int possessed,
      @JsonKey(name: 'unit_weight') int unitWeight,
      PreciousMetalTypeDto composition,
      int purity});
}

/// @nodoc
class __$$RawPhysicalAssetDtoImplCopyWithImpl<$Res>
    extends _$RawPhysicalAssetDtoCopyWithImpl<$Res, _$RawPhysicalAssetDtoImpl>
    implements _$$RawPhysicalAssetDtoImplCopyWith<$Res> {
  __$$RawPhysicalAssetDtoImplCopyWithImpl(_$RawPhysicalAssetDtoImpl _value,
      $Res Function(_$RawPhysicalAssetDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? possessed = null,
    Object? unitWeight = null,
    Object? composition = null,
    Object? purity = null,
  }) {
    return _then(_$RawPhysicalAssetDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      possessed: null == possessed
          ? _value.possessed
          : possessed // ignore: cast_nullable_to_non_nullable
              as int,
      unitWeight: null == unitWeight
          ? _value.unitWeight
          : unitWeight // ignore: cast_nullable_to_non_nullable
              as int,
      composition: null == composition
          ? _value.composition
          : composition // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTypeDto,
      purity: null == purity
          ? _value.purity
          : purity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawPhysicalAssetDtoImpl implements _RawPhysicalAssetDto {
  const _$RawPhysicalAssetDtoImpl(
      {required this.id,
      required this.name,
      required this.possessed,
      @JsonKey(name: 'unit_weight') required this.unitWeight,
      required this.composition,
      required this.purity});

  factory _$RawPhysicalAssetDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawPhysicalAssetDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int possessed;
  @override
  @JsonKey(name: 'unit_weight')
  final int unitWeight;
  @override
  final PreciousMetalTypeDto composition;
  @override
  final int purity;

  @override
  String toString() {
    return 'RawPhysicalAssetDto(id: $id, name: $name, possessed: $possessed, unitWeight: $unitWeight, composition: $composition, purity: $purity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawPhysicalAssetDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.possessed, possessed) ||
                other.possessed == possessed) &&
            (identical(other.unitWeight, unitWeight) ||
                other.unitWeight == unitWeight) &&
            (identical(other.composition, composition) ||
                other.composition == composition) &&
            (identical(other.purity, purity) || other.purity == purity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, possessed, unitWeight, composition, purity);

  /// Create a copy of RawPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawPhysicalAssetDtoImplCopyWith<_$RawPhysicalAssetDtoImpl> get copyWith =>
      __$$RawPhysicalAssetDtoImplCopyWithImpl<_$RawPhysicalAssetDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RawPhysicalAssetDtoImplToJson(
      this,
    );
  }
}

abstract class _RawPhysicalAssetDto implements RawPhysicalAssetDto {
  const factory _RawPhysicalAssetDto(
      {required final int id,
      required final String name,
      required final int possessed,
      @JsonKey(name: 'unit_weight') required final int unitWeight,
      required final PreciousMetalTypeDto composition,
      required final int purity}) = _$RawPhysicalAssetDtoImpl;

  factory _RawPhysicalAssetDto.fromJson(Map<String, dynamic> json) =
      _$RawPhysicalAssetDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get possessed;
  @override
  @JsonKey(name: 'unit_weight')
  int get unitWeight;
  @override
  PreciousMetalTypeDto get composition;
  @override
  int get purity;

  /// Create a copy of RawPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawPhysicalAssetDtoImplCopyWith<_$RawPhysicalAssetDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CashPhysicalAssetDto _$CashPhysicalAssetDtoFromJson(Map<String, dynamic> json) {
  return _CashPhysicalAssetDto.fromJson(json);
}

/// @nodoc
mixin _$CashPhysicalAssetDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get possessed => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_value')
  int get unitValue => throw _privateConstructorUsedError;

  /// Serializes this CashPhysicalAssetDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CashPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CashPhysicalAssetDtoCopyWith<CashPhysicalAssetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CashPhysicalAssetDtoCopyWith<$Res> {
  factory $CashPhysicalAssetDtoCopyWith(CashPhysicalAssetDto value,
          $Res Function(CashPhysicalAssetDto) then) =
      _$CashPhysicalAssetDtoCopyWithImpl<$Res, CashPhysicalAssetDto>;
  @useResult
  $Res call(
      {int id,
      String name,
      int possessed,
      @JsonKey(name: 'unit_value') int unitValue});
}

/// @nodoc
class _$CashPhysicalAssetDtoCopyWithImpl<$Res,
        $Val extends CashPhysicalAssetDto>
    implements $CashPhysicalAssetDtoCopyWith<$Res> {
  _$CashPhysicalAssetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CashPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? possessed = null,
    Object? unitValue = null,
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
      possessed: null == possessed
          ? _value.possessed
          : possessed // ignore: cast_nullable_to_non_nullable
              as int,
      unitValue: null == unitValue
          ? _value.unitValue
          : unitValue // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CashPhysicalAssetDtoImplCopyWith<$Res>
    implements $CashPhysicalAssetDtoCopyWith<$Res> {
  factory _$$CashPhysicalAssetDtoImplCopyWith(_$CashPhysicalAssetDtoImpl value,
          $Res Function(_$CashPhysicalAssetDtoImpl) then) =
      __$$CashPhysicalAssetDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int possessed,
      @JsonKey(name: 'unit_value') int unitValue});
}

/// @nodoc
class __$$CashPhysicalAssetDtoImplCopyWithImpl<$Res>
    extends _$CashPhysicalAssetDtoCopyWithImpl<$Res, _$CashPhysicalAssetDtoImpl>
    implements _$$CashPhysicalAssetDtoImplCopyWith<$Res> {
  __$$CashPhysicalAssetDtoImplCopyWithImpl(_$CashPhysicalAssetDtoImpl _value,
      $Res Function(_$CashPhysicalAssetDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CashPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? possessed = null,
    Object? unitValue = null,
  }) {
    return _then(_$CashPhysicalAssetDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      possessed: null == possessed
          ? _value.possessed
          : possessed // ignore: cast_nullable_to_non_nullable
              as int,
      unitValue: null == unitValue
          ? _value.unitValue
          : unitValue // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CashPhysicalAssetDtoImpl implements _CashPhysicalAssetDto {
  const _$CashPhysicalAssetDtoImpl(
      {required this.id,
      required this.name,
      required this.possessed,
      @JsonKey(name: 'unit_value') required this.unitValue});

  factory _$CashPhysicalAssetDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CashPhysicalAssetDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int possessed;
  @override
  @JsonKey(name: 'unit_value')
  final int unitValue;

  @override
  String toString() {
    return 'CashPhysicalAssetDto(id: $id, name: $name, possessed: $possessed, unitValue: $unitValue)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CashPhysicalAssetDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.possessed, possessed) ||
                other.possessed == possessed) &&
            (identical(other.unitValue, unitValue) ||
                other.unitValue == unitValue));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, possessed, unitValue);

  /// Create a copy of CashPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CashPhysicalAssetDtoImplCopyWith<_$CashPhysicalAssetDtoImpl>
      get copyWith =>
          __$$CashPhysicalAssetDtoImplCopyWithImpl<_$CashPhysicalAssetDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CashPhysicalAssetDtoImplToJson(
      this,
    );
  }
}

abstract class _CashPhysicalAssetDto implements CashPhysicalAssetDto {
  const factory _CashPhysicalAssetDto(
          {required final int id,
          required final String name,
          required final int possessed,
          @JsonKey(name: 'unit_value') required final int unitValue}) =
      _$CashPhysicalAssetDtoImpl;

  factory _CashPhysicalAssetDto.fromJson(Map<String, dynamic> json) =
      _$CashPhysicalAssetDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get possessed;
  @override
  @JsonKey(name: 'unit_value')
  int get unitValue;

  /// Create a copy of CashPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CashPhysicalAssetDtoImplCopyWith<_$CashPhysicalAssetDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CoinPhysicalAssetDto _$CoinPhysicalAssetDtoFromJson(Map<String, dynamic> json) {
  return _CoinPhysicalAssetDto.fromJson(json);
}

/// @nodoc
mixin _$CoinPhysicalAssetDto {
  int get possessed => throw _privateConstructorUsedError;
  @JsonKey(name: 'coin_data')
  CoinDto get data => throw _privateConstructorUsedError;

  /// Serializes this CoinPhysicalAssetDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoinPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinPhysicalAssetDtoCopyWith<CoinPhysicalAssetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinPhysicalAssetDtoCopyWith<$Res> {
  factory $CoinPhysicalAssetDtoCopyWith(CoinPhysicalAssetDto value,
          $Res Function(CoinPhysicalAssetDto) then) =
      _$CoinPhysicalAssetDtoCopyWithImpl<$Res, CoinPhysicalAssetDto>;
  @useResult
  $Res call({int possessed, @JsonKey(name: 'coin_data') CoinDto data});

  $CoinDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$CoinPhysicalAssetDtoCopyWithImpl<$Res,
        $Val extends CoinPhysicalAssetDto>
    implements $CoinPhysicalAssetDtoCopyWith<$Res> {
  _$CoinPhysicalAssetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? possessed = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      possessed: null == possessed
          ? _value.possessed
          : possessed // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinDto,
    ) as $Val);
  }

  /// Create a copy of CoinPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoinDtoCopyWith<$Res> get data {
    return $CoinDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CoinPhysicalAssetDtoImplCopyWith<$Res>
    implements $CoinPhysicalAssetDtoCopyWith<$Res> {
  factory _$$CoinPhysicalAssetDtoImplCopyWith(_$CoinPhysicalAssetDtoImpl value,
          $Res Function(_$CoinPhysicalAssetDtoImpl) then) =
      __$$CoinPhysicalAssetDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int possessed, @JsonKey(name: 'coin_data') CoinDto data});

  @override
  $CoinDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$CoinPhysicalAssetDtoImplCopyWithImpl<$Res>
    extends _$CoinPhysicalAssetDtoCopyWithImpl<$Res, _$CoinPhysicalAssetDtoImpl>
    implements _$$CoinPhysicalAssetDtoImplCopyWith<$Res> {
  __$$CoinPhysicalAssetDtoImplCopyWithImpl(_$CoinPhysicalAssetDtoImpl _value,
      $Res Function(_$CoinPhysicalAssetDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? possessed = null,
    Object? data = null,
  }) {
    return _then(_$CoinPhysicalAssetDtoImpl(
      possessed: null == possessed
          ? _value.possessed
          : possessed // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as CoinDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinPhysicalAssetDtoImpl implements _CoinPhysicalAssetDto {
  const _$CoinPhysicalAssetDtoImpl(
      {required this.possessed,
      @JsonKey(name: 'coin_data') required this.data});

  factory _$CoinPhysicalAssetDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinPhysicalAssetDtoImplFromJson(json);

  @override
  final int possessed;
  @override
  @JsonKey(name: 'coin_data')
  final CoinDto data;

  @override
  String toString() {
    return 'CoinPhysicalAssetDto(possessed: $possessed, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinPhysicalAssetDtoImpl &&
            (identical(other.possessed, possessed) ||
                other.possessed == possessed) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, possessed, data);

  /// Create a copy of CoinPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinPhysicalAssetDtoImplCopyWith<_$CoinPhysicalAssetDtoImpl>
      get copyWith =>
          __$$CoinPhysicalAssetDtoImplCopyWithImpl<_$CoinPhysicalAssetDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinPhysicalAssetDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinPhysicalAssetDto implements CoinPhysicalAssetDto {
  const factory _CoinPhysicalAssetDto(
          {required final int possessed,
          @JsonKey(name: 'coin_data') required final CoinDto data}) =
      _$CoinPhysicalAssetDtoImpl;

  factory _CoinPhysicalAssetDto.fromJson(Map<String, dynamic> json) =
      _$CoinPhysicalAssetDtoImpl.fromJson;

  @override
  int get possessed;
  @override
  @JsonKey(name: 'coin_data')
  CoinDto get data;

  /// Create a copy of CoinPhysicalAssetDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinPhysicalAssetDtoImplCopyWith<_$CoinPhysicalAssetDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
