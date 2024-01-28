// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../app_cache_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppCache {
  String get applicationDirectory => throw _privateConstructorUsedError;
  String get finarySessionId => throw _privateConstructorUsedError;
  List<String> get investmentStocksSymbols =>
      throw _privateConstructorUsedError;
  AssetsModel? get assets => throw _privateConstructorUsedError;
  set assets(AssetsModel? value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppCacheCopyWith<AppCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCacheCopyWith<$Res> {
  factory $AppCacheCopyWith(AppCache value, $Res Function(AppCache) then) =
      _$AppCacheCopyWithImpl<$Res, AppCache>;
  @useResult
  $Res call(
      {String applicationDirectory,
      String finarySessionId,
      List<String> investmentStocksSymbols,
      AssetsModel? assets});
}

/// @nodoc
class _$AppCacheCopyWithImpl<$Res, $Val extends AppCache>
    implements $AppCacheCopyWith<$Res> {
  _$AppCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationDirectory = null,
    Object? finarySessionId = null,
    Object? investmentStocksSymbols = null,
    Object? assets = freezed,
  }) {
    return _then(_value.copyWith(
      applicationDirectory: null == applicationDirectory
          ? _value.applicationDirectory
          : applicationDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      finarySessionId: null == finarySessionId
          ? _value.finarySessionId
          : finarySessionId // ignore: cast_nullable_to_non_nullable
              as String,
      investmentStocksSymbols: null == investmentStocksSymbols
          ? _value.investmentStocksSymbols
          : investmentStocksSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as AssetsModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppCacheImplCopyWith<$Res>
    implements $AppCacheCopyWith<$Res> {
  factory _$$AppCacheImplCopyWith(
          _$AppCacheImpl value, $Res Function(_$AppCacheImpl) then) =
      __$$AppCacheImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String applicationDirectory,
      String finarySessionId,
      List<String> investmentStocksSymbols,
      AssetsModel? assets});
}

/// @nodoc
class __$$AppCacheImplCopyWithImpl<$Res>
    extends _$AppCacheCopyWithImpl<$Res, _$AppCacheImpl>
    implements _$$AppCacheImplCopyWith<$Res> {
  __$$AppCacheImplCopyWithImpl(
      _$AppCacheImpl _value, $Res Function(_$AppCacheImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationDirectory = null,
    Object? finarySessionId = null,
    Object? investmentStocksSymbols = null,
    Object? assets = freezed,
  }) {
    return _then(_$AppCacheImpl(
      applicationDirectory: null == applicationDirectory
          ? _value.applicationDirectory
          : applicationDirectory // ignore: cast_nullable_to_non_nullable
              as String,
      finarySessionId: null == finarySessionId
          ? _value.finarySessionId
          : finarySessionId // ignore: cast_nullable_to_non_nullable
              as String,
      investmentStocksSymbols: null == investmentStocksSymbols
          ? _value.investmentStocksSymbols
          : investmentStocksSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assets: freezed == assets
          ? _value.assets
          : assets // ignore: cast_nullable_to_non_nullable
              as AssetsModel?,
    ));
  }
}

/// @nodoc

class _$AppCacheImpl with DiagnosticableTreeMixin implements _AppCache {
  _$AppCacheImpl(
      {this.applicationDirectory = '',
      this.finarySessionId = '',
      this.investmentStocksSymbols = const [],
      this.assets});

  @override
  @JsonKey()
  final String applicationDirectory;
  @override
  @JsonKey()
  final String finarySessionId;
  @override
  @JsonKey()
  final List<String> investmentStocksSymbols;
  @override
  AssetsModel? assets;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppCache(applicationDirectory: $applicationDirectory, finarySessionId: $finarySessionId, investmentStocksSymbols: $investmentStocksSymbols, assets: $assets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppCache'))
      ..add(DiagnosticsProperty('applicationDirectory', applicationDirectory))
      ..add(DiagnosticsProperty('finarySessionId', finarySessionId))
      ..add(DiagnosticsProperty(
          'investmentStocksSymbols', investmentStocksSymbols))
      ..add(DiagnosticsProperty('assets', assets));
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppCacheImplCopyWith<_$AppCacheImpl> get copyWith =>
      __$$AppCacheImplCopyWithImpl<_$AppCacheImpl>(this, _$identity);
}

abstract class _AppCache implements AppCache {
  factory _AppCache(
      {final String applicationDirectory,
      final String finarySessionId,
      final List<String> investmentStocksSymbols,
      AssetsModel? assets}) = _$AppCacheImpl;

  @override
  String get applicationDirectory;
  @override
  String get finarySessionId;
  @override
  List<String> get investmentStocksSymbols;
  @override
  AssetsModel? get assets;
  set assets(AssetsModel? value);
  @override
  @JsonKey(ignore: true)
  _$$AppCacheImplCopyWith<_$AppCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
