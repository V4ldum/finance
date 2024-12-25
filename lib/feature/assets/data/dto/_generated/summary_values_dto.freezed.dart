// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../summary_values_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SummaryValuesDto _$SummaryValuesDtoFromJson(Map<String, dynamic> json) {
  return _SummaryValuesDto.fromJson(json);
}

/// @nodoc
mixin _$SummaryValuesDto {
  double get amount => throw _privateConstructorUsedError;
  double get evolution => throw _privateConstructorUsedError;
  @JsonKey(name: 'evolution_percent', defaultValue: 0)
  double get evolutionPercent => throw _privateConstructorUsedError;

  /// Serializes this SummaryValuesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SummaryValuesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SummaryValuesDtoCopyWith<SummaryValuesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryValuesDtoCopyWith<$Res> {
  factory $SummaryValuesDtoCopyWith(
          SummaryValuesDto value, $Res Function(SummaryValuesDto) then) =
      _$SummaryValuesDtoCopyWithImpl<$Res, SummaryValuesDto>;
  @useResult
  $Res call(
      {double amount,
      double evolution,
      @JsonKey(name: 'evolution_percent', defaultValue: 0)
      double evolutionPercent});
}

/// @nodoc
class _$SummaryValuesDtoCopyWithImpl<$Res, $Val extends SummaryValuesDto>
    implements $SummaryValuesDtoCopyWith<$Res> {
  _$SummaryValuesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SummaryValuesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? evolution = null,
    Object? evolutionPercent = null,
  }) {
    return _then(_value.copyWith(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      evolution: null == evolution
          ? _value.evolution
          : evolution // ignore: cast_nullable_to_non_nullable
              as double,
      evolutionPercent: null == evolutionPercent
          ? _value.evolutionPercent
          : evolutionPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SummaryValuesDtoImplCopyWith<$Res>
    implements $SummaryValuesDtoCopyWith<$Res> {
  factory _$$SummaryValuesDtoImplCopyWith(_$SummaryValuesDtoImpl value,
          $Res Function(_$SummaryValuesDtoImpl) then) =
      __$$SummaryValuesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double amount,
      double evolution,
      @JsonKey(name: 'evolution_percent', defaultValue: 0)
      double evolutionPercent});
}

/// @nodoc
class __$$SummaryValuesDtoImplCopyWithImpl<$Res>
    extends _$SummaryValuesDtoCopyWithImpl<$Res, _$SummaryValuesDtoImpl>
    implements _$$SummaryValuesDtoImplCopyWith<$Res> {
  __$$SummaryValuesDtoImplCopyWithImpl(_$SummaryValuesDtoImpl _value,
      $Res Function(_$SummaryValuesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SummaryValuesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
    Object? evolution = null,
    Object? evolutionPercent = null,
  }) {
    return _then(_$SummaryValuesDtoImpl(
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      evolution: null == evolution
          ? _value.evolution
          : evolution // ignore: cast_nullable_to_non_nullable
              as double,
      evolutionPercent: null == evolutionPercent
          ? _value.evolutionPercent
          : evolutionPercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SummaryValuesDtoImpl implements _SummaryValuesDto {
  const _$SummaryValuesDtoImpl(
      {required this.amount,
      required this.evolution,
      @JsonKey(name: 'evolution_percent', defaultValue: 0)
      required this.evolutionPercent});

  factory _$SummaryValuesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SummaryValuesDtoImplFromJson(json);

  @override
  final double amount;
  @override
  final double evolution;
  @override
  @JsonKey(name: 'evolution_percent', defaultValue: 0)
  final double evolutionPercent;

  @override
  String toString() {
    return 'SummaryValuesDto(amount: $amount, evolution: $evolution, evolutionPercent: $evolutionPercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SummaryValuesDtoImpl &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.evolution, evolution) ||
                other.evolution == evolution) &&
            (identical(other.evolutionPercent, evolutionPercent) ||
                other.evolutionPercent == evolutionPercent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, amount, evolution, evolutionPercent);

  /// Create a copy of SummaryValuesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SummaryValuesDtoImplCopyWith<_$SummaryValuesDtoImpl> get copyWith =>
      __$$SummaryValuesDtoImplCopyWithImpl<_$SummaryValuesDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SummaryValuesDtoImplToJson(
      this,
    );
  }
}

abstract class _SummaryValuesDto implements SummaryValuesDto {
  const factory _SummaryValuesDto(
      {required final double amount,
      required final double evolution,
      @JsonKey(name: 'evolution_percent', defaultValue: 0)
      required final double evolutionPercent}) = _$SummaryValuesDtoImpl;

  factory _SummaryValuesDto.fromJson(Map<String, dynamic> json) =
      _$SummaryValuesDtoImpl.fromJson;

  @override
  double get amount;
  @override
  double get evolution;
  @override
  @JsonKey(name: 'evolution_percent', defaultValue: 0)
  double get evolutionPercent;

  /// Create a copy of SummaryValuesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SummaryValuesDtoImplCopyWith<_$SummaryValuesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
