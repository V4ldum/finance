// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../coins_query_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CoinsQueryDto _$CoinsQueryDtoFromJson(Map<String, dynamic> json) {
  return _CoinsQueryDto.fromJson(json);
}

/// @nodoc
mixin _$CoinsQueryDto {
  @JsonKey(name: 'types', defaultValue: [])
  List<CoinQueryItemDto> get coins => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinsQueryDtoCopyWith<CoinsQueryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinsQueryDtoCopyWith<$Res> {
  factory $CoinsQueryDtoCopyWith(
          CoinsQueryDto value, $Res Function(CoinsQueryDto) then) =
      _$CoinsQueryDtoCopyWithImpl<$Res, CoinsQueryDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'types', defaultValue: []) List<CoinQueryItemDto> coins});
}

/// @nodoc
class _$CoinsQueryDtoCopyWithImpl<$Res, $Val extends CoinsQueryDto>
    implements $CoinsQueryDtoCopyWith<$Res> {
  _$CoinsQueryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_value.copyWith(
      coins: null == coins
          ? _value.coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinQueryItemDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinsQueryDtoImplCopyWith<$Res>
    implements $CoinsQueryDtoCopyWith<$Res> {
  factory _$$CoinsQueryDtoImplCopyWith(
          _$CoinsQueryDtoImpl value, $Res Function(_$CoinsQueryDtoImpl) then) =
      __$$CoinsQueryDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'types', defaultValue: []) List<CoinQueryItemDto> coins});
}

/// @nodoc
class __$$CoinsQueryDtoImplCopyWithImpl<$Res>
    extends _$CoinsQueryDtoCopyWithImpl<$Res, _$CoinsQueryDtoImpl>
    implements _$$CoinsQueryDtoImplCopyWith<$Res> {
  __$$CoinsQueryDtoImplCopyWithImpl(
      _$CoinsQueryDtoImpl _value, $Res Function(_$CoinsQueryDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coins = null,
  }) {
    return _then(_$CoinsQueryDtoImpl(
      coins: null == coins
          ? _value._coins
          : coins // ignore: cast_nullable_to_non_nullable
              as List<CoinQueryItemDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinsQueryDtoImpl implements _CoinsQueryDto {
  const _$CoinsQueryDtoImpl(
      {@JsonKey(name: 'types', defaultValue: [])
      required final List<CoinQueryItemDto> coins})
      : _coins = coins;

  factory _$CoinsQueryDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinsQueryDtoImplFromJson(json);

  final List<CoinQueryItemDto> _coins;
  @override
  @JsonKey(name: 'types', defaultValue: [])
  List<CoinQueryItemDto> get coins {
    if (_coins is EqualUnmodifiableListView) return _coins;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coins);
  }

  @override
  String toString() {
    return 'CoinsQueryDto(coins: $coins)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinsQueryDtoImpl &&
            const DeepCollectionEquality().equals(other._coins, _coins));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_coins));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinsQueryDtoImplCopyWith<_$CoinsQueryDtoImpl> get copyWith =>
      __$$CoinsQueryDtoImplCopyWithImpl<_$CoinsQueryDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinsQueryDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinsQueryDto implements CoinsQueryDto {
  const factory _CoinsQueryDto(
      {@JsonKey(name: 'types', defaultValue: [])
      required final List<CoinQueryItemDto> coins}) = _$CoinsQueryDtoImpl;

  factory _CoinsQueryDto.fromJson(Map<String, dynamic> json) =
      _$CoinsQueryDtoImpl.fromJson;

  @override
  @JsonKey(name: 'types', defaultValue: [])
  List<CoinQueryItemDto> get coins;
  @override
  @JsonKey(ignore: true)
  _$$CoinsQueryDtoImplCopyWith<_$CoinsQueryDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CoinQueryItemDto _$CoinQueryItemDtoFromJson(Map<String, dynamic> json) {
  return _CoinQueryItemDto.fromJson(json);
}

/// @nodoc
mixin _$CoinQueryItemDto {
  @JsonKey(defaultValue: 0)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title', defaultValue: '')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'min_year')
  int? get minYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'max_year')
  int? get maxYear => throw _privateConstructorUsedError;
  @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
  String get obverseThumbnailUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
  String get reverseThumbnailUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoinQueryItemDtoCopyWith<CoinQueryItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoinQueryItemDtoCopyWith<$Res> {
  factory $CoinQueryItemDtoCopyWith(
          CoinQueryItemDto value, $Res Function(CoinQueryItemDto) then) =
      _$CoinQueryItemDtoCopyWithImpl<$Res, CoinQueryItemDto>;
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String name,
      @JsonKey(name: 'min_year') int? minYear,
      @JsonKey(name: 'max_year') int? maxYear,
      @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
      String obverseThumbnailUrl,
      @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
      String reverseThumbnailUrl});
}

/// @nodoc
class _$CoinQueryItemDtoCopyWithImpl<$Res, $Val extends CoinQueryItemDto>
    implements $CoinQueryItemDtoCopyWith<$Res> {
  _$CoinQueryItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minYear = freezed,
    Object? maxYear = freezed,
    Object? obverseThumbnailUrl = null,
    Object? reverseThumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minYear: freezed == minYear
          ? _value.minYear
          : minYear // ignore: cast_nullable_to_non_nullable
              as int?,
      maxYear: freezed == maxYear
          ? _value.maxYear
          : maxYear // ignore: cast_nullable_to_non_nullable
              as int?,
      obverseThumbnailUrl: null == obverseThumbnailUrl
          ? _value.obverseThumbnailUrl
          : obverseThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reverseThumbnailUrl: null == reverseThumbnailUrl
          ? _value.reverseThumbnailUrl
          : reverseThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CoinQueryItemDtoImplCopyWith<$Res>
    implements $CoinQueryItemDtoCopyWith<$Res> {
  factory _$$CoinQueryItemDtoImplCopyWith(_$CoinQueryItemDtoImpl value,
          $Res Function(_$CoinQueryItemDtoImpl) then) =
      __$$CoinQueryItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(defaultValue: 0) int id,
      @JsonKey(name: 'title', defaultValue: '') String name,
      @JsonKey(name: 'min_year') int? minYear,
      @JsonKey(name: 'max_year') int? maxYear,
      @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
      String obverseThumbnailUrl,
      @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
      String reverseThumbnailUrl});
}

