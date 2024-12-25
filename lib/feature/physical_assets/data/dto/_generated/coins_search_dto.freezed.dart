// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../coins_search_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinsSearchDto _$CoinsSearchDtoFromJson(Map<String, dynamic> json) {
  return _CoinsSearchDto.fromJson(json);
}

/// @nodoc
mixin _$CoinsSearchDto {
  @JsonKey(name: 'query', defaultValue: [])
  List<CoinDto> get coins => throw _privateConstructorUsedError;

  /// Serializes this CoinsSearchDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CoinsSearchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CoinsSearchDtoCopyWith<CoinsSearchDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsSearchDtoCopyWith<$Res> {
  factory $CoinsSearchDtoCopyWith(
          CoinsSearchDto value, $Res Function(CoinsSearchDto) then) =
      _$CoinsSearchDtoCopyWithImpl<$Res, CoinsSearchDto>;
  @useResult
  $Res call({@JsonKey(name: 'query', defaultValue: []) List<CoinDto> coins});
}

/// @nodoc
class _$CoinsSearchDtoCopyWithImpl<$Res, $Val extends CoinsSearchDto>
    implements $CoinsSearchDtoCopyWith<$Res> {
  _$CoinsSearchDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CoinsSearchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinsSearchDtoImplCopyWith<$Res>
    implements $CoinsSearchDtoCopyWith<$Res> {
  factory _$$CoinsSearchDtoImplCopyWith(_$CoinsSearchDtoImpl value,
          $Res Function(_$CoinsSearchDtoImpl) then) =
      __$$CoinsSearchDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'query', defaultValue: []) List<CoinDto> coins});
}

/// @nodoc
class __$$CoinsSearchDtoImplCopyWithImpl<$Res>
    extends _$CoinsSearchDtoCopyWithImpl<$Res, _$CoinsSearchDtoImpl>
    implements _$$CoinsSearchDtoImplCopyWith<$Res> {
  __$$CoinsSearchDtoImplCopyWithImpl(
      _$CoinsSearchDtoImpl _value, $Res Function(_$CoinsSearchDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CoinsSearchDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$CoinsSearchDtoImpl(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinsSearchDtoImpl implements _CoinsSearchDto {
  const _$CoinsSearchDtoImpl(
      {@JsonKey(name: 'query', defaultValue: [])
      required final List<CoinDto> coins})
      : _coins = coins;

  factory _$CoinsSearchDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinsSearchDtoImplFromJson(json);

  final List<CoinDto> _coins;
  @override
  @JsonKey(name: 'query', defaultValue: [])
  List<CoinDto> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'CoinsSearchDto(coins: $coins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinsSearchDtoImpl &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  /// Create a copy of CoinsSearchDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinsSearchDtoImplCopyWith<_$CoinsSearchDtoImpl> get copyWith =>
      __$$CoinsSearchDtoImplCopyWithImpl<_$CoinsSearchDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinsSearchDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinsSearchDto implements CoinsSearchDto {
  const factory _CoinsSearchDto(
      {@JsonKey(name: 'query', defaultValue: [])
      required final List<CoinDto> coins}) = _$CoinsSearchDtoImpl;

  factory _CoinsSearchDto.fromJson(Map<String, dynamic> json) =
      _$CoinsSearchDtoImpl.fromJson;

  @override
  @JsonKey(name: 'query', defaultValue: [])
  List<CoinDto> get coins;

  /// Create a copy of CoinsSearchDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CoinsSearchDtoImplCopyWith<_$CoinsSearchDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
