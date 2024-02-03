// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../geographical_repartition_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GeographicalRepartitionDto _$GeographicalRepartitionDtoFromJson(
    Map<String, dynamic> json) {
  return _GeographicalRepartitionDto.fromJson(json);
}

/// @nodoc
mixin _$GeographicalRepartitionDto {
  GeographicalRepartitionResultDto get result =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeographicalRepartitionDtoCopyWith<GeographicalRepartitionDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeographicalRepartitionDtoCopyWith<$Res> {
  factory $GeographicalRepartitionDtoCopyWith(GeographicalRepartitionDto value,
          $Res Function(GeographicalRepartitionDto) then) =
      _$GeographicalRepartitionDtoCopyWithImpl<$Res,
          GeographicalRepartitionDto>;
  @useResult
  $Res call({GeographicalRepartitionResultDto result});

  $GeographicalRepartitionResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$GeographicalRepartitionDtoCopyWithImpl<$Res,
        $Val extends GeographicalRepartitionDto>
    implements $GeographicalRepartitionDtoCopyWith<$Res> {
  _$GeographicalRepartitionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GeographicalRepartitionResultDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeographicalRepartitionResultDtoCopyWith<$Res> get result {
    return $GeographicalRepartitionResultDtoCopyWith<$Res>(_value.result,
        (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeographicalRepartitionDtoImplCopyWith<$Res>
    implements $GeographicalRepartitionDtoCopyWith<$Res> {
  factory _$$GeographicalRepartitionDtoImplCopyWith(
          _$GeographicalRepartitionDtoImpl value,
          $Res Function(_$GeographicalRepartitionDtoImpl) then) =
      __$$GeographicalRepartitionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GeographicalRepartitionResultDto result});

  @override
  $GeographicalRepartitionResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$GeographicalRepartitionDtoImplCopyWithImpl<$Res>
    extends _$GeographicalRepartitionDtoCopyWithImpl<$Res,
        _$GeographicalRepartitionDtoImpl>
    implements _$$GeographicalRepartitionDtoImplCopyWith<$Res> {
  __$$GeographicalRepartitionDtoImplCopyWithImpl(
      _$GeographicalRepartitionDtoImpl _value,
      $Res Function(_$GeographicalRepartitionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$GeographicalRepartitionDtoImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as GeographicalRepartitionResultDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeographicalRepartitionDtoImpl implements _GeographicalRepartitionDto {
  const _$GeographicalRepartitionDtoImpl({required this.result});

  factory _$GeographicalRepartitionDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GeographicalRepartitionDtoImplFromJson(json);

  @override
  final GeographicalRepartitionResultDto result;

  @override
  String toString() {
    return 'GeographicalRepartitionDto(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeographicalRepartitionDtoImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeographicalRepartitionDtoImplCopyWith<_$GeographicalRepartitionDtoImpl>
      get copyWith => __$$GeographicalRepartitionDtoImplCopyWithImpl<
          _$GeographicalRepartitionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeographicalRepartitionDtoImplToJson(
      this,
    );
  }
}

abstract class _GeographicalRepartitionDto
    implements GeographicalRepartitionDto {
  const factory _GeographicalRepartitionDto(
          {required final GeographicalRepartitionResultDto result}) =
      _$GeographicalRepartitionDtoImpl;

  factory _GeographicalRepartitionDto.fromJson(Map<String, dynamic> json) =
      _$GeographicalRepartitionDtoImpl.fromJson;

  @override
  GeographicalRepartitionResultDto get result;
  @override
  @JsonKey(ignore: true)
  _$$GeographicalRepartitionDtoImplCopyWith<_$GeographicalRepartitionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GeographicalRepartitionResultDto _$GeographicalRepartitionResultDtoFromJson(
    Map<String, dynamic> json) {
  return _GeographicalRepartitionResultDto.fromJson(json);
}

/// @nodoc
mixin _$GeographicalRepartitionResultDto {
  double get total => throw _privateConstructorUsedError;
  List<GeographicalRepartitionDistributionItemDto> get distribution =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeographicalRepartitionResultDtoCopyWith<GeographicalRepartitionResultDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeographicalRepartitionResultDtoCopyWith<$Res> {
  factory $GeographicalRepartitionResultDtoCopyWith(
          GeographicalRepartitionResultDto value,
          $Res Function(GeographicalRepartitionResultDto) then) =
      _$GeographicalRepartitionResultDtoCopyWithImpl<$Res,
          GeographicalRepartitionResultDto>;
  @useResult
  $Res call(
      {double total,
      List<GeographicalRepartitionDistributionItemDto> distribution});
}

/// @nodoc
class _$GeographicalRepartitionResultDtoCopyWithImpl<$Res,
        $Val extends GeographicalRepartitionResultDto>
    implements $GeographicalRepartitionResultDtoCopyWith<$Res> {
  _$GeographicalRepartitionResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? distribution = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      distribution: null == distribution
          ? _value.distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as List<GeographicalRepartitionDistributionItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeographicalRepartitionResultDtoImplCopyWith<$Res>
    implements $GeographicalRepartitionResultDtoCopyWith<$Res> {
  factory _$$GeographicalRepartitionResultDtoImplCopyWith(
          _$GeographicalRepartitionResultDtoImpl value,
          $Res Function(_$GeographicalRepartitionResultDtoImpl) then) =
      __$$GeographicalRepartitionResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double total,
      List<GeographicalRepartitionDistributionItemDto> distribution});
}

/// @nodoc
class __$$GeographicalRepartitionResultDtoImplCopyWithImpl<$Res>
    extends _$GeographicalRepartitionResultDtoCopyWithImpl<$Res,
        _$GeographicalRepartitionResultDtoImpl>
    implements _$$GeographicalRepartitionResultDtoImplCopyWith<$Res> {
  __$$GeographicalRepartitionResultDtoImplCopyWithImpl(
      _$GeographicalRepartitionResultDtoImpl _value,
      $Res Function(_$GeographicalRepartitionResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? distribution = null,
  }) {
    return _then(_$GeographicalRepartitionResultDtoImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      distribution: null == distribution
          ? _value._distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as List<GeographicalRepartitionDistributionItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeographicalRepartitionResultDtoImpl
    implements _GeographicalRepartitionResultDto {
  const _$GeographicalRepartitionResultDtoImpl(
      {required this.total,
      required final List<GeographicalRepartitionDistributionItemDto>
          distribution})
      : _distribution = distribution;

  factory _$GeographicalRepartitionResultDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GeographicalRepartitionResultDtoImplFromJson(json);

  @override
  final double total;
  final List<GeographicalRepartitionDistributionItemDto> _distribution;
  @override
  List<GeographicalRepartitionDistributionItemDto> get distribution {
    if (_distribution is EqualUnmodifiableListView) return _distribution;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_distribution);
  }

  @override
  String toString() {
    return 'GeographicalRepartitionResultDto(total: $total, distribution: $distribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeographicalRepartitionResultDtoImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._distribution, _distribution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_distribution));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeographicalRepartitionResultDtoImplCopyWith<
          _$GeographicalRepartitionResultDtoImpl>
      get copyWith => __$$GeographicalRepartitionResultDtoImplCopyWithImpl<
          _$GeographicalRepartitionResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeographicalRepartitionResultDtoImplToJson(
      this,
    );
  }
}

abstract class _GeographicalRepartitionResultDto
    implements GeographicalRepartitionResultDto {
  const factory _GeographicalRepartitionResultDto(
      {required final double total,
      required final List<GeographicalRepartitionDistributionItemDto>
          distribution}) = _$GeographicalRepartitionResultDtoImpl;

  factory _GeographicalRepartitionResultDto.fromJson(
          Map<String, dynamic> json) =
      _$GeographicalRepartitionResultDtoImpl.fromJson;

  @override
  double get total;
  @override
  List<GeographicalRepartitionDistributionItemDto> get distribution;
  @override
  @JsonKey(ignore: true)
  _$$GeographicalRepartitionResultDtoImplCopyWith<
          _$GeographicalRepartitionResultDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GeographicalRepartitionDistributionItemDto
    _$GeographicalRepartitionDistributionItemDtoFromJson(
        Map<String, dynamic> json) {
  return _GeographicalRepartitionDistributionItemDto.fromJson(json);
}

/// @nodoc
mixin _$GeographicalRepartitionDistributionItemDto {
  String get label => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  double get share => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeographicalRepartitionDistributionItemDtoCopyWith<
          GeographicalRepartitionDistributionItemDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeographicalRepartitionDistributionItemDtoCopyWith<$Res> {
  factory $GeographicalRepartitionDistributionItemDtoCopyWith(
          GeographicalRepartitionDistributionItemDto value,
          $Res Function(GeographicalRepartitionDistributionItemDto) then) =
      _$GeographicalRepartitionDistributionItemDtoCopyWithImpl<$Res,
          GeographicalRepartitionDistributionItemDto>;
  @useResult
  $Res call({String label, double amount, double share});
}

/// @nodoc
class _$GeographicalRepartitionDistributionItemDtoCopyWithImpl<$Res,
        $Val extends GeographicalRepartitionDistributionItemDto>
    implements $GeographicalRepartitionDistributionItemDtoCopyWith<$Res> {
  _$GeographicalRepartitionDistributionItemDtoCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? share = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeographicalRepartitionDistributionItemDtoImplCopyWith<$Res>
    implements $GeographicalRepartitionDistributionItemDtoCopyWith<$Res> {
  factory _$$GeographicalRepartitionDistributionItemDtoImplCopyWith(
          _$GeographicalRepartitionDistributionItemDtoImpl value,
          $Res Function(_$GeographicalRepartitionDistributionItemDtoImpl)
              then) =
      __$$GeographicalRepartitionDistributionItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, double amount, double share});
}

/// @nodoc
class __$$GeographicalRepartitionDistributionItemDtoImplCopyWithImpl<$Res>
    extends _$GeographicalRepartitionDistributionItemDtoCopyWithImpl<$Res,
        _$GeographicalRepartitionDistributionItemDtoImpl>
    implements _$$GeographicalRepartitionDistributionItemDtoImplCopyWith<$Res> {
  __$$GeographicalRepartitionDistributionItemDtoImplCopyWithImpl(
      _$GeographicalRepartitionDistributionItemDtoImpl _value,
      $Res Function(_$GeographicalRepartitionDistributionItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? amount = null,
    Object? share = null,
  }) {
    return _then(_$GeographicalRepartitionDistributionItemDtoImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      share: null == share
          ? _value.share
          : share // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeographicalRepartitionDistributionItemDtoImpl
    implements _GeographicalRepartitionDistributionItemDto {
  const _$GeographicalRepartitionDistributionItemDtoImpl(
      {required this.label, required this.amount, required this.share});

  factory _$GeographicalRepartitionDistributionItemDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GeographicalRepartitionDistributionItemDtoImplFromJson(json);

  @override
  final String label;
  @override
  final double amount;
  @override
  final double share;

  @override
  String toString() {
    return 'GeographicalRepartitionDistributionItemDto(label: $label, amount: $amount, share: $share)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeographicalRepartitionDistributionItemDtoImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.share, share) || other.share == share));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, amount, share);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeographicalRepartitionDistributionItemDtoImplCopyWith<
          _$GeographicalRepartitionDistributionItemDtoImpl>
      get copyWith =>
          __$$GeographicalRepartitionDistributionItemDtoImplCopyWithImpl<
                  _$GeographicalRepartitionDistributionItemDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeographicalRepartitionDistributionItemDtoImplToJson(
      this,
    );
  }
}

abstract class _GeographicalRepartitionDistributionItemDto
    implements GeographicalRepartitionDistributionItemDto {
  const factory _GeographicalRepartitionDistributionItemDto(
          {required final String label,
          required final double amount,
          required final double share}) =
      _$GeographicalRepartitionDistributionItemDtoImpl;

  factory _GeographicalRepartitionDistributionItemDto.fromJson(
          Map<String, dynamic> json) =
      _$GeographicalRepartitionDistributionItemDtoImpl.fromJson;

  @override
  String get label;
  @override
  double get amount;
  @override
  double get share;
  @override
  @JsonKey(ignore: true)
  _$$GeographicalRepartitionDistributionItemDtoImplCopyWith<
          _$GeographicalRepartitionDistributionItemDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
