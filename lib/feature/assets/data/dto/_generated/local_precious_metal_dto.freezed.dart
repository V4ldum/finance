// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../local_precious_metal_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalPreciousMetalDto _$LocalPreciousMetalDtoFromJson(
    Map<String, dynamic> json) {
  return _LocalPreciousMetalDto.fromJson(json);
}

/// @nodoc
mixin _$LocalPreciousMetalDto {
  String get numistaId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get purity => throw _privateConstructorUsedError;
  double get weight => throw _privateConstructorUsedError;
  PreciousMetalTypeDto get metalType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalPreciousMetalDtoCopyWith<LocalPreciousMetalDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalPreciousMetalDtoCopyWith<$Res> {
  factory $LocalPreciousMetalDtoCopyWith(LocalPreciousMetalDto value,
          $Res Function(LocalPreciousMetalDto) then) =
      _$LocalPreciousMetalDtoCopyWithImpl<$Res, LocalPreciousMetalDto>;
  @useResult
  $Res call(
      {String numistaId,
      String name,
      double amount,
      double purity,
      double weight,
      PreciousMetalTypeDto metalType});
}

/// @nodoc
class _$LocalPreciousMetalDtoCopyWithImpl<$Res,
        $Val extends LocalPreciousMetalDto>
    implements $LocalPreciousMetalDtoCopyWith<$Res> {
  _$LocalPreciousMetalDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numistaId = null,
    Object? name = null,
    Object? amount = null,
    Object? purity = null,
    Object? weight = null,
    Object? metalType = null,
  }) {
    return _then(_value.copyWith(
      numistaId: null == numistaId
          ? _value.numistaId
          : numistaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      purity: null == purity
          ? _value.purity
          : purity // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      metalType: null == metalType
          ? _value.metalType
          : metalType // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTypeDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalPreciousMetalDtoImplCopyWith<$Res>
    implements $LocalPreciousMetalDtoCopyWith<$Res> {
  factory _$$LocalPreciousMetalDtoImplCopyWith(
          _$LocalPreciousMetalDtoImpl value,
          $Res Function(_$LocalPreciousMetalDtoImpl) then) =
      __$$LocalPreciousMetalDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String numistaId,
      String name,
      double amount,
      double purity,
      double weight,
      PreciousMetalTypeDto metalType});
}

/// @nodoc
class __$$LocalPreciousMetalDtoImplCopyWithImpl<$Res>
    extends _$LocalPreciousMetalDtoCopyWithImpl<$Res,
        _$LocalPreciousMetalDtoImpl>
    implements _$$LocalPreciousMetalDtoImplCopyWith<$Res> {
  __$$LocalPreciousMetalDtoImplCopyWithImpl(_$LocalPreciousMetalDtoImpl _value,
      $Res Function(_$LocalPreciousMetalDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numistaId = null,
    Object? name = null,
    Object? amount = null,
    Object? purity = null,
    Object? weight = null,
    Object? metalType = null,
  }) {
    return _then(_$LocalPreciousMetalDtoImpl(
      numistaId: null == numistaId
          ? _value.numistaId
          : numistaId // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      purity: null == purity
          ? _value.purity
          : purity // ignore: cast_nullable_to_non_nullable
              as double,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
      metalType: null == metalType
          ? _value.metalType
          : metalType // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTypeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalPreciousMetalDtoImpl implements _LocalPreciousMetalDto {
  const _$LocalPreciousMetalDtoImpl(
      {required this.numistaId,
      required this.name,
      required this.amount,
      required this.purity,
      required this.weight,
      required this.metalType});

  factory _$LocalPreciousMetalDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalPreciousMetalDtoImplFromJson(json);

  @override
  final String numistaId;
  @override
  final String name;
  @override
  final double amount;
  @override
  final double purity;
  @override
  final double weight;
  @override
  final PreciousMetalTypeDto metalType;

  @override
  String toString() {
    return 'LocalPreciousMetalDto(numistaId: $numistaId, name: $name, amount: $amount, purity: $purity, weight: $weight, metalType: $metalType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalPreciousMetalDtoImpl &&
            (identical(other.numistaId, numistaId) ||
                other.numistaId == numistaId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.purity, purity) || other.purity == purity) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.metalType, metalType) ||
                other.metalType == metalType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, numistaId, name, amount, purity, weight, metalType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalPreciousMetalDtoImplCopyWith<_$LocalPreciousMetalDtoImpl>
      get copyWith => __$$LocalPreciousMetalDtoImplCopyWithImpl<
          _$LocalPreciousMetalDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalPreciousMetalDtoImplToJson(
      this,
    );
  }
}

abstract class _LocalPreciousMetalDto implements LocalPreciousMetalDto {
  const factory _LocalPreciousMetalDto(
          {required final String numistaId,
          required final String name,
          required final double amount,
          required final double purity,
          required final double weight,
          required final PreciousMetalTypeDto metalType}) =
      _$LocalPreciousMetalDtoImpl;

  factory _LocalPreciousMetalDto.fromJson(Map<String, dynamic> json) =
      _$LocalPreciousMetalDtoImpl.fromJson;

  @override
  String get numistaId;
  @override
  String get name;
  @override
  double get amount;
  @override
  double get purity;
  @override
  double get weight;
  @override
  PreciousMetalTypeDto get metalType;
  @override
  @JsonKey(ignore: true)
  _$$LocalPreciousMetalDtoImplCopyWith<_$LocalPreciousMetalDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
