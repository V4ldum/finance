// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../investment_summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InvestmentSummaryDto _$InvestmentSummaryDtoFromJson(Map<String, dynamic> json) {
  return _InvestmentSummaryDto.fromJson(json);
}

/// @nodoc
mixin _$InvestmentSummaryDto {
  InvestmentSummaryResultDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestmentSummaryDtoCopyWith<InvestmentSummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentSummaryDtoCopyWith<$Res> {
  factory $InvestmentSummaryDtoCopyWith(InvestmentSummaryDto value,
          $Res Function(InvestmentSummaryDto) then) =
      _$InvestmentSummaryDtoCopyWithImpl<$Res, InvestmentSummaryDto>;
  @useResult
  $Res call({InvestmentSummaryResultDto result});

  $InvestmentSummaryResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$InvestmentSummaryDtoCopyWithImpl<$Res,
        $Val extends InvestmentSummaryDto>
    implements $InvestmentSummaryDtoCopyWith<$Res> {
  _$InvestmentSummaryDtoCopyWithImpl(this._value, this._then);

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
              as InvestmentSummaryResultDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvestmentSummaryResultDtoCopyWith<$Res> get result {
    return $InvestmentSummaryResultDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvestmentSummaryDtoImplCopyWith<$Res>
    implements $InvestmentSummaryDtoCopyWith<$Res> {
  factory _$$InvestmentSummaryDtoImplCopyWith(_$InvestmentSummaryDtoImpl value,
          $Res Function(_$InvestmentSummaryDtoImpl) then) =
      __$$InvestmentSummaryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InvestmentSummaryResultDto result});

  @override
  $InvestmentSummaryResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$InvestmentSummaryDtoImplCopyWithImpl<$Res>
    extends _$InvestmentSummaryDtoCopyWithImpl<$Res, _$InvestmentSummaryDtoImpl>
    implements _$$InvestmentSummaryDtoImplCopyWith<$Res> {
  __$$InvestmentSummaryDtoImplCopyWithImpl(_$InvestmentSummaryDtoImpl _value,
      $Res Function(_$InvestmentSummaryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$InvestmentSummaryDtoImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as InvestmentSummaryResultDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentSummaryDtoImpl implements _InvestmentSummaryDto {
  const _$InvestmentSummaryDtoImpl({required this.result});

  factory _$InvestmentSummaryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$InvestmentSummaryDtoImplFromJson(json);

  @override
  final InvestmentSummaryResultDto result;

  @override
  String toString() {
    return 'InvestmentSummaryDto(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentSummaryDtoImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentSummaryDtoImplCopyWith<_$InvestmentSummaryDtoImpl>
      get copyWith =>
          __$$InvestmentSummaryDtoImplCopyWithImpl<_$InvestmentSummaryDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentSummaryDtoImplToJson(
      this,
    );
  }
}

abstract class _InvestmentSummaryDto implements InvestmentSummaryDto {
  const factory _InvestmentSummaryDto(
          {required final InvestmentSummaryResultDto result}) =
      _$InvestmentSummaryDtoImpl;

  factory _InvestmentSummaryDto.fromJson(Map<String, dynamic> json) =
      _$InvestmentSummaryDtoImpl.fromJson;

  @override
  InvestmentSummaryResultDto get result;
  @override
  @JsonKey(ignore: true)
  _$$InvestmentSummaryDtoImplCopyWith<_$InvestmentSummaryDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvestmentSummaryResultDto _$InvestmentSummaryResultDtoFromJson(
    Map<String, dynamic> json) {
  return _InvestmentSummaryResultDto.fromJson(json);
}

/// @nodoc
mixin _$InvestmentSummaryResultDto {
  @JsonKey(readValue: _readInvestmentSummaryResultTotal)
  SummaryValuesDto get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'gross')
  InvestmentSummaryDistributionDto get distribution =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestmentSummaryResultDtoCopyWith<InvestmentSummaryResultDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentSummaryResultDtoCopyWith<$Res> {
  factory $InvestmentSummaryResultDtoCopyWith(InvestmentSummaryResultDto value,
          $Res Function(InvestmentSummaryResultDto) then) =
      _$InvestmentSummaryResultDtoCopyWithImpl<$Res,
          InvestmentSummaryResultDto>;
  @useResult
  $Res call(
      {@JsonKey(readValue: _readInvestmentSummaryResultTotal)
      SummaryValuesDto total,
      @JsonKey(name: 'gross') InvestmentSummaryDistributionDto distribution});

  $SummaryValuesDtoCopyWith<$Res> get total;
  $InvestmentSummaryDistributionDtoCopyWith<$Res> get distribution;
}

/// @nodoc
class _$InvestmentSummaryResultDtoCopyWithImpl<$Res,
        $Val extends InvestmentSummaryResultDto>
    implements $InvestmentSummaryResultDtoCopyWith<$Res> {
  _$InvestmentSummaryResultDtoCopyWithImpl(this._value, this._then);

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
              as SummaryValuesDto,
      distribution: null == distribution
          ? _value.distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as InvestmentSummaryDistributionDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get total {
    return $SummaryValuesDtoCopyWith<$Res>(_value.total, (value) {
      return _then(_value.copyWith(total: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $InvestmentSummaryDistributionDtoCopyWith<$Res> get distribution {
    return $InvestmentSummaryDistributionDtoCopyWith<$Res>(_value.distribution,
        (value) {
      return _then(_value.copyWith(distribution: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvestmentSummaryResultDtoImplCopyWith<$Res>
    implements $InvestmentSummaryResultDtoCopyWith<$Res> {
  factory _$$InvestmentSummaryResultDtoImplCopyWith(
          _$InvestmentSummaryResultDtoImpl value,
          $Res Function(_$InvestmentSummaryResultDtoImpl) then) =
      __$$InvestmentSummaryResultDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(readValue: _readInvestmentSummaryResultTotal)
      SummaryValuesDto total,
      @JsonKey(name: 'gross') InvestmentSummaryDistributionDto distribution});

  @override
  $SummaryValuesDtoCopyWith<$Res> get total;
  @override
  $InvestmentSummaryDistributionDtoCopyWith<$Res> get distribution;
}

/// @nodoc
class __$$InvestmentSummaryResultDtoImplCopyWithImpl<$Res>
    extends _$InvestmentSummaryResultDtoCopyWithImpl<$Res,
        _$InvestmentSummaryResultDtoImpl>
    implements _$$InvestmentSummaryResultDtoImplCopyWith<$Res> {
  __$$InvestmentSummaryResultDtoImplCopyWithImpl(
      _$InvestmentSummaryResultDtoImpl _value,
      $Res Function(_$InvestmentSummaryResultDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? distribution = null,
  }) {
    return _then(_$InvestmentSummaryResultDtoImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      distribution: null == distribution
          ? _value.distribution
          : distribution // ignore: cast_nullable_to_non_nullable
              as InvestmentSummaryDistributionDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentSummaryResultDtoImpl implements _InvestmentSummaryResultDto {
  const _$InvestmentSummaryResultDtoImpl(
      {@JsonKey(readValue: _readInvestmentSummaryResultTotal)
      required this.total,
      @JsonKey(name: 'gross') required this.distribution});

  factory _$InvestmentSummaryResultDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvestmentSummaryResultDtoImplFromJson(json);

  @override
  @JsonKey(readValue: _readInvestmentSummaryResultTotal)
  final SummaryValuesDto total;
  @override
  @JsonKey(name: 'gross')
  final InvestmentSummaryDistributionDto distribution;

  @override
  String toString() {
    return 'InvestmentSummaryResultDto(total: $total, distribution: $distribution)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentSummaryResultDtoImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.distribution, distribution) ||
                other.distribution == distribution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, total, distribution);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentSummaryResultDtoImplCopyWith<_$InvestmentSummaryResultDtoImpl>
      get copyWith => __$$InvestmentSummaryResultDtoImplCopyWithImpl<
          _$InvestmentSummaryResultDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentSummaryResultDtoImplToJson(
      this,
    );
  }
}

abstract class _InvestmentSummaryResultDto
    implements InvestmentSummaryResultDto {
  const factory _InvestmentSummaryResultDto(
          {@JsonKey(readValue: _readInvestmentSummaryResultTotal)
          required final SummaryValuesDto total,
          @JsonKey(name: 'gross')
          required final InvestmentSummaryDistributionDto distribution}) =
      _$InvestmentSummaryResultDtoImpl;

  factory _InvestmentSummaryResultDto.fromJson(Map<String, dynamic> json) =
      _$InvestmentSummaryResultDtoImpl.fromJson;

  @override
  @JsonKey(readValue: _readInvestmentSummaryResultTotal)
  SummaryValuesDto get total;
  @override
  @JsonKey(name: 'gross')
  InvestmentSummaryDistributionDto get distribution;
  @override
  @JsonKey(ignore: true)
  _$$InvestmentSummaryResultDtoImplCopyWith<_$InvestmentSummaryResultDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

InvestmentSummaryDistributionDto _$InvestmentSummaryDistributionDtoFromJson(
    Map<String, dynamic> json) {
  return _InvestmentSummaryDistributionDto.fromJson(json);
}

/// @nodoc
mixin _$InvestmentSummaryDistributionDto {
  @JsonKey(name: 'checking_accounts')
  SummaryValuesDto get checkingAccounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'savings_accounts')
  SummaryValuesDto get savingsAccounts => throw _privateConstructorUsedError;
  @JsonKey(name: 'investment_accounts')
  SummaryValuesDto get stocksAccounts => throw _privateConstructorUsedError;
  SummaryValuesDto get cryptos => throw _privateConstructorUsedError;
  @JsonKey(name: 'fonds_euro')
  SummaryValuesDto get fondsEuro => throw _privateConstructorUsedError;
  @JsonKey(name: 'real_estates')
  SummaryValuesDto get realEstates => throw _privateConstructorUsedError;
  SummaryValuesDto get startups => throw _privateConstructorUsedError;
  SummaryValuesDto get commodities => throw _privateConstructorUsedError;
  SummaryValuesDto get crowdlendings => throw _privateConstructorUsedError;
  @JsonKey(name: 'other_assets')
  SummaryValuesDto get other => throw _privateConstructorUsedError;
  SummaryValuesDto get loans => throw _privateConstructorUsedError;
  @JsonKey(name: 'credit_accounts')
  SummaryValuesDto get creditAccounts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvestmentSummaryDistributionDtoCopyWith<InvestmentSummaryDistributionDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvestmentSummaryDistributionDtoCopyWith<$Res> {
  factory $InvestmentSummaryDistributionDtoCopyWith(
          InvestmentSummaryDistributionDto value,
          $Res Function(InvestmentSummaryDistributionDto) then) =
      _$InvestmentSummaryDistributionDtoCopyWithImpl<$Res,
          InvestmentSummaryDistributionDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'checking_accounts') SummaryValuesDto checkingAccounts,
      @JsonKey(name: 'savings_accounts') SummaryValuesDto savingsAccounts,
      @JsonKey(name: 'investment_accounts') SummaryValuesDto stocksAccounts,
      SummaryValuesDto cryptos,
      @JsonKey(name: 'fonds_euro') SummaryValuesDto fondsEuro,
      @JsonKey(name: 'real_estates') SummaryValuesDto realEstates,
      SummaryValuesDto startups,
      SummaryValuesDto commodities,
      SummaryValuesDto crowdlendings,
      @JsonKey(name: 'other_assets') SummaryValuesDto other,
      SummaryValuesDto loans,
      @JsonKey(name: 'credit_accounts') SummaryValuesDto creditAccounts});

  $SummaryValuesDtoCopyWith<$Res> get checkingAccounts;
  $SummaryValuesDtoCopyWith<$Res> get savingsAccounts;
  $SummaryValuesDtoCopyWith<$Res> get stocksAccounts;
  $SummaryValuesDtoCopyWith<$Res> get cryptos;
  $SummaryValuesDtoCopyWith<$Res> get fondsEuro;
  $SummaryValuesDtoCopyWith<$Res> get realEstates;
  $SummaryValuesDtoCopyWith<$Res> get startups;
  $SummaryValuesDtoCopyWith<$Res> get commodities;
  $SummaryValuesDtoCopyWith<$Res> get crowdlendings;
  $SummaryValuesDtoCopyWith<$Res> get other;
  $SummaryValuesDtoCopyWith<$Res> get loans;
  $SummaryValuesDtoCopyWith<$Res> get creditAccounts;
}

/// @nodoc
class _$InvestmentSummaryDistributionDtoCopyWithImpl<$Res,
        $Val extends InvestmentSummaryDistributionDto>
    implements $InvestmentSummaryDistributionDtoCopyWith<$Res> {
  _$InvestmentSummaryDistributionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkingAccounts = null,
    Object? savingsAccounts = null,
    Object? stocksAccounts = null,
    Object? cryptos = null,
    Object? fondsEuro = null,
    Object? realEstates = null,
    Object? startups = null,
    Object? commodities = null,
    Object? crowdlendings = null,
    Object? other = null,
    Object? loans = null,
    Object? creditAccounts = null,
  }) {
    return _then(_value.copyWith(
      checkingAccounts: null == checkingAccounts
          ? _value.checkingAccounts
          : checkingAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      savingsAccounts: null == savingsAccounts
          ? _value.savingsAccounts
          : savingsAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      stocksAccounts: null == stocksAccounts
          ? _value.stocksAccounts
          : stocksAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      cryptos: null == cryptos
          ? _value.cryptos
          : cryptos // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      fondsEuro: null == fondsEuro
          ? _value.fondsEuro
          : fondsEuro // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      realEstates: null == realEstates
          ? _value.realEstates
          : realEstates // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      startups: null == startups
          ? _value.startups
          : startups // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      commodities: null == commodities
          ? _value.commodities
          : commodities // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      crowdlendings: null == crowdlendings
          ? _value.crowdlendings
          : crowdlendings // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      loans: null == loans
          ? _value.loans
          : loans // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      creditAccounts: null == creditAccounts
          ? _value.creditAccounts
          : creditAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get checkingAccounts {
    return $SummaryValuesDtoCopyWith<$Res>(_value.checkingAccounts, (value) {
      return _then(_value.copyWith(checkingAccounts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get savingsAccounts {
    return $SummaryValuesDtoCopyWith<$Res>(_value.savingsAccounts, (value) {
      return _then(_value.copyWith(savingsAccounts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get stocksAccounts {
    return $SummaryValuesDtoCopyWith<$Res>(_value.stocksAccounts, (value) {
      return _then(_value.copyWith(stocksAccounts: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get cryptos {
    return $SummaryValuesDtoCopyWith<$Res>(_value.cryptos, (value) {
      return _then(_value.copyWith(cryptos: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get fondsEuro {
    return $SummaryValuesDtoCopyWith<$Res>(_value.fondsEuro, (value) {
      return _then(_value.copyWith(fondsEuro: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get realEstates {
    return $SummaryValuesDtoCopyWith<$Res>(_value.realEstates, (value) {
      return _then(_value.copyWith(realEstates: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get startups {
    return $SummaryValuesDtoCopyWith<$Res>(_value.startups, (value) {
      return _then(_value.copyWith(startups: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get commodities {
    return $SummaryValuesDtoCopyWith<$Res>(_value.commodities, (value) {
      return _then(_value.copyWith(commodities: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get crowdlendings {
    return $SummaryValuesDtoCopyWith<$Res>(_value.crowdlendings, (value) {
      return _then(_value.copyWith(crowdlendings: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get other {
    return $SummaryValuesDtoCopyWith<$Res>(_value.other, (value) {
      return _then(_value.copyWith(other: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get loans {
    return $SummaryValuesDtoCopyWith<$Res>(_value.loans, (value) {
      return _then(_value.copyWith(loans: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryValuesDtoCopyWith<$Res> get creditAccounts {
    return $SummaryValuesDtoCopyWith<$Res>(_value.creditAccounts, (value) {
      return _then(_value.copyWith(creditAccounts: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InvestmentSummaryDistributionDtoImplCopyWith<$Res>
    implements $InvestmentSummaryDistributionDtoCopyWith<$Res> {
  factory _$$InvestmentSummaryDistributionDtoImplCopyWith(
          _$InvestmentSummaryDistributionDtoImpl value,
          $Res Function(_$InvestmentSummaryDistributionDtoImpl) then) =
      __$$InvestmentSummaryDistributionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'checking_accounts') SummaryValuesDto checkingAccounts,
      @JsonKey(name: 'savings_accounts') SummaryValuesDto savingsAccounts,
      @JsonKey(name: 'investment_accounts') SummaryValuesDto stocksAccounts,
      SummaryValuesDto cryptos,
      @JsonKey(name: 'fonds_euro') SummaryValuesDto fondsEuro,
      @JsonKey(name: 'real_estates') SummaryValuesDto realEstates,
      SummaryValuesDto startups,
      SummaryValuesDto commodities,
      SummaryValuesDto crowdlendings,
      @JsonKey(name: 'other_assets') SummaryValuesDto other,
      SummaryValuesDto loans,
      @JsonKey(name: 'credit_accounts') SummaryValuesDto creditAccounts});

  @override
  $SummaryValuesDtoCopyWith<$Res> get checkingAccounts;
  @override
  $SummaryValuesDtoCopyWith<$Res> get savingsAccounts;
  @override
  $SummaryValuesDtoCopyWith<$Res> get stocksAccounts;
  @override
  $SummaryValuesDtoCopyWith<$Res> get cryptos;
  @override
  $SummaryValuesDtoCopyWith<$Res> get fondsEuro;
  @override
  $SummaryValuesDtoCopyWith<$Res> get realEstates;
  @override
  $SummaryValuesDtoCopyWith<$Res> get startups;
  @override
  $SummaryValuesDtoCopyWith<$Res> get commodities;
  @override
  $SummaryValuesDtoCopyWith<$Res> get crowdlendings;
  @override
  $SummaryValuesDtoCopyWith<$Res> get other;
  @override
  $SummaryValuesDtoCopyWith<$Res> get loans;
  @override
  $SummaryValuesDtoCopyWith<$Res> get creditAccounts;
}

/// @nodoc
class __$$InvestmentSummaryDistributionDtoImplCopyWithImpl<$Res>
    extends _$InvestmentSummaryDistributionDtoCopyWithImpl<$Res,
        _$InvestmentSummaryDistributionDtoImpl>
    implements _$$InvestmentSummaryDistributionDtoImplCopyWith<$Res> {
  __$$InvestmentSummaryDistributionDtoImplCopyWithImpl(
      _$InvestmentSummaryDistributionDtoImpl _value,
      $Res Function(_$InvestmentSummaryDistributionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? checkingAccounts = null,
    Object? savingsAccounts = null,
    Object? stocksAccounts = null,
    Object? cryptos = null,
    Object? fondsEuro = null,
    Object? realEstates = null,
    Object? startups = null,
    Object? commodities = null,
    Object? crowdlendings = null,
    Object? other = null,
    Object? loans = null,
    Object? creditAccounts = null,
  }) {
    return _then(_$InvestmentSummaryDistributionDtoImpl(
      checkingAccounts: null == checkingAccounts
          ? _value.checkingAccounts
          : checkingAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      savingsAccounts: null == savingsAccounts
          ? _value.savingsAccounts
          : savingsAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      stocksAccounts: null == stocksAccounts
          ? _value.stocksAccounts
          : stocksAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      cryptos: null == cryptos
          ? _value.cryptos
          : cryptos // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      fondsEuro: null == fondsEuro
          ? _value.fondsEuro
          : fondsEuro // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      realEstates: null == realEstates
          ? _value.realEstates
          : realEstates // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      startups: null == startups
          ? _value.startups
          : startups // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      commodities: null == commodities
          ? _value.commodities
          : commodities // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      crowdlendings: null == crowdlendings
          ? _value.crowdlendings
          : crowdlendings // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      other: null == other
          ? _value.other
          : other // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      loans: null == loans
          ? _value.loans
          : loans // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
      creditAccounts: null == creditAccounts
          ? _value.creditAccounts
          : creditAccounts // ignore: cast_nullable_to_non_nullable
              as SummaryValuesDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InvestmentSummaryDistributionDtoImpl
    implements _InvestmentSummaryDistributionDto {
  const _$InvestmentSummaryDistributionDtoImpl(
      {@JsonKey(name: 'checking_accounts') required this.checkingAccounts,
      @JsonKey(name: 'savings_accounts') required this.savingsAccounts,
      @JsonKey(name: 'investment_accounts') required this.stocksAccounts,
      required this.cryptos,
      @JsonKey(name: 'fonds_euro') required this.fondsEuro,
      @JsonKey(name: 'real_estates') required this.realEstates,
      required this.startups,
      required this.commodities,
      required this.crowdlendings,
      @JsonKey(name: 'other_assets') required this.other,
      required this.loans,
      @JsonKey(name: 'credit_accounts') required this.creditAccounts});

  factory _$InvestmentSummaryDistributionDtoImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$InvestmentSummaryDistributionDtoImplFromJson(json);

  @override
  @JsonKey(name: 'checking_accounts')
  final SummaryValuesDto checkingAccounts;
  @override
  @JsonKey(name: 'savings_accounts')
  final SummaryValuesDto savingsAccounts;
  @override
  @JsonKey(name: 'investment_accounts')
  final SummaryValuesDto stocksAccounts;
  @override
  final SummaryValuesDto cryptos;
  @override
  @JsonKey(name: 'fonds_euro')
  final SummaryValuesDto fondsEuro;
  @override
  @JsonKey(name: 'real_estates')
  final SummaryValuesDto realEstates;
  @override
  final SummaryValuesDto startups;
  @override
  final SummaryValuesDto commodities;
  @override
  final SummaryValuesDto crowdlendings;
  @override
  @JsonKey(name: 'other_assets')
  final SummaryValuesDto other;
  @override
  final SummaryValuesDto loans;
  @override
  @JsonKey(name: 'credit_accounts')
  final SummaryValuesDto creditAccounts;

  @override
  String toString() {
    return 'InvestmentSummaryDistributionDto(checkingAccounts: $checkingAccounts, savingsAccounts: $savingsAccounts, stocksAccounts: $stocksAccounts, cryptos: $cryptos, fondsEuro: $fondsEuro, realEstates: $realEstates, startups: $startups, commodities: $commodities, crowdlendings: $crowdlendings, other: $other, loans: $loans, creditAccounts: $creditAccounts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvestmentSummaryDistributionDtoImpl &&
            (identical(other.checkingAccounts, checkingAccounts) ||
                other.checkingAccounts == checkingAccounts) &&
            (identical(other.savingsAccounts, savingsAccounts) ||
                other.savingsAccounts == savingsAccounts) &&
            (identical(other.stocksAccounts, stocksAccounts) ||
                other.stocksAccounts == stocksAccounts) &&
            (identical(other.cryptos, cryptos) || other.cryptos == cryptos) &&
            (identical(other.fondsEuro, fondsEuro) ||
                other.fondsEuro == fondsEuro) &&
            (identical(other.realEstates, realEstates) ||
                other.realEstates == realEstates) &&
            (identical(other.startups, startups) ||
                other.startups == startups) &&
            (identical(other.commodities, commodities) ||
                other.commodities == commodities) &&
            (identical(other.crowdlendings, crowdlendings) ||
                other.crowdlendings == crowdlendings) &&
            (identical(other.other, this.other) || other.other == this.other) &&
            (identical(other.loans, loans) || other.loans == loans) &&
            (identical(other.creditAccounts, creditAccounts) ||
                other.creditAccounts == creditAccounts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      checkingAccounts,
      savingsAccounts,
      stocksAccounts,
      cryptos,
      fondsEuro,
      realEstates,
      startups,
      commodities,
      crowdlendings,
      other,
      loans,
      creditAccounts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvestmentSummaryDistributionDtoImplCopyWith<
          _$InvestmentSummaryDistributionDtoImpl>
      get copyWith => __$$InvestmentSummaryDistributionDtoImplCopyWithImpl<
          _$InvestmentSummaryDistributionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvestmentSummaryDistributionDtoImplToJson(
      this,
    );
  }
}

abstract class _InvestmentSummaryDistributionDto
    implements InvestmentSummaryDistributionDto {
  const factory _InvestmentSummaryDistributionDto(
      {@JsonKey(name: 'checking_accounts')
      required final SummaryValuesDto checkingAccounts,
      @JsonKey(name: 'savings_accounts')
      required final SummaryValuesDto savingsAccounts,
      @JsonKey(name: 'investment_accounts')
      required final SummaryValuesDto stocksAccounts,
      required final SummaryValuesDto cryptos,
      @JsonKey(name: 'fonds_euro') required final SummaryValuesDto fondsEuro,
      @JsonKey(name: 'real_estates')
      required final SummaryValuesDto realEstates,
      required final SummaryValuesDto startups,
      required final SummaryValuesDto commodities,
      required final SummaryValuesDto crowdlendings,
      @JsonKey(name: 'other_assets') required final SummaryValuesDto other,
      required final SummaryValuesDto loans,
      @JsonKey(name: 'credit_accounts')
      required final SummaryValuesDto
          creditAccounts}) = _$InvestmentSummaryDistributionDtoImpl;

  factory _InvestmentSummaryDistributionDto.fromJson(
          Map<String, dynamic> json) =
      _$InvestmentSummaryDistributionDtoImpl.fromJson;

  @override
  @JsonKey(name: 'checking_accounts')
  SummaryValuesDto get checkingAccounts;
  @override
  @JsonKey(name: 'savings_accounts')
  SummaryValuesDto get savingsAccounts;
  @override
  @JsonKey(name: 'investment_accounts')
  SummaryValuesDto get stocksAccounts;
  @override
  SummaryValuesDto get cryptos;
  @override
  @JsonKey(name: 'fonds_euro')
  SummaryValuesDto get fondsEuro;
  @override
  @JsonKey(name: 'real_estates')
  SummaryValuesDto get realEstates;
  @override
  SummaryValuesDto get startups;
  @override
  SummaryValuesDto get commodities;
  @override
  SummaryValuesDto get crowdlendings;
  @override
  @JsonKey(name: 'other_assets')
  SummaryValuesDto get other;
  @override
  SummaryValuesDto get loans;
  @override
  @JsonKey(name: 'credit_accounts')
  SummaryValuesDto get creditAccounts;
  @override
  @JsonKey(ignore: true)
  _$$InvestmentSummaryDistributionDtoImplCopyWith<
          _$InvestmentSummaryDistributionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
