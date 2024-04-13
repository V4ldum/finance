// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../trade_values_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TradeValuesDto _$TradeValuesDtoFromJson(Map<String, dynamic> json) {
  return _TradeValuesDto.fromJson(json);
}

/// @nodoc
mixin _$TradeValuesDto {
  TradeValueDto get gold => throw _privateConstructorUsedError;
  TradeValueDto get silver => throw _privateConstructorUsedError;
  @JsonKey(name: 'sp_500')
  TradeValueDto get sp500 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeValuesDtoCopyWith<TradeValuesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeValuesDtoCopyWith<$Res> {
  factory $TradeValuesDtoCopyWith(
          TradeValuesDto value, $Res Function(TradeValuesDto) then) =
      _$TradeValuesDtoCopyWithImpl<$Res, TradeValuesDto>;
  @useResult
  $Res call(
      {TradeValueDto gold,
      TradeValueDto silver,
      @JsonKey(name: 'sp_500') TradeValueDto sp500});

  $TradeValueDtoCopyWith<$Res> get gold;
  $TradeValueDtoCopyWith<$Res> get silver;
  $TradeValueDtoCopyWith<$Res> get sp500;
}

/// @nodoc
class _$TradeValuesDtoCopyWithImpl<$Res, $Val extends TradeValuesDto>
    implements $TradeValuesDtoCopyWith<$Res> {
  _$TradeValuesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gold = null,
    Object? silver = null,
    Object? sp500 = null,
  }) {
    return _then(_value.copyWith(
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as TradeValueDto,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as TradeValueDto,
      sp500: null == sp500
          ? _value.sp500
          : sp500 // ignore: cast_nullable_to_non_nullable
              as TradeValueDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TradeValueDtoCopyWith<$Res> get gold {
    return $TradeValueDtoCopyWith<$Res>(_value.gold, (value) {
      return _then(_value.copyWith(gold: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TradeValueDtoCopyWith<$Res> get silver {
    return $TradeValueDtoCopyWith<$Res>(_value.silver, (value) {
      return _then(_value.copyWith(silver: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TradeValueDtoCopyWith<$Res> get sp500 {
    return $TradeValueDtoCopyWith<$Res>(_value.sp500, (value) {
      return _then(_value.copyWith(sp500: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TradeValuesDtoImplCopyWith<$Res>
    implements $TradeValuesDtoCopyWith<$Res> {
  factory _$$TradeValuesDtoImplCopyWith(_$TradeValuesDtoImpl value,
          $Res Function(_$TradeValuesDtoImpl) then) =
      __$$TradeValuesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TradeValueDto gold,
      TradeValueDto silver,
      @JsonKey(name: 'sp_500') TradeValueDto sp500});

  @override
  $TradeValueDtoCopyWith<$Res> get gold;
  @override
  $TradeValueDtoCopyWith<$Res> get silver;
  @override
  $TradeValueDtoCopyWith<$Res> get sp500;
}

/// @nodoc
class __$$TradeValuesDtoImplCopyWithImpl<$Res>
    extends _$TradeValuesDtoCopyWithImpl<$Res, _$TradeValuesDtoImpl>
    implements _$$TradeValuesDtoImplCopyWith<$Res> {
  __$$TradeValuesDtoImplCopyWithImpl(
      _$TradeValuesDtoImpl _value, $Res Function(_$TradeValuesDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? gold = null,
    Object? silver = null,
    Object? sp500 = null,
  }) {
    return _then(_$TradeValuesDtoImpl(
      gold: null == gold
          ? _value.gold
          : gold // ignore: cast_nullable_to_non_nullable
              as TradeValueDto,
      silver: null == silver
          ? _value.silver
          : silver // ignore: cast_nullable_to_non_nullable
              as TradeValueDto,
      sp500: null == sp500
          ? _value.sp500
          : sp500 // ignore: cast_nullable_to_non_nullable
              as TradeValueDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeValuesDtoImpl implements _TradeValuesDto {
  const _$TradeValuesDtoImpl(
      {required this.gold,
      required this.silver,
      @JsonKey(name: 'sp_500') required this.sp500});

  factory _$TradeValuesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeValuesDtoImplFromJson(json);

  @override
  final TradeValueDto gold;
  @override
  final TradeValueDto silver;
  @override
  @JsonKey(name: 'sp_500')
  final TradeValueDto sp500;

  @override
  String toString() {
    return 'TradeValuesDto(gold: $gold, silver: $silver, sp500: $sp500)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeValuesDtoImpl &&
            (identical(other.gold, gold) || other.gold == gold) &&
            (identical(other.silver, silver) || other.silver == silver) &&
            (identical(other.sp500, sp500) || other.sp500 == sp500));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, gold, silver, sp500);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeValuesDtoImplCopyWith<_$TradeValuesDtoImpl> get copyWith =>
      __$$TradeValuesDtoImplCopyWithImpl<_$TradeValuesDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeValuesDtoImplToJson(
      this,
    );
  }
}

abstract class _TradeValuesDto implements TradeValuesDto {
  const factory _TradeValuesDto(
          {required final TradeValueDto gold,
          required final TradeValueDto silver,
          @JsonKey(name: 'sp_500') required final TradeValueDto sp500}) =
      _$TradeValuesDtoImpl;

  factory _TradeValuesDto.fromJson(Map<String, dynamic> json) =
      _$TradeValuesDtoImpl.fromJson;

  @override
  TradeValueDto get gold;
  @override
  TradeValueDto get silver;
  @override
  @JsonKey(name: 'sp_500')
  TradeValueDto get sp500;
  @override
  @JsonKey(ignore: true)
  _$$TradeValuesDtoImplCopyWith<_$TradeValuesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TradeValueDto _$TradeValueDtoFromJson(Map<String, dynamic> json) {
  return _TradeValueDto.fromJson(json);
}

/// @nodoc
mixin _$TradeValueDto {
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_update')
  DateTime get lastUpdate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TradeValueDtoCopyWith<TradeValueDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TradeValueDtoCopyWith<$Res> {
  factory $TradeValueDtoCopyWith(
          TradeValueDto value, $Res Function(TradeValueDto) then) =
      _$TradeValueDtoCopyWithImpl<$Res, TradeValueDto>;
  @useResult
  $Res call({double price, @JsonKey(name: 'last_update') DateTime lastUpdate});
}

/// @nodoc
class _$TradeValueDtoCopyWithImpl<$Res, $Val extends TradeValueDto>
    implements $TradeValueDtoCopyWith<$Res> {
  _$TradeValueDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? lastUpdate = null,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TradeValueDtoImplCopyWith<$Res>
    implements $TradeValueDtoCopyWith<$Res> {
  factory _$$TradeValueDtoImplCopyWith(
          _$TradeValueDtoImpl value, $Res Function(_$TradeValueDtoImpl) then) =
      __$$TradeValueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double price, @JsonKey(name: 'last_update') DateTime lastUpdate});
}

/// @nodoc
class __$$TradeValueDtoImplCopyWithImpl<$Res>
    extends _$TradeValueDtoCopyWithImpl<$Res, _$TradeValueDtoImpl>
    implements _$$TradeValueDtoImplCopyWith<$Res> {
  __$$TradeValueDtoImplCopyWithImpl(
      _$TradeValueDtoImpl _value, $Res Function(_$TradeValueDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? lastUpdate = null,
  }) {
    return _then(_$TradeValueDtoImpl(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdate: null == lastUpdate
          ? _value.lastUpdate
          : lastUpdate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TradeValueDtoImpl implements _TradeValueDto {
  const _$TradeValueDtoImpl(
      {required this.price,
      @JsonKey(name: 'last_update') required this.lastUpdate});

  factory _$TradeValueDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TradeValueDtoImplFromJson(json);

  @override
  final double price;
  @override
  @JsonKey(name: 'last_update')
  final DateTime lastUpdate;

  @override
  String toString() {
    return 'TradeValueDto(price: $price, lastUpdate: $lastUpdate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TradeValueDtoImpl &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.lastUpdate, lastUpdate) ||
                other.lastUpdate == lastUpdate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, price, lastUpdate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TradeValueDtoImplCopyWith<_$TradeValueDtoImpl> get copyWith =>
      __$$TradeValueDtoImplCopyWithImpl<_$TradeValueDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TradeValueDtoImplToJson(
      this,
    );
  }
}

abstract class _TradeValueDto implements TradeValueDto {
  const factory _TradeValueDto(
          {required final double price,
          @JsonKey(name: 'last_update') required final DateTime lastUpdate}) =
      _$TradeValueDtoImpl;

  factory _TradeValueDto.fromJson(Map<String, dynamic> json) =
      _$TradeValueDtoImpl.fromJson;

  @override
  double get price;
  @override
  @JsonKey(name: 'last_update')
  DateTime get lastUpdate;
  @override
  @JsonKey(ignore: true)
  _$$TradeValueDtoImplCopyWith<_$TradeValueDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
