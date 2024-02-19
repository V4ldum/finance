// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../user_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserInfoDto _$UserInfoDtoFromJson(Map<String, dynamic> json) {
  return _UserInfoDto.fromJson(json);
}

/// @nodoc
mixin _$UserInfoDto {
  UserInfoResultDto get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoDtoCopyWith<UserInfoDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoDtoCopyWith<$Res> {
  factory $UserInfoDtoCopyWith(
          UserInfoDto value, $Res Function(UserInfoDto) then) =
      _$UserInfoDtoCopyWithImpl<$Res, UserInfoDto>;
  @useResult
  $Res call({UserInfoResultDto result});

  $UserInfoResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class _$UserInfoDtoCopyWithImpl<$Res, $Val extends UserInfoDto>
    implements $UserInfoDtoCopyWith<$Res> {
  _$UserInfoDtoCopyWithImpl(this._value, this._then);

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
              as UserInfoResultDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserInfoResultDtoCopyWith<$Res> get result {
    return $UserInfoResultDtoCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserInfoDtoImplCopyWith<$Res>
    implements $UserInfoDtoCopyWith<$Res> {
  factory _$$UserInfoDtoImplCopyWith(
          _$UserInfoDtoImpl value, $Res Function(_$UserInfoDtoImpl) then) =
      __$$UserInfoDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserInfoResultDto result});

  @override
  $UserInfoResultDtoCopyWith<$Res> get result;
}

/// @nodoc
class __$$UserInfoDtoImplCopyWithImpl<$Res>
    extends _$UserInfoDtoCopyWithImpl<$Res, _$UserInfoDtoImpl>
    implements _$$UserInfoDtoImplCopyWith<$Res> {
  __$$UserInfoDtoImplCopyWithImpl(
      _$UserInfoDtoImpl _value, $Res Function(_$UserInfoDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$UserInfoDtoImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as UserInfoResultDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoDtoImpl implements _UserInfoDto {
  const _$UserInfoDtoImpl({required this.result});

  factory _$UserInfoDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoDtoImplFromJson(json);

  @override
  final UserInfoResultDto result;

  @override
  String toString() {
    return 'UserInfoDto(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoDtoImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoDtoImplCopyWith<_$UserInfoDtoImpl> get copyWith =>
      __$$UserInfoDtoImplCopyWithImpl<_$UserInfoDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoDtoImplToJson(
      this,
    );
  }
}

abstract class _UserInfoDto implements UserInfoDto {
  const factory _UserInfoDto({required final UserInfoResultDto result}) =
      _$UserInfoDtoImpl;

  factory _UserInfoDto.fromJson(Map<String, dynamic> json) =
      _$UserInfoDtoImpl.fromJson;

  @override
  UserInfoResultDto get result;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoDtoImplCopyWith<_$UserInfoDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserInfoResultDto _$UserInfoResultDtoFromJson(Map<String, dynamic> json) {
  return _UserInfoResultDtoo.fromJson(json);
}

/// @nodoc
mixin _$UserInfoResultDto {
  @JsonKey(name: 'last_asset_updated_at')
  String get lastSync => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserInfoResultDtoCopyWith<UserInfoResultDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserInfoResultDtoCopyWith<$Res> {
  factory $UserInfoResultDtoCopyWith(
          UserInfoResultDto value, $Res Function(UserInfoResultDto) then) =
      _$UserInfoResultDtoCopyWithImpl<$Res, UserInfoResultDto>;
  @useResult
  $Res call({@JsonKey(name: 'last_asset_updated_at') String lastSync});
}

/// @nodoc
class _$UserInfoResultDtoCopyWithImpl<$Res, $Val extends UserInfoResultDto>
    implements $UserInfoResultDtoCopyWith<$Res> {
  _$UserInfoResultDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastSync = null,
  }) {
    return _then(_value.copyWith(
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserInfoResultDtooImplCopyWith<$Res>
    implements $UserInfoResultDtoCopyWith<$Res> {
  factory _$$UserInfoResultDtooImplCopyWith(_$UserInfoResultDtooImpl value,
          $Res Function(_$UserInfoResultDtooImpl) then) =
      __$$UserInfoResultDtooImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'last_asset_updated_at') String lastSync});
}

/// @nodoc
class __$$UserInfoResultDtooImplCopyWithImpl<$Res>
    extends _$UserInfoResultDtoCopyWithImpl<$Res, _$UserInfoResultDtooImpl>
    implements _$$UserInfoResultDtooImplCopyWith<$Res> {
  __$$UserInfoResultDtooImplCopyWithImpl(_$UserInfoResultDtooImpl _value,
      $Res Function(_$UserInfoResultDtooImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lastSync = null,
  }) {
    return _then(_$UserInfoResultDtooImpl(
      lastSync: null == lastSync
          ? _value.lastSync
          : lastSync // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserInfoResultDtooImpl implements _UserInfoResultDtoo {
  const _$UserInfoResultDtooImpl(
      {@JsonKey(name: 'last_asset_updated_at') required this.lastSync});

  factory _$UserInfoResultDtooImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserInfoResultDtooImplFromJson(json);

  @override
  @JsonKey(name: 'last_asset_updated_at')
  final String lastSync;

  @override
  String toString() {
    return 'UserInfoResultDto(lastSync: $lastSync)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserInfoResultDtooImpl &&
            (identical(other.lastSync, lastSync) ||
                other.lastSync == lastSync));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lastSync);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserInfoResultDtooImplCopyWith<_$UserInfoResultDtooImpl> get copyWith =>
      __$$UserInfoResultDtooImplCopyWithImpl<_$UserInfoResultDtooImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserInfoResultDtooImplToJson(
      this,
    );
  }
}

abstract class _UserInfoResultDtoo implements UserInfoResultDto {
  const factory _UserInfoResultDtoo(
      {@JsonKey(name: 'last_asset_updated_at')
      required final String lastSync}) = _$UserInfoResultDtooImpl;

  factory _UserInfoResultDtoo.fromJson(Map<String, dynamic> json) =
      _$UserInfoResultDtooImpl.fromJson;

  @override
  @JsonKey(name: 'last_asset_updated_at')
  String get lastSync;
  @override
  @JsonKey(ignore: true)
  _$$UserInfoResultDtooImplCopyWith<_$UserInfoResultDtooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