/// @nodoc
class __$$CoinQueryItemDtoImplCopyWithImpl<$Res>
    extends _$CoinQueryItemDtoCopyWithImpl<$Res, _$CoinQueryItemDtoImpl>
    implements _$$CoinQueryItemDtoImplCopyWith<$Res> {
  __$$CoinQueryItemDtoImplCopyWithImpl(_$CoinQueryItemDtoImpl _value,
      $Res Function(_$CoinQueryItemDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? minYear = freezed,
    Object? maxYear = freezed,
    Object? obverseThumbnailUrl = null,
    Object? reverseThumbnailUrl = null,
  }) {
    return _then(_$CoinQueryItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      minYear: freezed == minYear
          ? _value.minYear
          : minYear // ignore: cast_nullable_to_non_nullable
              as int?,
      maxYear: freezed == maxYear
          ? _value.maxYear
          : maxYear // ignore: cast_nullable_to_non_nullable
              as int?,
      obverseThumbnailUrl: null == obverseThumbnailUrl
          ? _value.obverseThumbnailUrl
          : obverseThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      reverseThumbnailUrl: null == reverseThumbnailUrl
          ? _value.reverseThumbnailUrl
          : reverseThumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CoinQueryItemDtoImpl implements _CoinQueryItemDto {
  const _$CoinQueryItemDtoImpl(
      {@JsonKey(defaultValue: 0) required this.id,
      @JsonKey(name: 'title', defaultValue: '') required this.name,
      @JsonKey(name: 'min_year') required this.minYear,
      @JsonKey(name: 'max_year') required this.maxYear,
      @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
      required this.obverseThumbnailUrl,
      @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
      required this.reverseThumbnailUrl});

  factory _$CoinQueryItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$CoinQueryItemDtoImplFromJson(json);

  @override
  @JsonKey(defaultValue: 0)
  final int id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  final String name;
  @override
  @JsonKey(name: 'min_year')
  final int? minYear;
  @override
  @JsonKey(name: 'max_year')
  final int? maxYear;
  @override
  @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
  final String obverseThumbnailUrl;
  @override
  @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
  final String reverseThumbnailUrl;

  @override
  String toString() {
    return 'CoinQueryItemDto(id: $id, name: $name, minYear: $minYear, maxYear: $maxYear, obverseThumbnailUrl: $obverseThumbnailUrl, reverseThumbnailUrl: $reverseThumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CoinQueryItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.minYear, minYear) || other.minYear == minYear) &&
            (identical(other.maxYear, maxYear) || other.maxYear == maxYear) &&
            (identical(other.obverseThumbnailUrl, obverseThumbnailUrl) ||
                other.obverseThumbnailUrl == obverseThumbnailUrl) &&
            (identical(other.reverseThumbnailUrl, reverseThumbnailUrl) ||
                other.reverseThumbnailUrl == reverseThumbnailUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, minYear, maxYear,
      obverseThumbnailUrl, reverseThumbnailUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CoinQueryItemDtoImplCopyWith<_$CoinQueryItemDtoImpl> get copyWith =>
      __$$CoinQueryItemDtoImplCopyWithImpl<_$CoinQueryItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CoinQueryItemDtoImplToJson(
      this,
    );
  }
}

abstract class _CoinQueryItemDto implements CoinQueryItemDto {
  const factory _CoinQueryItemDto(
      {@JsonKey(defaultValue: 0) required final int id,
      @JsonKey(name: 'title', defaultValue: '') required final String name,
      @JsonKey(name: 'min_year') required final int? minYear,
      @JsonKey(name: 'max_year') required final int? maxYear,
      @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
      required final String obverseThumbnailUrl,
      @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
      required final String reverseThumbnailUrl}) = _$CoinQueryItemDtoImpl;

  factory _CoinQueryItemDto.fromJson(Map<String, dynamic> json) =
      _$CoinQueryItemDtoImpl.fromJson;

  @override
  @JsonKey(defaultValue: 0)
  int get id;
  @override
  @JsonKey(name: 'title', defaultValue: '')
  String get name;
  @override
  @JsonKey(name: 'min_year')
  int? get minYear;
  @override
  @JsonKey(name: 'max_year')
  int? get maxYear;
  @override
  @JsonKey(name: 'obverse_thumbnail', defaultValue: '')
  String get obverseThumbnailUrl;
  @override
  @JsonKey(name: 'reverse_thumbnail', defaultValue: '')
  String get reverseThumbnailUrl;
  @override
  @JsonKey(ignore: true)
  _$$CoinQueryItemDtoImplCopyWith<_$CoinQueryItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
