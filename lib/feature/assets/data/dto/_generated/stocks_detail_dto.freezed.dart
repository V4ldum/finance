// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../stocks_detail_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StocksDetailDto _$StocksDetailDtoFromJson(Map<String, dynamic> json) {
  return _StocksDetailDto.fromJson(json);
}

/// @nodoc
mixin _$StocksDetailDto {
  StockDetailResultDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StocksDetailDtoCopyWith<StocksDetailDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StocksDetailDtoCopyWith<$Res> {
  factory $StocksDetailDtoCopyWith(
          StocksDetailDto value, $Res Function(StocksDetailDto) then) =
      _$StocksDetailDtoCopyWithImpl<$Res, StocksDetailDto>;
  @useResult
  $Res call({StockDetailResultDto result});

  $StockDetailResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$StocksDetailDtoCopyWithImpl<$Res, $Val extends StocksDetailDto>
    implements $StocksDetailDtoCopyWith<$Res> {
  _$StocksDetailDtoCopyWithImpl(this._value, this._then);

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
              as StockDetailResultDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockDetailResultDtoCopyWith<$Res> get result {
    return $StockDetailResultDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StocksDetailDtoImplCopyWith<$Res>
    implements $StocksDetailDtoCopyWith<$Res> {
  factory _$$StocksDetailDtoImplCopyWith(_$StocksDetailDtoImpl value,
          $Res Function(_$StocksDetailDtoImpl) then) =
      __$$StocksDetailDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StockDetailResultDto result});

  @override
  $StockDetailResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$StocksDetailDtoImplCopyWithImpl<$Res>
    extends _$StocksDetailDtoCopyWithImpl<$Res, _$StocksDetailDtoImpl>
    implements _$$StocksDetailDtoImplCopyWith<$Res> {
  __$$StocksDetailDtoImplCopyWithImpl(
      _$StocksDetailDtoImpl _value, $Res Function(_$StocksDetailDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$StocksDetailDtoImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as StockDetailResultDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StocksDetailDtoImpl implements _StocksDetailDto {
  const _$StocksDetailDtoImpl({required this.result});

  factory _$StocksDetailDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StocksDetailDtoImplFromJson(json);

  @override
  final StockDetailResultDto result;

  @override
  String toString() {
    return 'StocksDetailDto(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StocksDetailDtoImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StocksDetailDtoImplCopyWith<_$StocksDetailDtoImpl> get copyWith =>
      __$$StocksDetailDtoImplCopyWithImpl<_$StocksDetailDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StocksDetailDtoImplToJson(
      this,
    );
  }
}

abstract class _StocksDetailDto implements StocksDetailDto {
  const factory _StocksDetailDto({required final StockDetailResultDto result}) =
      _$StocksDetailDtoImpl;

  factory _StocksDetailDto.fromJson(Map<String, dynamic> json) =
      _$StocksDetailDtoImpl.fromJson;

  @override
  StockDetailResultDto get result;
  @override
  @JsonKey(ignore: true)
  _$$StocksDetailDtoImplCopyWith<_$StocksDetailDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StockDetailResultDto _$StockDetailResultDtoFromJson(Map<String, dynamic> json) {
  return _StockDetailResultDto.fromJson(json);
}

/// @nodoc
mixin _$StockDetailResultDto {
  SummaryValuesDto get total => throw _privateConstructorUsedError;
  List<StockDetailAccountDto> get accounts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDetailResultDtoCopyWith<StockDetailResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDetailResultDtoCopyWith<$Res> {
  factory $StockDetailResultDtoCopyWith(StockDetailResultDto value,
          $Res Function(StockDetailResultDto) then) =
      _$StockDetailResultDtoCopyWithImpl<$Res, StockDetailResultDto>;
  @useResult
  $Res call({SummaryValuesDto total, List<StockDetailAccountDto> accounts});

  $SummaryValuesDtoCopyWith<$Res> get total;
}

/// @nodoc
class _$StockDetailResultDtoCopyWithImpl<$Res,
        $Val extends StockDetailResultDto>
    implements $StockDetailResultDtoCopyWith<$Res> {
  _$StockDetailResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? accounts = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      accounts: null == accounts
          ? _value.accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<StockDetailAccountDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get total {
    return $SummaryValuesDtoCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockDetailResultDtoImplCopyWith<$Res>
    implements $StockDetailResultDtoCopyWith<$Res> {
  factory _$$StockDetailResultDtoImplCopyWith(_$StockDetailResultDtoImpl value,
          $Res Function(_$StockDetailResultDtoImpl) then) =
      __$$StockDetailResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SummaryValuesDto total, List<StockDetailAccountDto> accounts});

  @override
  $SummaryValuesDtoCopyWith<$Res> get total;
}

/// @nodoc
class __$$StockDetailResultDtoImplCopyWithImpl<$Res>
    extends _$StockDetailResultDtoCopyWithImpl<$Res, _$StockDetailResultDtoImpl>
    implements _$$StockDetailResultDtoImplCopyWith<$Res> {
  __$$StockDetailResultDtoImplCopyWithImpl(_$StockDetailResultDtoImpl _value,
      $Res Function(_$StockDetailResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? accounts = null,
  }) {
    return _then(_$StockDetailResultDtoImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      accounts: null == accounts
          ? _value._accounts
          : accounts // ignore: cast_nullable_to_non_nullable
              as List<StockDetailAccountDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDetailResultDtoImpl implements _StockDetailResultDto {
  const _$StockDetailResultDtoImpl(
      {required this.total,
      required final List<StockDetailAccountDto> accounts})
      : _accounts = accounts;

  factory _$StockDetailResultDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDetailResultDtoImplFromJson(json);

  @override
  final SummaryValuesDto total;
  final List<StockDetailAccountDto> _accounts;
  @override
  List<StockDetailAccountDto> get accounts {
    if (_accounts is EqualUnmodifiableListView) return _accounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_accounts);
  }

  @override
  String toString() {
    return 'StockDetailResultDto(total: $total, accounts: $accounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailResultDtoImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._accounts, _accounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, total, const DeepCollectionEquality().hash(_accounts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDetailResultDtoImplCopyWith<_$StockDetailResultDtoImpl>
      get copyWith =>
          __$$StockDetailResultDtoImplCopyWithImpl<_$StockDetailResultDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockDetailResultDtoImplToJson(
      this,
    );
  }
}

abstract class _StockDetailResultDto implements StockDetailResultDto {
  const factory _StockDetailResultDto(
          {required final SummaryValuesDto total,
          required final List<StockDetailAccountDto> accounts}) =
      _$StockDetailResultDtoImpl;

  factory _StockDetailResultDto.fromJson(Map<String, dynamic> json) =
      _$StockDetailResultDtoImpl.fromJson;

  @override
  SummaryValuesDto get total;
  @override
  List<StockDetailAccountDto> get accounts;
  @override
  @JsonKey(ignore: true)
  _$$StockDetailResultDtoImplCopyWith<_$StockDetailResultDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StockDetailAccountDto _$StockDetailAccountDtoFromJson(
    Map<String, dynamic> json) {
  return _StockDetailAccountDto.fromJson(json);
}

/// @nodoc
mixin _$StockDetailAccountDto {
  String get name => throw _privateConstructorUsedError;
  double get balance => throw _privateConstructorUsedError;
  List<StockDetailSecurityDto> get securities =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDetailAccountDtoCopyWith<StockDetailAccountDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDetailAccountDtoCopyWith<$Res> {
  factory $StockDetailAccountDtoCopyWith(StockDetailAccountDto value,
          $Res Function(StockDetailAccountDto) then) =
      _$StockDetailAccountDtoCopyWithImpl<$Res, StockDetailAccountDto>;
  @useResult
  $Res call(
      {String name, double balance, List<StockDetailSecurityDto> securities});
}

/// @nodoc
class _$StockDetailAccountDtoCopyWithImpl<$Res,
        $Val extends StockDetailAccountDto>
    implements $StockDetailAccountDtoCopyWith<$Res> {
  _$StockDetailAccountDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? balance = null,
    Object? securities = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      securities: null == securities
          ? _value.securities
          : securities // ignore: cast_nullable_to_non_nullable
              as List<StockDetailSecurityDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockDetailAccountDtoImplCopyWith<$Res>
    implements $StockDetailAccountDtoCopyWith<$Res> {
  factory _$$StockDetailAccountDtoImplCopyWith(
          _$StockDetailAccountDtoImpl value,
          $Res Function(_$StockDetailAccountDtoImpl) then) =
      __$$StockDetailAccountDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, double balance, List<StockDetailSecurityDto> securities});
}

/// @nodoc
class __$$StockDetailAccountDtoImplCopyWithImpl<$Res>
    extends _$StockDetailAccountDtoCopyWithImpl<$Res,
        _$StockDetailAccountDtoImpl>
    implements _$$StockDetailAccountDtoImplCopyWith<$Res> {
  __$$StockDetailAccountDtoImplCopyWithImpl(_$StockDetailAccountDtoImpl _value,
      $Res Function(_$StockDetailAccountDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? balance = null,
    Object? securities = null,
  }) {
    return _then(_$StockDetailAccountDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as double,
      securities: null == securities
          ? _value._securities
          : securities // ignore: cast_nullable_to_non_nullable
              as List<StockDetailSecurityDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDetailAccountDtoImpl implements _StockDetailAccountDto {
  const _$StockDetailAccountDtoImpl(
      {required this.name,
      required this.balance,
      required final List<StockDetailSecurityDto> securities})
      : _securities = securities;

  factory _$StockDetailAccountDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDetailAccountDtoImplFromJson(json);

  @override
  final String name;
  @override
  final double balance;
  final List<StockDetailSecurityDto> _securities;
  @override
  List<StockDetailSecurityDto> get securities {
    if (_securities is EqualUnmodifiableListView) return _securities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_securities);
  }

  @override
  String toString() {
    return 'StockDetailAccountDto(name: $name, balance: $balance, securities: $securities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailAccountDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.balance, balance) || other.balance == balance) &&
            const DeepCollectionEquality()
                .equals(other._securities, _securities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, balance,
      const DeepCollectionEquality().hash(_securities));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDetailAccountDtoImplCopyWith<_$StockDetailAccountDtoImpl>
      get copyWith => __$$StockDetailAccountDtoImplCopyWithImpl<
          _$StockDetailAccountDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockDetailAccountDtoImplToJson(
      this,
    );
  }
}

abstract class _StockDetailAccountDto implements StockDetailAccountDto {
  const factory _StockDetailAccountDto(
          {required final String name,
          required final double balance,
          required final List<StockDetailSecurityDto> securities}) =
      _$StockDetailAccountDtoImpl;

  factory _StockDetailAccountDto.fromJson(Map<String, dynamic> json) =
      _$StockDetailAccountDtoImpl.fromJson;

  @override
  String get name;
  @override
  double get balance;
  @override
  List<StockDetailSecurityDto> get securities;
  @override
  @JsonKey(ignore: true)
  _$$StockDetailAccountDtoImplCopyWith<_$StockDetailAccountDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StockDetailSecurityDto _$StockDetailSecurityDtoFromJson(
    Map<String, dynamic> json) {
  return _StockDetailSecurityDto.fromJson(json);
}

/// @nodoc
mixin _$StockDetailSecurityDto {
  @JsonKey(name: 'current_value')
  double get currentValue => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_evolution')
  double get periodEvolution => throw _privateConstructorUsedError;
  @JsonKey(name: 'period_evolution_percent', defaultValue: 0)
  double get periodEvolutionPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'buying_price', defaultValue: 0)
  double get buyingPrice => throw _privateConstructorUsedError;
  double get quantity => throw _privateConstructorUsedError;
  StockDetailSecurityInformationDto get security =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDetailSecurityDtoCopyWith<StockDetailSecurityDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDetailSecurityDtoCopyWith<$Res> {
  factory $StockDetailSecurityDtoCopyWith(StockDetailSecurityDto value,
          $Res Function(StockDetailSecurityDto) then) =
      _$StockDetailSecurityDtoCopyWithImpl<$Res, StockDetailSecurityDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'current_value') double currentValue,
      @JsonKey(name: 'period_evolution') double periodEvolution,
      @JsonKey(name: 'period_evolution_percent', defaultValue: 0)
      double periodEvolutionPercent,
      @JsonKey(name: 'buying_price', defaultValue: 0) double buyingPrice,
      double quantity,
      StockDetailSecurityInformationDto security});

  $StockDetailSecurityInformationDtoCopyWith<$Res> get security;
}

/// @nodoc
class _$StockDetailSecurityDtoCopyWithImpl<$Res,
        $Val extends StockDetailSecurityDto>
    implements $StockDetailSecurityDtoCopyWith<$Res> {
  _$StockDetailSecurityDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? periodEvolution = null,
    Object? periodEvolutionPercent = null,
    Object? buyingPrice = null,
    Object? quantity = null,
    Object? security = null,
  }) {
    return _then(_value.copyWith(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      periodEvolution: null == periodEvolution
          ? _value.periodEvolution
          : periodEvolution // ignore: cast_nullable_to_non_nullable
              as double,
      periodEvolutionPercent: null == periodEvolutionPercent
          ? _value.periodEvolutionPercent
          : periodEvolutionPercent // ignore: cast_nullable_to_non_nullable
              as double,
      buyingPrice: null == buyingPrice
          ? _value.buyingPrice
          : buyingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as StockDetailSecurityInformationDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StockDetailSecurityInformationDtoCopyWith<$Res> get security {
    return $StockDetailSecurityInformationDtoCopyWith<$Res>(_value.security,
        (value) {
      return _then(_value.copyWith(security: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$StockDetailSecurityDtoImplCopyWith<$Res>
    implements $StockDetailSecurityDtoCopyWith<$Res> {
  factory _$$StockDetailSecurityDtoImplCopyWith(
          _$StockDetailSecurityDtoImpl value,
          $Res Function(_$StockDetailSecurityDtoImpl) then) =
      __$$StockDetailSecurityDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'current_value') double currentValue,
      @JsonKey(name: 'period_evolution') double periodEvolution,
      @JsonKey(name: 'period_evolution_percent', defaultValue: 0)
      double periodEvolutionPercent,
      @JsonKey(name: 'buying_price', defaultValue: 0) double buyingPrice,
      double quantity,
      StockDetailSecurityInformationDto security});

  @override
  $StockDetailSecurityInformationDtoCopyWith<$Res> get security;
}

/// @nodoc
class __$$StockDetailSecurityDtoImplCopyWithImpl<$Res>
    extends _$StockDetailSecurityDtoCopyWithImpl<$Res,
        _$StockDetailSecurityDtoImpl>
    implements _$$StockDetailSecurityDtoImplCopyWith<$Res> {
  __$$StockDetailSecurityDtoImplCopyWithImpl(
      _$StockDetailSecurityDtoImpl _value,
      $Res Function(_$StockDetailSecurityDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentValue = null,
    Object? periodEvolution = null,
    Object? periodEvolutionPercent = null,
    Object? buyingPrice = null,
    Object? quantity = null,
    Object? security = null,
  }) {
    return _then(_$StockDetailSecurityDtoImpl(
      currentValue: null == currentValue
          ? _value.currentValue
          : currentValue // ignore: cast_nullable_to_non_nullable
              as double,
      periodEvolution: null == periodEvolution
          ? _value.periodEvolution
          : periodEvolution // ignore: cast_nullable_to_non_nullable
              as double,
      periodEvolutionPercent: null == periodEvolutionPercent
          ? _value.periodEvolutionPercent
          : periodEvolutionPercent // ignore: cast_nullable_to_non_nullable
              as double,
      buyingPrice: null == buyingPrice
          ? _value.buyingPrice
          : buyingPrice // ignore: cast_nullable_to_non_nullable
              as double,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      security: null == security
          ? _value.security
          : security // ignore: cast_nullable_to_non_nullable
              as StockDetailSecurityInformationDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDetailSecurityDtoImpl implements _StockDetailSecurityDto {
  const _$StockDetailSecurityDtoImpl(
      {@JsonKey(name: 'current_value') required this.currentValue,
      @JsonKey(name: 'period_evolution') required this.periodEvolution,
      @JsonKey(name: 'period_evolution_percent', defaultValue: 0)
      required this.periodEvolutionPercent,
      @JsonKey(name: 'buying_price', defaultValue: 0) required this.buyingPrice,
      required this.quantity,
      required this.security});

  factory _$StockDetailSecurityDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StockDetailSecurityDtoImplFromJson(json);

  @override
  @JsonKey(name: 'current_value')
  final double currentValue;
  @override
  @JsonKey(name: 'period_evolution')
  final double periodEvolution;
  @override
  @JsonKey(name: 'period_evolution_percent', defaultValue: 0)
  final double periodEvolutionPercent;
  @override
  @JsonKey(name: 'buying_price', defaultValue: 0)
  final double buyingPrice;
  @override
  final double quantity;
  @override
  final StockDetailSecurityInformationDto security;

  @override
  String toString() {
    return 'StockDetailSecurityDto(currentValue: $currentValue, periodEvolution: $periodEvolution, periodEvolutionPercent: $periodEvolutionPercent, buyingPrice: $buyingPrice, quantity: $quantity, security: $security)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailSecurityDtoImpl &&
            (identical(other.currentValue, currentValue) ||
                other.currentValue == currentValue) &&
            (identical(other.periodEvolution, periodEvolution) ||
                other.periodEvolution == periodEvolution) &&
            (identical(other.periodEvolutionPercent, periodEvolutionPercent) ||
                other.periodEvolutionPercent == periodEvolutionPercent) &&
            (identical(other.buyingPrice, buyingPrice) ||
                other.buyingPrice == buyingPrice) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.security, security) ||
                other.security == security));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, currentValue, periodEvolution,
      periodEvolutionPercent, buyingPrice, quantity, security);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDetailSecurityDtoImplCopyWith<_$StockDetailSecurityDtoImpl>
      get copyWith => __$$StockDetailSecurityDtoImplCopyWithImpl<
          _$StockDetailSecurityDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockDetailSecurityDtoImplToJson(
      this,
    );
  }
}

abstract class _StockDetailSecurityDto implements StockDetailSecurityDto {
  const factory _StockDetailSecurityDto(
      {@JsonKey(name: 'current_value') required final double currentValue,
      @JsonKey(name: 'period_evolution') required final double periodEvolution,
      @JsonKey(name: 'period_evolution_percent', defaultValue: 0)
      required final double periodEvolutionPercent,
      @JsonKey(name: 'buying_price', defaultValue: 0)
      required final double buyingPrice,
      required final double quantity,
      required final StockDetailSecurityInformationDto
          security}) = _$StockDetailSecurityDtoImpl;

  factory _StockDetailSecurityDto.fromJson(Map<String, dynamic> json) =
      _$StockDetailSecurityDtoImpl.fromJson;

  @override
  @JsonKey(name: 'current_value')
  double get currentValue;
  @override
  @JsonKey(name: 'period_evolution')
  double get periodEvolution;
  @override
  @JsonKey(name: 'period_evolution_percent', defaultValue: 0)
  double get periodEvolutionPercent;
  @override
  @JsonKey(name: 'buying_price', defaultValue: 0)
  double get buyingPrice;
  @override
  double get quantity;
  @override
  StockDetailSecurityInformationDto get security;
  @override
  @JsonKey(ignore: true)
  _$$StockDetailSecurityDtoImplCopyWith<_$StockDetailSecurityDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

StockDetailSecurityInformationDto _$StockDetailSecurityInformationDtoFromJson(
    Map<String, dynamic> json) {
  return _StockDetailSecurityInformationDto.fromJson(json);
}

/// @nodoc
mixin _$StockDetailSecurityInformationDto {
  String get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'logo_url')
  String get logoUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(
      name: 'security_type',
      unknownEnumValue: StockDetailSecurityTypeDto.unknown)
  StockDetailSecurityTypeDto get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StockDetailSecurityInformationDtoCopyWith<StockDetailSecurityInformationDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StockDetailSecurityInformationDtoCopyWith<$Res> {
  factory $StockDetailSecurityInformationDtoCopyWith(
          StockDetailSecurityInformationDto value,
          $Res Function(StockDetailSecurityInformationDto) then) =
      _$StockDetailSecurityInformationDtoCopyWithImpl<$Res,
          StockDetailSecurityInformationDto>;
  @useResult
  $Res call(
      {String symbol,
      String name,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(
          name: 'security_type',
          unknownEnumValue: StockDetailSecurityTypeDto.unknown)
      StockDetailSecurityTypeDto type});
}

/// @nodoc
class _$StockDetailSecurityInformationDtoCopyWithImpl<$Res,
        $Val extends StockDetailSecurityInformationDto>
    implements $StockDetailSecurityInformationDtoCopyWith<$Res> {
  _$StockDetailSecurityInformationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? logoUrl = null,
    Object? currentPrice = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StockDetailSecurityTypeDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StockDetailSecurityInformationDtoImplCopyWith<$Res>
    implements $StockDetailSecurityInformationDtoCopyWith<$Res> {
  factory _$$StockDetailSecurityInformationDtoImplCopyWith(
          _$StockDetailSecurityInformationDtoImpl value,
          $Res Function(_$StockDetailSecurityInformationDtoImpl) then) =
      __$$StockDetailSecurityInformationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String symbol,
      String name,
      @JsonKey(name: 'logo_url') String logoUrl,
      @JsonKey(name: 'current_price') double currentPrice,
      @JsonKey(
          name: 'security_type',
          unknownEnumValue: StockDetailSecurityTypeDto.unknown)
      StockDetailSecurityTypeDto type});
}

/// @nodoc
class __$$StockDetailSecurityInformationDtoImplCopyWithImpl<$Res>
    extends _$StockDetailSecurityInformationDtoCopyWithImpl<$Res,
        _$StockDetailSecurityInformationDtoImpl>
    implements _$$StockDetailSecurityInformationDtoImplCopyWith<$Res> {
  __$$StockDetailSecurityInformationDtoImplCopyWithImpl(
      _$StockDetailSecurityInformationDtoImpl _value,
      $Res Function(_$StockDetailSecurityInformationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? name = null,
    Object? logoUrl = null,
    Object? currentPrice = null,
    Object? type = null,
  }) {
    return _then(_$StockDetailSecurityInformationDtoImpl(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      logoUrl: null == logoUrl
          ? _value.logoUrl
          : logoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: null == currentPrice
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StockDetailSecurityTypeDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StockDetailSecurityInformationDtoImpl
    implements _StockDetailSecurityInformationDto {
  const _$StockDetailSecurityInformationDtoImpl(
      {required this.symbol,
      required this.name,
      @JsonKey(name: 'logo_url') required this.logoUrl,
      @JsonKey(name: 'current_price') required this.currentPrice,
      @JsonKey(
          name: 'security_type',
          unknownEnumValue: StockDetailSecurityTypeDto.unknown)
      required this.type});

  factory _$StockDetailSecurityInformationDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$StockDetailSecurityInformationDtoImplFromJson(json);

  @override
  final String symbol;
  @override
  final String name;
  @override
  @JsonKey(name: 'logo_url')
  final String logoUrl;
  @override
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @override
  @JsonKey(
      name: 'security_type',
      unknownEnumValue: StockDetailSecurityTypeDto.unknown)
  final StockDetailSecurityTypeDto type;

  @override
  String toString() {
    return 'StockDetailSecurityInformationDto(symbol: $symbol, name: $name, logoUrl: $logoUrl, currentPrice: $currentPrice, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StockDetailSecurityInformationDtoImpl &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.logoUrl, logoUrl) || other.logoUrl == logoUrl) &&
            (identical(other.currentPrice, currentPrice) ||
                other.currentPrice == currentPrice) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, symbol, name, logoUrl, currentPrice, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StockDetailSecurityInformationDtoImplCopyWith<
          _$StockDetailSecurityInformationDtoImpl>
      get copyWith => __$$StockDetailSecurityInformationDtoImplCopyWithImpl<
          _$StockDetailSecurityInformationDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StockDetailSecurityInformationDtoImplToJson(
      this,
    );
  }
}

abstract class _StockDetailSecurityInformationDto
    implements StockDetailSecurityInformationDto {
  const factory _StockDetailSecurityInformationDto(
          {required final String symbol,
          required final String name,
          @JsonKey(name: 'logo_url') required final String logoUrl,
          @JsonKey(name: 'current_price') required final double currentPrice,
          @JsonKey(
              name: 'security_type',
              unknownEnumValue: StockDetailSecurityTypeDto.unknown)
          required final StockDetailSecurityTypeDto type}) =
      _$StockDetailSecurityInformationDtoImpl;

  factory _StockDetailSecurityInformationDto.fromJson(
          Map<String, dynamic> json) =
      _$StockDetailSecurityInformationDtoImpl.fromJson;

  @override
  String get symbol;
  @override
  String get name;
  @override
  @JsonKey(name: 'logo_url')
  String get logoUrl;
  @override
  @JsonKey(name: 'current_price')
  double get currentPrice;
  @override
  @JsonKey(
      name: 'security_type',
      unknownEnumValue: StockDetailSecurityTypeDto.unknown)
  StockDetailSecurityTypeDto get type;
  @override
  @JsonKey(ignore: true)
  _$$StockDetailSecurityInformationDtoImplCopyWith<
          _$StockDetailSecurityInformationDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
