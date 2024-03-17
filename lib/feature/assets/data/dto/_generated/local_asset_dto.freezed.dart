// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../local_asset_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LocalAssetDto _$LocalAssetDtoFromJson(Map<String, dynamic> json) {
  return _LocalAssetDto.fromJson(json);
}

/// @nodoc
mixin _$LocalAssetDto {
  String get name => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get value => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalAssetDtoCopyWith<LocalAssetDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalAssetDtoCopyWith<$Res> {
  factory $LocalAssetDtoCopyWith(
          LocalAssetDto value, $Res Function(LocalAssetDto) then) =
      _$LocalAssetDtoCopyWithImpl<$Res, LocalAssetDto>;
  @useResult
  $Res call({String name, double amount, double value});
}

/// @nodoc
class _$LocalAssetDtoCopyWithImpl<$Res, $Val extends LocalAssetDto>
    implements $LocalAssetDtoCopyWith<$Res> {
  _$LocalAssetDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocalAssetDtoImplCopyWith<$Res>
    implements $LocalAssetDtoCopyWith<$Res> {
  factory _$$LocalAssetDtoImplCopyWith(
          _$LocalAssetDtoImpl value, $Res Function(_$LocalAssetDtoImpl) then) =
      __$$LocalAssetDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double amount, double value});
}

/// @nodoc
class __$$LocalAssetDtoImplCopyWithImpl<$Res>
    extends _$LocalAssetDtoCopyWithImpl<$Res, _$LocalAssetDtoImpl>
    implements _$$LocalAssetDtoImplCopyWith<$Res> {
  __$$LocalAssetDtoImplCopyWithImpl(
      _$LocalAssetDtoImpl _value, $Res Function(_$LocalAssetDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? amount = null,
    Object? value = null,
  }) {
    return _then(_$LocalAssetDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocalAssetDtoImpl implements _LocalAssetDto {
  const _$LocalAssetDtoImpl(
      {required this.name, required this.amount, required this.value});

  factory _$LocalAssetDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocalAssetDtoImplFromJson(json);

  @override
  final String name;
  @override
  final double amount;
  @override
  final double value;

  @override
  String toString() {
    return 'LocalAssetDto(name: $name, amount: $amount, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAssetDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, amount, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalAssetDtoImplCopyWith<_$LocalAssetDtoImpl> get copyWith =>
      __$$LocalAssetDtoImplCopyWithImpl<_$LocalAssetDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocalAssetDtoImplToJson(
      this,
    );
  }
}

abstract class _LocalAssetDto implements LocalAssetDto {
  const factory _LocalAssetDto(
      {required final String name,
      required final double amount,
      required final double value}) = _$LocalAssetDtoImpl;

  factory _LocalAssetDto.fromJson(Map<String, dynamic> json) =
      _$LocalAssetDtoImpl.fromJson;

  @override
  String get name;
  @override
  double get amount;
  @override
  double get value;
  @override
  @JsonKey(ignore: true)
  _$$LocalAssetDtoImplCopyWith<_$LocalAssetDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
