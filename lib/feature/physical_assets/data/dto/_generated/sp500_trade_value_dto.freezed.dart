// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sp500_trade_value_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SP500TradeValueDto _$SP500TradeValueDtoFromJson(Map<String, dynamic> json) {
  return _SP500TradeValueDto.fromJson(json);
}

/// @nodoc
mixin _$SP500TradeValueDto {
  SP500TradeValueDataDto get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SP500TradeValueDtoCopyWith<SP500TradeValueDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SP500TradeValueDtoCopyWith<$Res> {
  factory $SP500TradeValueDtoCopyWith(
          SP500TradeValueDto value, $Res Function(SP500TradeValueDto) then) =
      _$SP500TradeValueDtoCopyWithImpl<$Res, SP500TradeValueDto>;
  @useResult
  $Res call({SP500TradeValueDataDto data});

  $SP500TradeValueDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class _$SP500TradeValueDtoCopyWithImpl<$Res, $Val extends SP500TradeValueDto>
    implements $SP500TradeValueDtoCopyWith<$Res> {
  _$SP500TradeValueDtoCopyWithImpl(this._value, this._then);

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
              as SP500TradeValueDataDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SP500TradeValueDataDtoCopyWith<$Res> get data {
    return $SP500TradeValueDataDtoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SP500TradeValueDtoImplCopyWith<$Res>
    implements $SP500TradeValueDtoCopyWith<$Res> {
  factory _$$SP500TradeValueDtoImplCopyWith(_$SP500TradeValueDtoImpl value,
          $Res Function(_$SP500TradeValueDtoImpl) then) =
      __$$SP500TradeValueDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SP500TradeValueDataDto data});

  @override
  $SP500TradeValueDataDtoCopyWith<$Res> get data;
}

/// @nodoc
class __$$SP500TradeValueDtoImplCopyWithImpl<$Res>
    extends _$SP500TradeValueDtoCopyWithImpl<$Res, _$SP500TradeValueDtoImpl>
    implements _$$SP500TradeValueDtoImplCopyWith<$Res> {
  __$$SP500TradeValueDtoImplCopyWithImpl(_$SP500TradeValueDtoImpl _value,
      $Res Function(_$SP500TradeValueDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SP500TradeValueDtoImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SP500TradeValueDataDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SP500TradeValueDtoImpl implements _SP500TradeValueDto {
  const _$SP500TradeValueDtoImpl({required this.data});

  factory _$SP500TradeValueDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SP500TradeValueDtoImplFromJson(json);

  @override
  final SP500TradeValueDataDto data;

  @override
  String toString() {
    return 'SP500TradeValueDto(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SP500TradeValueDtoImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SP500TradeValueDtoImplCopyWith<_$SP500TradeValueDtoImpl> get copyWith =>
      __$$SP500TradeValueDtoImplCopyWithImpl<_$SP500TradeValueDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SP500TradeValueDtoImplToJson(
      this,
    );
  }
}

abstract class _SP500TradeValueDto implements SP500TradeValueDto {
  const factory _SP500TradeValueDto(
      {required final SP500TradeValueDataDto data}) = _$SP500TradeValueDtoImpl;

  factory _SP500TradeValueDto.fromJson(Map<String, dynamic> json) =
      _$SP500TradeValueDtoImpl.fromJson;

  @override
  SP500TradeValueDataDto get data;
  @override
  @JsonKey(ignore: true)
  _$$SP500TradeValueDtoImplCopyWith<_$SP500TradeValueDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SP500TradeValueDataDto _$SP500TradeValueDataDtoFromJson(
    Map<String, dynamic> json) {
  return _SP500TradeValueDataDto.fromJson(json);
}

/// @nodoc
mixin _$SP500TradeValueDataDto {
  @JsonKey(name: 'GetBarchartQuotes')
  SP500TradeValueQuoteDto get quote => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SP500TradeValueDataDtoCopyWith<SP500TradeValueDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SP500TradeValueDataDtoCopyWith<$Res> {
  factory $SP500TradeValueDataDtoCopyWith(SP500TradeValueDataDto value,
          $Res Function(SP500TradeValueDataDto) then) =
      _$SP500TradeValueDataDtoCopyWithImpl<$Res, SP500TradeValueDataDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'GetBarchartQuotes') SP500TradeValueQuoteDto quote});

  $SP500TradeValueQuoteDtoCopyWith<$Res> get quote;
}

/// @nodoc
class _$SP500TradeValueDataDtoCopyWithImpl<$Res,
        $Val extends SP500TradeValueDataDto>
    implements $SP500TradeValueDataDtoCopyWith<$Res> {
  _$SP500TradeValueDataDtoCopyWithImpl(this._value, this._then);

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
              as SP500TradeValueQuoteDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SP500TradeValueQuoteDtoCopyWith<$Res> get quote {
    return $SP500TradeValueQuoteDtoCopyWith<$Res>(_value.quote, (value) {
      return _then(_value.copyWith(quote: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SP500TradeValueDataDtoImplCopyWith<$Res>
    implements $SP500TradeValueDataDtoCopyWith<$Res> {
  factory _$$SP500TradeValueDataDtoImplCopyWith(
          _$SP500TradeValueDataDtoImpl value,
          $Res Function(_$SP500TradeValueDataDtoImpl) then) =
      __$$SP500TradeValueDataDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'GetBarchartQuotes') SP500TradeValueQuoteDto quote});

  @override
  $SP500TradeValueQuoteDtoCopyWith<$Res> get quote;
}

/// @nodoc
class __$$SP500TradeValueDataDtoImplCopyWithImpl<$Res>
    extends _$SP500TradeValueDataDtoCopyWithImpl<$Res,
        _$SP500TradeValueDataDtoImpl>
    implements _$$SP500TradeValueDataDtoImplCopyWith<$Res> {
  __$$SP500TradeValueDataDtoImplCopyWithImpl(
      _$SP500TradeValueDataDtoImpl _value,
      $Res Function(_$SP500TradeValueDataDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quote = null,
  }) {
    return _then(_$SP500TradeValueDataDtoImpl(
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as SP500TradeValueQuoteDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SP500TradeValueDataDtoImpl implements _SP500TradeValueDataDto {
  const _$SP500TradeValueDataDtoImpl(
      {@JsonKey(name: 'GetBarchartQuotes') required this.quote});

  factory _$SP500TradeValueDataDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SP500TradeValueDataDtoImplFromJson(json);

  @override
  @JsonKey(name: 'GetBarchartQuotes')
  final SP500TradeValueQuoteDto quote;

  @override
  String toString() {
    return 'SP500TradeValueDataDto(quote: $quote)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SP500TradeValueDataDtoImpl &&
            (identical(other.quote, quote) || other.quote == quote));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, quote);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SP500TradeValueDataDtoImplCopyWith<_$SP500TradeValueDataDtoImpl>
      get copyWith => __$$SP500TradeValueDataDtoImplCopyWithImpl<
          _$SP500TradeValueDataDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SP500TradeValueDataDtoImplToJson(
      this,
    );
  }
}

abstract class _SP500TradeValueDataDto implements SP500TradeValueDataDto {
  const factory _SP500TradeValueDataDto(
          {@JsonKey(name: 'GetBarchartQuotes')
          required final SP500TradeValueQuoteDto quote}) =
      _$SP500TradeValueDataDtoImpl;

  factory _SP500TradeValueDataDto.fromJson(Map<String, dynamic> json) =
      _$SP500TradeValueDataDtoImpl.fromJson;

  @override
  @JsonKey(name: 'GetBarchartQuotes')
  SP500TradeValueQuoteDto get quote;
  @override
  @JsonKey(ignore: true)
  _$$SP500TradeValueDataDtoImplCopyWith<_$SP500TradeValueDataDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SP500TradeValueQuoteDto _$SP500TradeValueQuoteDtoFromJson(
    Map<String, dynamic> json) {
  return _SP500TradeValueQuoteDto.fromJson(json);
}

/// @nodoc
mixin _$SP500TradeValueQuoteDto {
  @JsonKey(name: 'results', readValue: _convertResultsToResult)
  SP500TradeValueResultDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SP500TradeValueQuoteDtoCopyWith<SP500TradeValueQuoteDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SP500TradeValueQuoteDtoCopyWith<$Res> {
  factory $SP500TradeValueQuoteDtoCopyWith(SP500TradeValueQuoteDto value,
          $Res Function(SP500TradeValueQuoteDto) then) =
      _$SP500TradeValueQuoteDtoCopyWithImpl<$Res, SP500TradeValueQuoteDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'results', readValue: _convertResultsToResult)
      SP500TradeValueResultDto result});

  $SP500TradeValueResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$SP500TradeValueQuoteDtoCopyWithImpl<$Res,
        $Val extends SP500TradeValueQuoteDto>
    implements $SP500TradeValueQuoteDtoCopyWith<$Res> {
  _$SP500TradeValueQuoteDtoCopyWithImpl(this._value, this._then);

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
              as SP500TradeValueResultDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SP500TradeValueResultDtoCopyWith<$Res> get result {
    return $SP500TradeValueResultDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SP500TradeValueQuoteDtoImplCopyWith<$Res>
    implements $SP500TradeValueQuoteDtoCopyWith<$Res> {
  factory _$$SP500TradeValueQuoteDtoImplCopyWith(
          _$SP500TradeValueQuoteDtoImpl value,
          $Res Function(_$SP500TradeValueQuoteDtoImpl) then) =
      __$$SP500TradeValueQuoteDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'results', readValue: _convertResultsToResult)
      SP500TradeValueResultDto result});

  @override
  $SP500TradeValueResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$SP500TradeValueQuoteDtoImplCopyWithImpl<$Res>
    extends _$SP500TradeValueQuoteDtoCopyWithImpl<$Res,
        _$SP500TradeValueQuoteDtoImpl>
    implements _$$SP500TradeValueQuoteDtoImplCopyWith<$Res> {
  __$$SP500TradeValueQuoteDtoImplCopyWithImpl(
      _$SP500TradeValueQuoteDtoImpl _value,
      $Res Function(_$SP500TradeValueQuoteDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$SP500TradeValueQuoteDtoImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SP500TradeValueResultDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SP500TradeValueQuoteDtoImpl implements _SP500TradeValueQuoteDto {
  const _$SP500TradeValueQuoteDtoImpl(
      {@JsonKey(name: 'results', readValue: _convertResultsToResult)
      required this.result});

  factory _$SP500TradeValueQuoteDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SP500TradeValueQuoteDtoImplFromJson(json);

  @override
  @JsonKey(name: 'results', readValue: _convertResultsToResult)
  final SP500TradeValueResultDto result;

  @override
  String toString() {
    return 'SP500TradeValueQuoteDto(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SP500TradeValueQuoteDtoImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SP500TradeValueQuoteDtoImplCopyWith<_$SP500TradeValueQuoteDtoImpl>
      get copyWith => __$$SP500TradeValueQuoteDtoImplCopyWithImpl<
          _$SP500TradeValueQuoteDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SP500TradeValueQuoteDtoImplToJson(
      this,
    );
  }
}

abstract class _SP500TradeValueQuoteDto implements SP500TradeValueQuoteDto {
  const factory _SP500TradeValueQuoteDto(
          {@JsonKey(name: 'results', readValue: _convertResultsToResult)
          required final SP500TradeValueResultDto result}) =
      _$SP500TradeValueQuoteDtoImpl;

  factory _SP500TradeValueQuoteDto.fromJson(Map<String, dynamic> json) =
      _$SP500TradeValueQuoteDtoImpl.fromJson;

  @override
  @JsonKey(name: 'results', readValue: _convertResultsToResult)
  SP500TradeValueResultDto get result;
  @override
  @JsonKey(ignore: true)
  _$$SP500TradeValueQuoteDtoImplCopyWith<_$SP500TradeValueQuoteDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

SP500TradeValueResultDto _$SP500TradeValueResultDtoFromJson(
    Map<String, dynamic> json) {
  return _SP500TradeValueResultDto.fromJson(json);
}

/// @nodoc
mixin _$SP500TradeValueResultDto {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'lastPrice')
  double get bid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SP500TradeValueResultDtoCopyWith<SP500TradeValueResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SP500TradeValueResultDtoCopyWith<$Res> {
  factory $SP500TradeValueResultDtoCopyWith(SP500TradeValueResultDto value,
          $Res Function(SP500TradeValueResultDto) then) =
      _$SP500TradeValueResultDtoCopyWithImpl<$Res, SP500TradeValueResultDto>;
  @useResult
  $Res call({String name, @JsonKey(name: 'lastPrice') double bid});
}

/// @nodoc
class _$SP500TradeValueResultDtoCopyWithImpl<$Res,
        $Val extends SP500TradeValueResultDto>
    implements $SP500TradeValueResultDtoCopyWith<$Res> {
  _$SP500TradeValueResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SP500TradeValueResultDtoImplCopyWith<$Res>
    implements $SP500TradeValueResultDtoCopyWith<$Res> {
  factory _$$SP500TradeValueResultDtoImplCopyWith(
          _$SP500TradeValueResultDtoImpl value,
          $Res Function(_$SP500TradeValueResultDtoImpl) then) =
      __$$SP500TradeValueResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: 'lastPrice') double bid});
}

/// @nodoc
class __$$SP500TradeValueResultDtoImplCopyWithImpl<$Res>
    extends _$SP500TradeValueResultDtoCopyWithImpl<$Res,
        _$SP500TradeValueResultDtoImpl>
    implements _$$SP500TradeValueResultDtoImplCopyWith<$Res> {
  __$$SP500TradeValueResultDtoImplCopyWithImpl(
      _$SP500TradeValueResultDtoImpl _value,
      $Res Function(_$SP500TradeValueResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? bid = null,
  }) {
    return _then(_$SP500TradeValueResultDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      bid: null == bid
          ? _value.bid
          : bid // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SP500TradeValueResultDtoImpl implements _SP500TradeValueResultDto {
  const _$SP500TradeValueResultDtoImpl(
      {required this.name, @JsonKey(name: 'lastPrice') required this.bid});

  factory _$SP500TradeValueResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SP500TradeValueResultDtoImplFromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'lastPrice')
  final double bid;

  @override
  String toString() {
    return 'SP500TradeValueResultDto(name: $name, bid: $bid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SP500TradeValueResultDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bid, bid) || other.bid == bid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, bid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SP500TradeValueResultDtoImplCopyWith<_$SP500TradeValueResultDtoImpl>
      get copyWith => __$$SP500TradeValueResultDtoImplCopyWithImpl<
          _$SP500TradeValueResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SP500TradeValueResultDtoImplToJson(
      this,
    );
  }
}

abstract class _SP500TradeValueResultDto implements SP500TradeValueResultDto {
  const factory _SP500TradeValueResultDto(
          {required final String name,
          @JsonKey(name: 'lastPrice') required final double bid}) =
      _$SP500TradeValueResultDtoImpl;

  factory _SP500TradeValueResultDto.fromJson(Map<String, dynamic> json) =
      _$SP500TradeValueResultDtoImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'lastPrice')
  double get bid;
  @override
  @JsonKey(ignore: true)
  _$$SP500TradeValueResultDtoImplCopyWith<_$SP500TradeValueResultDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
