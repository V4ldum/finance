// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../precious_metal_trade_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreciousMetalTradeValueDto _$PreciousMetalTradeValueDtoFromJson(
    Map<String, dynamic> json) {
  return _PreciousMetalTradeValueDto.fromJson(json);
}

/// @nodoc
mixin _$PreciousMetalTradeValueDto {
  PreciousMetalTradeValueDataDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreciousMetalTradeValueDtoCopyWith<PreciousMetalTradeValueDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreciousMetalTradeValueDtoCopyWith<$Res> {
  factory $PreciousMetalTradeValueDtoCopyWith(PreciousMetalTradeValueDto value,
          $Res Function(PreciousMetalTradeValueDto) then) =
      _$PreciousMetalTradeValueDtoCopyWithImpl<$Res,
          PreciousMetalTradeValueDto>;
  @useResult
  $Res call({PreciousMetalTradeValueDataDto data});

  $PreciousMetalTradeValueDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$PreciousMetalTradeValueDtoCopyWithImpl<$Res,
        $Val extends PreciousMetalTradeValueDto>
    implements $PreciousMetalTradeValueDtoCopyWith<$Res> {
  _$PreciousMetalTradeValueDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTradeValueDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreciousMetalTradeValueDataDtoCopyWith<$Res> get data {
    return $PreciousMetalTradeValueDataDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreciousMetalTradeValueDtoImplCopyWith<$Res>
    implements $PreciousMetalTradeValueDtoCopyWith<$Res> {
  factory _$$PreciousMetalTradeValueDtoImplCopyWith(
          _$PreciousMetalTradeValueDtoImpl value,
          $Res Function(_$PreciousMetalTradeValueDtoImpl) then) =
      __$$PreciousMetalTradeValueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PreciousMetalTradeValueDataDto data});

  @override
  $PreciousMetalTradeValueDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$PreciousMetalTradeValueDtoImplCopyWithImpl<$Res>
    extends _$PreciousMetalTradeValueDtoCopyWithImpl<$Res,
        _$PreciousMetalTradeValueDtoImpl>
    implements _$$PreciousMetalTradeValueDtoImplCopyWith<$Res> {
  __$$PreciousMetalTradeValueDtoImplCopyWithImpl(
      _$PreciousMetalTradeValueDtoImpl _value,
      $Res Function(_$PreciousMetalTradeValueDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$PreciousMetalTradeValueDtoImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTradeValueDataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreciousMetalTradeValueDtoImpl implements _PreciousMetalTradeValueDto {
  const _$PreciousMetalTradeValueDtoImpl({required this.data});

  factory _$PreciousMetalTradeValueDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PreciousMetalTradeValueDtoImplFromJson(json);

  @override
  final PreciousMetalTradeValueDataDto data;

  @override
  String toString() {
    return 'PreciousMetalTradeValueDto(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreciousMetalTradeValueDtoImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreciousMetalTradeValueDtoImplCopyWith<_$PreciousMetalTradeValueDtoImpl>
      get copyWith => __$$PreciousMetalTradeValueDtoImplCopyWithImpl<
          _$PreciousMetalTradeValueDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreciousMetalTradeValueDtoImplToJson(
      this,
    );
  }
}

abstract class _PreciousMetalTradeValueDto
    implements PreciousMetalTradeValueDto {
  const factory _PreciousMetalTradeValueDto(
          {required final PreciousMetalTradeValueDataDto data}) =
      _$PreciousMetalTradeValueDtoImpl;

  factory _PreciousMetalTradeValueDto.fromJson(Map<String, dynamic> json) =
      _$PreciousMetalTradeValueDtoImpl.fromJson;

  @override
  PreciousMetalTradeValueDataDto get data;
  @override
  @JsonKey(ignore: true)
  _$$PreciousMetalTradeValueDtoImplCopyWith<_$PreciousMetalTradeValueDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreciousMetalTradeValueDataDto _$PreciousMetalTradeValueDataDtoFromJson(
    Map<String, dynamic> json) {
  return _PreciousMetalTradeValueDataDto.fromJson(json);
}

/// @nodoc
mixin _$PreciousMetalTradeValueDataDto {
  @JsonKey(name: 'GetMetalQuote')
  PreciousMetalTradeValueQuoteDto get quote =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreciousMetalTradeValueDataDtoCopyWith<PreciousMetalTradeValueDataDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreciousMetalTradeValueDataDtoCopyWith<$Res> {
  factory $PreciousMetalTradeValueDataDtoCopyWith(
          PreciousMetalTradeValueDataDto value,
          $Res Function(PreciousMetalTradeValueDataDto) then) =
      _$PreciousMetalTradeValueDataDtoCopyWithImpl<$Res,
          PreciousMetalTradeValueDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'GetMetalQuote') PreciousMetalTradeValueQuoteDto quote});

  $PreciousMetalTradeValueQuoteDtoCopyWith<$Res> get quote;
}

/// @nodoc
class _$PreciousMetalTradeValueDataDtoCopyWithImpl<$Res,
        $Val extends PreciousMetalTradeValueDataDto>
    implements $PreciousMetalTradeValueDataDtoCopyWith<$Res> {
  _$PreciousMetalTradeValueDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_value.copyWith(
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTradeValueQuoteDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreciousMetalTradeValueQuoteDtoCopyWith<$Res> get quote {
    return $PreciousMetalTradeValueQuoteDtoCopyWith<$Res>(_value.quote,
        (value) {
      return _then(_value.copyWith(quote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreciousMetalTradeValueDataDtoImplCopyWith<$Res>
    implements $PreciousMetalTradeValueDataDtoCopyWith<$Res> {
  factory _$$PreciousMetalTradeValueDataDtoImplCopyWith(
          _$PreciousMetalTradeValueDataDtoImpl value,
          $Res Function(_$PreciousMetalTradeValueDataDtoImpl) then) =
      __$$PreciousMetalTradeValueDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'GetMetalQuote') PreciousMetalTradeValueQuoteDto quote});

  @override
  $PreciousMetalTradeValueQuoteDtoCopyWith<$Res> get quote;
}

/// @nodoc
class __$$PreciousMetalTradeValueDataDtoImplCopyWithImpl<$Res>
    extends _$PreciousMetalTradeValueDataDtoCopyWithImpl<$Res,
        _$PreciousMetalTradeValueDataDtoImpl>
    implements _$$PreciousMetalTradeValueDataDtoImplCopyWith<$Res> {
  __$$PreciousMetalTradeValueDataDtoImplCopyWithImpl(
      _$PreciousMetalTradeValueDataDtoImpl _value,
      $Res Function(_$PreciousMetalTradeValueDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_$PreciousMetalTradeValueDataDtoImpl(
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTradeValueQuoteDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreciousMetalTradeValueDataDtoImpl
    implements _PreciousMetalTradeValueDataDto {
  const _$PreciousMetalTradeValueDataDtoImpl(
      {@JsonKey(name: 'GetMetalQuote') required this.quote});

  factory _$PreciousMetalTradeValueDataDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PreciousMetalTradeValueDataDtoImplFromJson(json);

  @override
  @JsonKey(name: 'GetMetalQuote')
  final PreciousMetalTradeValueQuoteDto quote;

  @override
  String toString() {
    return 'PreciousMetalTradeValueDataDto(quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreciousMetalTradeValueDataDtoImpl &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreciousMetalTradeValueDataDtoImplCopyWith<
          _$PreciousMetalTradeValueDataDtoImpl>
      get copyWith => __$$PreciousMetalTradeValueDataDtoImplCopyWithImpl<
          _$PreciousMetalTradeValueDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreciousMetalTradeValueDataDtoImplToJson(
      this,
    );
  }
}

abstract class _PreciousMetalTradeValueDataDto
    implements PreciousMetalTradeValueDataDto {
  const factory _PreciousMetalTradeValueDataDto(
          {@JsonKey(name: 'GetMetalQuote')
          required final PreciousMetalTradeValueQuoteDto quote}) =
      _$PreciousMetalTradeValueDataDtoImpl;

  factory _PreciousMetalTradeValueDataDto.fromJson(Map<String, dynamic> json) =
      _$PreciousMetalTradeValueDataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'GetMetalQuote')
  PreciousMetalTradeValueQuoteDto get quote;
  @override
  @JsonKey(ignore: true)
  _$$PreciousMetalTradeValueDataDtoImplCopyWith<
          _$PreciousMetalTradeValueDataDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreciousMetalTradeValueQuoteDto _$PreciousMetalTradeValueQuoteDtoFromJson(
    Map<String, dynamic> json) {
  return _PreciousMetalTradeValueQuoteDto.fromJson(json);
}

/// @nodoc
mixin _$PreciousMetalTradeValueQuoteDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'results', readValue: _convertResultsToResult)
  PreciousMetalTradeValueResultDto get result =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreciousMetalTradeValueQuoteDtoCopyWith<PreciousMetalTradeValueQuoteDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreciousMetalTradeValueQuoteDtoCopyWith<$Res> {
  factory $PreciousMetalTradeValueQuoteDtoCopyWith(
          PreciousMetalTradeValueQuoteDto value,
          $Res Function(PreciousMetalTradeValueQuoteDto) then) =
      _$PreciousMetalTradeValueQuoteDtoCopyWithImpl<$Res,
          PreciousMetalTradeValueQuoteDto>;
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'results', readValue: _convertResultsToResult)
      PreciousMetalTradeValueResultDto result});

  $PreciousMetalTradeValueResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$PreciousMetalTradeValueQuoteDtoCopyWithImpl<$Res,
        $Val extends PreciousMetalTradeValueQuoteDto>
    implements $PreciousMetalTradeValueQuoteDtoCopyWith<$Res> {
  _$PreciousMetalTradeValueQuoteDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTradeValueResultDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PreciousMetalTradeValueResultDtoCopyWith<$Res> get result {
    return $PreciousMetalTradeValueResultDtoCopyWith<$Res>(_value.result,
        (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PreciousMetalTradeValueQuoteDtoImplCopyWith<$Res>
    implements $PreciousMetalTradeValueQuoteDtoCopyWith<$Res> {
  factory _$$PreciousMetalTradeValueQuoteDtoImplCopyWith(
          _$PreciousMetalTradeValueQuoteDtoImpl value,
          $Res Function(_$PreciousMetalTradeValueQuoteDtoImpl) then) =
      __$$PreciousMetalTradeValueQuoteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      @JsonKey(name: 'results', readValue: _convertResultsToResult)
      PreciousMetalTradeValueResultDto result});

  @override
  $PreciousMetalTradeValueResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$PreciousMetalTradeValueQuoteDtoImplCopyWithImpl<$Res>
    extends _$PreciousMetalTradeValueQuoteDtoCopyWithImpl<$Res,
        _$PreciousMetalTradeValueQuoteDtoImpl>
    implements _$$PreciousMetalTradeValueQuoteDtoImplCopyWith<$Res> {
  __$$PreciousMetalTradeValueQuoteDtoImplCopyWithImpl(
      _$PreciousMetalTradeValueQuoteDtoImpl _value,
      $Res Function(_$PreciousMetalTradeValueQuoteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? result = null,
  }) {
    return _then(_$PreciousMetalTradeValueQuoteDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as PreciousMetalTradeValueResultDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreciousMetalTradeValueQuoteDtoImpl
    implements _PreciousMetalTradeValueQuoteDto {
  const _$PreciousMetalTradeValueQuoteDtoImpl(
      {required this.name,
      @JsonKey(name: 'results', readValue: _convertResultsToResult)
      required this.result});

  factory _$PreciousMetalTradeValueQuoteDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PreciousMetalTradeValueQuoteDtoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'results', readValue: _convertResultsToResult)
  final PreciousMetalTradeValueResultDto result;

  @override
  String toString() {
    return 'PreciousMetalTradeValueQuoteDto(name: $name, result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreciousMetalTradeValueQuoteDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreciousMetalTradeValueQuoteDtoImplCopyWith<
          _$PreciousMetalTradeValueQuoteDtoImpl>
      get copyWith => __$$PreciousMetalTradeValueQuoteDtoImplCopyWithImpl<
          _$PreciousMetalTradeValueQuoteDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreciousMetalTradeValueQuoteDtoImplToJson(
      this,
    );
  }
}

abstract class _PreciousMetalTradeValueQuoteDto
    implements PreciousMetalTradeValueQuoteDto {
  const factory _PreciousMetalTradeValueQuoteDto(
          {required final String name,
          @JsonKey(name: 'results', readValue: _convertResultsToResult)
          required final PreciousMetalTradeValueResultDto result}) =
      _$PreciousMetalTradeValueQuoteDtoImpl;

  factory _PreciousMetalTradeValueQuoteDto.fromJson(Map<String, dynamic> json) =
      _$PreciousMetalTradeValueQuoteDtoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'results', readValue: _convertResultsToResult)
  PreciousMetalTradeValueResultDto get result;
  @override
  @JsonKey(ignore: true)
  _$$PreciousMetalTradeValueQuoteDtoImplCopyWith<
          _$PreciousMetalTradeValueQuoteDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PreciousMetalTradeValueResultDto _$PreciousMetalTradeValueResultDtoFromJson(
    Map<String, dynamic> json) {
  return _PreciousMetalTradeValueResultDto.fromJson(json);
}

/// @nodoc
mixin _$PreciousMetalTradeValueResultDto {
  double get bid => throw _privateConstructorUsedError;
  double get change => throw _privateConstructorUsedError;
  @JsonKey(name: 'changePercentage')
  double get changePercent => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PreciousMetalTradeValueResultDtoCopyWith<PreciousMetalTradeValueResultDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreciousMetalTradeValueResultDtoCopyWith<$Res> {
  factory $PreciousMetalTradeValueResultDtoCopyWith(
          PreciousMetalTradeValueResultDto value,
          $Res Function(PreciousMetalTradeValueResultDto) then) =
      _$PreciousMetalTradeValueResultDtoCopyWithImpl<$Res,
          PreciousMetalTradeValueResultDto>;
  @useResult
  $Res call(
      {double bid,
      double change,
      @JsonKey(name: 'changePercentage') double changePercent});
}

/// @nodoc
class _$PreciousMetalTradeValueResultDtoCopyWithImpl<$Res,
        $Val extends PreciousMetalTradeValueResultDto>
    implements $PreciousMetalTradeValueResultDtoCopyWith<$Res> {
  _$PreciousMetalTradeValueResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bid = null,
    Object? change = null,
    Object? changePercent = null,
  }) {
    return _then(_value.copyWith(
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreciousMetalTradeValueResultDtoImplCopyWith<$Res>
    implements $PreciousMetalTradeValueResultDtoCopyWith<$Res> {
  factory _$$PreciousMetalTradeValueResultDtoImplCopyWith(
          _$PreciousMetalTradeValueResultDtoImpl value,
          $Res Function(_$PreciousMetalTradeValueResultDtoImpl) then) =
      __$$PreciousMetalTradeValueResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double bid,
      double change,
      @JsonKey(name: 'changePercentage') double changePercent});
}

/// @nodoc
class __$$PreciousMetalTradeValueResultDtoImplCopyWithImpl<$Res>
    extends _$PreciousMetalTradeValueResultDtoCopyWithImpl<$Res,
        _$PreciousMetalTradeValueResultDtoImpl>
    implements _$$PreciousMetalTradeValueResultDtoImplCopyWith<$Res> {
  __$$PreciousMetalTradeValueResultDtoImplCopyWithImpl(
      _$PreciousMetalTradeValueResultDtoImpl _value,
      $Res Function(_$PreciousMetalTradeValueResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bid = null,
    Object? change = null,
    Object? changePercent = null,
  }) {
    return _then(_$PreciousMetalTradeValueResultDtoImpl(
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double,
      change: null == change
          ? _value.change
          : change // ignore: cast_nullable_to_non_nullable
              as double,
      changePercent: null == changePercent
          ? _value.changePercent
          : changePercent // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreciousMetalTradeValueResultDtoImpl
    implements _PreciousMetalTradeValueResultDto {
  const _$PreciousMetalTradeValueResultDtoImpl(
      {required this.bid,
      required this.change,
      @JsonKey(name: 'changePercentage') required this.changePercent});

  factory _$PreciousMetalTradeValueResultDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PreciousMetalTradeValueResultDtoImplFromJson(json);

  @override
  final double bid;
  @override
  final double change;
  @override
  @JsonKey(name: 'changePercentage')
  final double changePercent;

  @override
  String toString() {
    return 'PreciousMetalTradeValueResultDto(bid: $bid, change: $change, changePercent: $changePercent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PreciousMetalTradeValueResultDtoImpl &&
            (identical(other.bid, bid) || other.bid == bid) &&
            (identical(other.change, change) || other.change == change) &&
            (identical(other.changePercent, changePercent) ||
                other.changePercent == changePercent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bid, change, changePercent);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PreciousMetalTradeValueResultDtoImplCopyWith<
          _$PreciousMetalTradeValueResultDtoImpl>
      get copyWith => __$$PreciousMetalTradeValueResultDtoImplCopyWithImpl<
          _$PreciousMetalTradeValueResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreciousMetalTradeValueResultDtoImplToJson(
      this,
    );
  }
}

abstract class _PreciousMetalTradeValueResultDto
    implements PreciousMetalTradeValueResultDto {
  const factory _PreciousMetalTradeValueResultDto(
          {required final double bid,
          required final double change,
          @JsonKey(name: 'changePercentage')
          required final double changePercent}) =
      _$PreciousMetalTradeValueResultDtoImpl;

  factory _PreciousMetalTradeValueResultDto.fromJson(
          Map<String, dynamic> json) =
      _$PreciousMetalTradeValueResultDtoImpl.fromJson;

  @override
  double get bid;
  @override
  double get change;
  @override
  @JsonKey(name: 'changePercentage')
  double get changePercent;
  @override
  @JsonKey(ignore: true)
  _$$PreciousMetalTradeValueResultDtoImplCopyWith<
          _$PreciousMetalTradeValueResultDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
