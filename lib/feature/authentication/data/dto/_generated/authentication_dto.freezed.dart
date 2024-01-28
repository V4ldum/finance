// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../authentication_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthenticationDto _$AuthenticationDtoFromJson(Map<String, dynamic> json) {
  return _AuthenticationDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationDto {
  AuthenticationResponseDto get response => throw _privateConstructorUsedError;
  AuthenticationClientDto get client => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationDtoCopyWith<AuthenticationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationDtoCopyWith<$Res> {
  factory $AuthenticationDtoCopyWith(
          AuthenticationDto value, $Res Function(AuthenticationDto) then) =
      _$AuthenticationDtoCopyWithImpl<$Res, AuthenticationDto>;
  @useResult
  $Res call(
      {AuthenticationResponseDto response, AuthenticationClientDto client});

  $AuthenticationResponseDtoCopyWith<$Res> get response;
  $AuthenticationClientDtoCopyWith<$Res> get client;
}

/// @nodoc
class _$AuthenticationDtoCopyWithImpl<$Res, $Val extends AuthenticationDto>
    implements $AuthenticationDtoCopyWith<$Res> {
  _$AuthenticationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? client = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AuthenticationResponseDto,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as AuthenticationClientDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationResponseDtoCopyWith<$Res> get response {
    return $AuthenticationResponseDtoCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationClientDtoCopyWith<$Res> get client {
    return $AuthenticationClientDtoCopyWith<$Res>(_value.client, (value) {
      return _then(_value.copyWith(client: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticationDtoImplCopyWith<$Res>
    implements $AuthenticationDtoCopyWith<$Res> {
  factory _$$AuthenticationDtoImplCopyWith(_$AuthenticationDtoImpl value,
          $Res Function(_$AuthenticationDtoImpl) then) =
      __$$AuthenticationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AuthenticationResponseDto response, AuthenticationClientDto client});

  @override
  $AuthenticationResponseDtoCopyWith<$Res> get response;
  @override
  $AuthenticationClientDtoCopyWith<$Res> get client;
}

/// @nodoc
class __$$AuthenticationDtoImplCopyWithImpl<$Res>
    extends _$AuthenticationDtoCopyWithImpl<$Res, _$AuthenticationDtoImpl>
    implements _$$AuthenticationDtoImplCopyWith<$Res> {
  __$$AuthenticationDtoImplCopyWithImpl(_$AuthenticationDtoImpl _value,
      $Res Function(_$AuthenticationDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? client = null,
  }) {
    return _then(_$AuthenticationDtoImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AuthenticationResponseDto,
      client: null == client
          ? _value.client
          : client // ignore: cast_nullable_to_non_nullable
              as AuthenticationClientDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationDtoImpl implements _AuthenticationDto {
  const _$AuthenticationDtoImpl({required this.response, required this.client});

  factory _$AuthenticationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationDtoImplFromJson(json);

  @override
  final AuthenticationResponseDto response;
  @override
  final AuthenticationClientDto client;

  @override
  String toString() {
    return 'AuthenticationDto(response: $response, client: $client)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationDtoImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.client, client) || other.client == client));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, response, client);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationDtoImplCopyWith<_$AuthenticationDtoImpl> get copyWith =>
      __$$AuthenticationDtoImplCopyWithImpl<_$AuthenticationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationDto implements AuthenticationDto {
  const factory _AuthenticationDto(
      {required final AuthenticationResponseDto response,
      required final AuthenticationClientDto client}) = _$AuthenticationDtoImpl;

  factory _AuthenticationDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticationDtoImpl.fromJson;

  @override
  AuthenticationResponseDto get response;
  @override
  AuthenticationClientDto get client;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationDtoImplCopyWith<_$AuthenticationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthenticationResponseDto _$AuthenticationResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationResponseDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationResponseDto {
  @JsonKey(name: 'id')
  String get sia => throw _privateConstructorUsedError;
  @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown)
  AuthenticationStatusDto get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationResponseDtoCopyWith<AuthenticationResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationResponseDtoCopyWith<$Res> {
  factory $AuthenticationResponseDtoCopyWith(AuthenticationResponseDto value,
          $Res Function(AuthenticationResponseDto) then) =
      _$AuthenticationResponseDtoCopyWithImpl<$Res, AuthenticationResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String sia,
      @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown)
      AuthenticationStatusDto status});
}

/// @nodoc
class _$AuthenticationResponseDtoCopyWithImpl<$Res,
        $Val extends AuthenticationResponseDto>
    implements $AuthenticationResponseDtoCopyWith<$Res> {
  _$AuthenticationResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sia = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      sia: null == sia
          ? _value.sia
          : sia // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusDto,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationResponseDtoImplCopyWith<$Res>
    implements $AuthenticationResponseDtoCopyWith<$Res> {
  factory _$$AuthenticationResponseDtoImplCopyWith(
          _$AuthenticationResponseDtoImpl value,
          $Res Function(_$AuthenticationResponseDtoImpl) then) =
      __$$AuthenticationResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String sia,
      @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown)
      AuthenticationStatusDto status});
}

/// @nodoc
class __$$AuthenticationResponseDtoImplCopyWithImpl<$Res>
    extends _$AuthenticationResponseDtoCopyWithImpl<$Res,
        _$AuthenticationResponseDtoImpl>
    implements _$$AuthenticationResponseDtoImplCopyWith<$Res> {
  __$$AuthenticationResponseDtoImplCopyWithImpl(
      _$AuthenticationResponseDtoImpl _value,
      $Res Function(_$AuthenticationResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sia = null,
    Object? status = null,
  }) {
    return _then(_$AuthenticationResponseDtoImpl(
      sia: null == sia
          ? _value.sia
          : sia // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatusDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationResponseDtoImpl implements _AuthenticationResponseDto {
  const _$AuthenticationResponseDtoImpl(
      {@JsonKey(name: 'id') required this.sia,
      @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown)
      required this.status});

  factory _$AuthenticationResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationResponseDtoImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String sia;
  @override
  @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown)
  final AuthenticationStatusDto status;

  @override
  String toString() {
    return 'AuthenticationResponseDto(sia: $sia, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationResponseDtoImpl &&
            (identical(other.sia, sia) || other.sia == sia) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sia, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationResponseDtoImplCopyWith<_$AuthenticationResponseDtoImpl>
      get copyWith => __$$AuthenticationResponseDtoImplCopyWithImpl<
          _$AuthenticationResponseDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationResponseDto implements AuthenticationResponseDto {
  const factory _AuthenticationResponseDto(
          {@JsonKey(name: 'id') required final String sia,
          @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown)
          required final AuthenticationStatusDto status}) =
      _$AuthenticationResponseDtoImpl;

  factory _AuthenticationResponseDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticationResponseDtoImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String get sia;
  @override
  @JsonKey(unknownEnumValue: AuthenticationStatusDto.unknown)
  AuthenticationStatusDto get status;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationResponseDtoImplCopyWith<_$AuthenticationResponseDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthenticationClientDto _$AuthenticationClientDtoFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationClientDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationClientDto {
  @JsonKey(name: 'sessions', readValue: _readAuthenticationSession)
  AuthenticationSessionDto? get session => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationClientDtoCopyWith<AuthenticationClientDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationClientDtoCopyWith<$Res> {
  factory $AuthenticationClientDtoCopyWith(AuthenticationClientDto value,
          $Res Function(AuthenticationClientDto) then) =
      _$AuthenticationClientDtoCopyWithImpl<$Res, AuthenticationClientDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sessions', readValue: _readAuthenticationSession)
      AuthenticationSessionDto? session});

  $AuthenticationSessionDtoCopyWith<$Res>? get session;
}

/// @nodoc
class _$AuthenticationClientDtoCopyWithImpl<$Res,
        $Val extends AuthenticationClientDto>
    implements $AuthenticationClientDtoCopyWith<$Res> {
  _$AuthenticationClientDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_value.copyWith(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as AuthenticationSessionDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthenticationSessionDtoCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $AuthenticationSessionDtoCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthenticationClientDtoImplCopyWith<$Res>
    implements $AuthenticationClientDtoCopyWith<$Res> {
  factory _$$AuthenticationClientDtoImplCopyWith(
          _$AuthenticationClientDtoImpl value,
          $Res Function(_$AuthenticationClientDtoImpl) then) =
      __$$AuthenticationClientDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sessions', readValue: _readAuthenticationSession)
      AuthenticationSessionDto? session});

  @override
  $AuthenticationSessionDtoCopyWith<$Res>? get session;
}

/// @nodoc
class __$$AuthenticationClientDtoImplCopyWithImpl<$Res>
    extends _$AuthenticationClientDtoCopyWithImpl<$Res,
        _$AuthenticationClientDtoImpl>
    implements _$$AuthenticationClientDtoImplCopyWith<$Res> {
  __$$AuthenticationClientDtoImplCopyWithImpl(
      _$AuthenticationClientDtoImpl _value,
      $Res Function(_$AuthenticationClientDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? session = freezed,
  }) {
    return _then(_$AuthenticationClientDtoImpl(
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as AuthenticationSessionDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationClientDtoImpl implements _AuthenticationClientDto {
  const _$AuthenticationClientDtoImpl(
      {@JsonKey(name: 'sessions', readValue: _readAuthenticationSession)
      required this.session});

  factory _$AuthenticationClientDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationClientDtoImplFromJson(json);

  @override
  @JsonKey(name: 'sessions', readValue: _readAuthenticationSession)
  final AuthenticationSessionDto? session;

  @override
  String toString() {
    return 'AuthenticationClientDto(session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationClientDtoImpl &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationClientDtoImplCopyWith<_$AuthenticationClientDtoImpl>
      get copyWith => __$$AuthenticationClientDtoImplCopyWithImpl<
          _$AuthenticationClientDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationClientDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationClientDto implements AuthenticationClientDto {
  const factory _AuthenticationClientDto(
          {@JsonKey(name: 'sessions', readValue: _readAuthenticationSession)
          required final AuthenticationSessionDto? session}) =
      _$AuthenticationClientDtoImpl;

  factory _AuthenticationClientDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticationClientDtoImpl.fromJson;

  @override
  @JsonKey(name: 'sessions', readValue: _readAuthenticationSession)
  AuthenticationSessionDto? get session;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationClientDtoImplCopyWith<_$AuthenticationClientDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

AuthenticationSessionDto _$AuthenticationSessionDtoFromJson(
    Map<String, dynamic> json) {
  return _AuthenticationSessionDto.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationSessionDto {
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationSessionDtoCopyWith<AuthenticationSessionDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationSessionDtoCopyWith<$Res> {
  factory $AuthenticationSessionDtoCopyWith(AuthenticationSessionDto value,
          $Res Function(AuthenticationSessionDto) then) =
      _$AuthenticationSessionDtoCopyWithImpl<$Res, AuthenticationSessionDto>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class _$AuthenticationSessionDtoCopyWithImpl<$Res,
        $Val extends AuthenticationSessionDto>
    implements $AuthenticationSessionDtoCopyWith<$Res> {
  _$AuthenticationSessionDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationSessionDtoImplCopyWith<$Res>
    implements $AuthenticationSessionDtoCopyWith<$Res> {
  factory _$$AuthenticationSessionDtoImplCopyWith(
          _$AuthenticationSessionDtoImpl value,
          $Res Function(_$AuthenticationSessionDtoImpl) then) =
      __$$AuthenticationSessionDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$AuthenticationSessionDtoImplCopyWithImpl<$Res>
    extends _$AuthenticationSessionDtoCopyWithImpl<$Res,
        _$AuthenticationSessionDtoImpl>
    implements _$$AuthenticationSessionDtoImplCopyWith<$Res> {
  __$$AuthenticationSessionDtoImplCopyWithImpl(
      _$AuthenticationSessionDtoImpl _value,
      $Res Function(_$AuthenticationSessionDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$AuthenticationSessionDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationSessionDtoImpl implements _AuthenticationSessionDto {
  const _$AuthenticationSessionDtoImpl({required this.id});

  factory _$AuthenticationSessionDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationSessionDtoImplFromJson(json);

  @override
  final String id;

  @override
  String toString() {
    return 'AuthenticationSessionDto(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationSessionDtoImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationSessionDtoImplCopyWith<_$AuthenticationSessionDtoImpl>
      get copyWith => __$$AuthenticationSessionDtoImplCopyWithImpl<
          _$AuthenticationSessionDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationSessionDtoImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationSessionDto implements AuthenticationSessionDto {
  const factory _AuthenticationSessionDto({required final String id}) =
      _$AuthenticationSessionDtoImpl;

  factory _AuthenticationSessionDto.fromJson(Map<String, dynamic> json) =
      _$AuthenticationSessionDtoImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationSessionDtoImplCopyWith<_$AuthenticationSessionDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
