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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppCache _$AppCacheFromJson(Map<String, dynamic> json) {
  return _AppCache.fromJson(json);
}

/// @nodoc
mixin _$AppCache {
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get applicationDirectory => throw _privateConstructorUsedError;
  String get finarySessionId => throw _privateConstructorUsedError;
  String get customBackApiKey => throw _privateConstructorUsedError;
  double get gsrGoldFavorableRatio => throw _privateConstructorUsedError;
  double get gsrSilverFavorableRatio => throw _privateConstructorUsedError;
  double get spgrSPFavorableRatio => throw _privateConstructorUsedError;
  double get spgrGoldFavorableRatio => throw _privateConstructorUsedError;
  List<String> get investmentStocksSymbols =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  FinaryAssetsModel? get finaryAssets => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set finaryAssets(FinaryAssetsModel? value) =>
      throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  PhysicalAssetsModel? get physicalAssets => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set physicalAssets(PhysicalAssetsModel? value) =>
      throw _privateConstructorUsedError;

  /// Serializes this AppCache to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppCacheCopyWith<AppCache> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCacheCopyWith<$Res> {
  factory $AppCacheCopyWith(AppCache value, $Res Function(AppCache) then) =
      _$AppCacheCopyWithImpl<$Res, AppCache>;
  @useResult
  $Res call(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      String applicationDirectory,
      String finarySessionId,
      String customBackApiKey,
      double gsrGoldFavorableRatio,
      double gsrSilverFavorableRatio,
      double spgrSPFavorableRatio,
      double spgrGoldFavorableRatio,
      List<String> investmentStocksSymbols,
      @JsonKey(includeFromJson: false, includeToJson: false)
      FinaryAssetsModel? finaryAssets,
      @JsonKey(includeFromJson: false, includeToJson: false)
      PhysicalAssetsModel? physicalAssets});
}

/// @nodoc
class _$AppCacheCopyWithImpl<$Res, $Val extends AppCache>
    implements $AppCacheCopyWith<$Res> {
  _$AppCacheCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationDirectory = null,
    Object? finarySessionId = null,
    Object? customBackApiKey = null,
    Object? gsrGoldFavorableRatio = null,
    Object? gsrSilverFavorableRatio = null,
    Object? spgrSPFavorableRatio = null,
    Object? spgrGoldFavorableRatio = null,
    Object? investmentStocksSymbols = null,
    Object? finaryAssets = freezed,
    Object? physicalAssets = freezed,
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
      customBackApiKey: null == customBackApiKey
          ? _value.customBackApiKey
          : customBackApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      gsrGoldFavorableRatio: null == gsrGoldFavorableRatio
          ? _value.gsrGoldFavorableRatio
          : gsrGoldFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      gsrSilverFavorableRatio: null == gsrSilverFavorableRatio
          ? _value.gsrSilverFavorableRatio
          : gsrSilverFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      spgrSPFavorableRatio: null == spgrSPFavorableRatio
          ? _value.spgrSPFavorableRatio
          : spgrSPFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      spgrGoldFavorableRatio: null == spgrGoldFavorableRatio
          ? _value.spgrGoldFavorableRatio
          : spgrGoldFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      investmentStocksSymbols: null == investmentStocksSymbols
          ? _value.investmentStocksSymbols
          : investmentStocksSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      finaryAssets: freezed == finaryAssets
          ? _value.finaryAssets
          : finaryAssets // ignore: cast_nullable_to_non_nullable
              as FinaryAssetsModel?,
      physicalAssets: freezed == physicalAssets
          ? _value.physicalAssets
          : physicalAssets // ignore: cast_nullable_to_non_nullable
              as PhysicalAssetsModel?,
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
      {@JsonKey(includeFromJson: false, includeToJson: false)
      String applicationDirectory,
      String finarySessionId,
      String customBackApiKey,
      double gsrGoldFavorableRatio,
      double gsrSilverFavorableRatio,
      double spgrSPFavorableRatio,
      double spgrGoldFavorableRatio,
      List<String> investmentStocksSymbols,
      @JsonKey(includeFromJson: false, includeToJson: false)
      FinaryAssetsModel? finaryAssets,
      @JsonKey(includeFromJson: false, includeToJson: false)
      PhysicalAssetsModel? physicalAssets});
}

/// @nodoc
class __$$AppCacheImplCopyWithImpl<$Res>
    extends _$AppCacheCopyWithImpl<$Res, _$AppCacheImpl>
    implements _$$AppCacheImplCopyWith<$Res> {
  __$$AppCacheImplCopyWithImpl(
      _$AppCacheImpl _value, $Res Function(_$AppCacheImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? applicationDirectory = null,
    Object? finarySessionId = null,
    Object? customBackApiKey = null,
    Object? gsrGoldFavorableRatio = null,
    Object? gsrSilverFavorableRatio = null,
    Object? spgrSPFavorableRatio = null,
    Object? spgrGoldFavorableRatio = null,
    Object? investmentStocksSymbols = null,
    Object? finaryAssets = freezed,
    Object? physicalAssets = freezed,
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
      customBackApiKey: null == customBackApiKey
          ? _value.customBackApiKey
          : customBackApiKey // ignore: cast_nullable_to_non_nullable
              as String,
      gsrGoldFavorableRatio: null == gsrGoldFavorableRatio
          ? _value.gsrGoldFavorableRatio
          : gsrGoldFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      gsrSilverFavorableRatio: null == gsrSilverFavorableRatio
          ? _value.gsrSilverFavorableRatio
          : gsrSilverFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      spgrSPFavorableRatio: null == spgrSPFavorableRatio
          ? _value.spgrSPFavorableRatio
          : spgrSPFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      spgrGoldFavorableRatio: null == spgrGoldFavorableRatio
          ? _value.spgrGoldFavorableRatio
          : spgrGoldFavorableRatio // ignore: cast_nullable_to_non_nullable
              as double,
      investmentStocksSymbols: null == investmentStocksSymbols
          ? _value.investmentStocksSymbols
          : investmentStocksSymbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      finaryAssets: freezed == finaryAssets
          ? _value.finaryAssets
          : finaryAssets // ignore: cast_nullable_to_non_nullable
              as FinaryAssetsModel?,
      physicalAssets: freezed == physicalAssets
          ? _value.physicalAssets
          : physicalAssets // ignore: cast_nullable_to_non_nullable
              as PhysicalAssetsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppCacheImpl with DiagnosticableTreeMixin implements _AppCache {
  _$AppCacheImpl(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      this.applicationDirectory = '',
      this.finarySessionId = '',
      this.customBackApiKey = '',
      this.gsrGoldFavorableRatio =
          PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio,
      this.gsrSilverFavorableRatio =
          PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio,
      this.spgrSPFavorableRatio =
          PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio,
      this.spgrGoldFavorableRatio =
          PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio,
      this.investmentStocksSymbols = const [],
      @JsonKey(includeFromJson: false, includeToJson: false) this.finaryAssets,
      @JsonKey(includeFromJson: false, includeToJson: false)
      this.physicalAssets});

  factory _$AppCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppCacheImplFromJson(json);

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  final String applicationDirectory;
  @override
  @JsonKey()
  final String finarySessionId;
  @override
  @JsonKey()
  final String customBackApiKey;
  @override
  @JsonKey()
  final double gsrGoldFavorableRatio;
  @override
  @JsonKey()
  final double gsrSilverFavorableRatio;
  @override
  @JsonKey()
  final double spgrSPFavorableRatio;
  @override
  @JsonKey()
  final double spgrGoldFavorableRatio;
  @override
  @JsonKey()
  final List<String> investmentStocksSymbols;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  FinaryAssetsModel? finaryAssets;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  PhysicalAssetsModel? physicalAssets;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppCache(applicationDirectory: $applicationDirectory, finarySessionId: $finarySessionId, customBackApiKey: $customBackApiKey, gsrGoldFavorableRatio: $gsrGoldFavorableRatio, gsrSilverFavorableRatio: $gsrSilverFavorableRatio, spgrSPFavorableRatio: $spgrSPFavorableRatio, spgrGoldFavorableRatio: $spgrGoldFavorableRatio, investmentStocksSymbols: $investmentStocksSymbols, finaryAssets: $finaryAssets, physicalAssets: $physicalAssets)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppCache'))
      ..add(DiagnosticsProperty('applicationDirectory', applicationDirectory))
      ..add(DiagnosticsProperty('finarySessionId', finarySessionId))
      ..add(DiagnosticsProperty('customBackApiKey', customBackApiKey))
      ..add(DiagnosticsProperty('gsrGoldFavorableRatio', gsrGoldFavorableRatio))
      ..add(DiagnosticsProperty(
          'gsrSilverFavorableRatio', gsrSilverFavorableRatio))
      ..add(DiagnosticsProperty('spgrSPFavorableRatio', spgrSPFavorableRatio))
      ..add(
          DiagnosticsProperty('spgrGoldFavorableRatio', spgrGoldFavorableRatio))
      ..add(DiagnosticsProperty(
          'investmentStocksSymbols', investmentStocksSymbols))
      ..add(DiagnosticsProperty('finaryAssets', finaryAssets))
      ..add(DiagnosticsProperty('physicalAssets', physicalAssets));
  }

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppCacheImplCopyWith<_$AppCacheImpl> get copyWith =>
      __$$AppCacheImplCopyWithImpl<_$AppCacheImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppCacheImplToJson(
      this,
    );
  }
}

abstract class _AppCache implements AppCache {
  factory _AppCache(
      {@JsonKey(includeFromJson: false, includeToJson: false)
      final String applicationDirectory,
      final String finarySessionId,
      final String customBackApiKey,
      final double gsrGoldFavorableRatio,
      final double gsrSilverFavorableRatio,
      final double spgrSPFavorableRatio,
      final double spgrGoldFavorableRatio,
      final List<String> investmentStocksSymbols,
      @JsonKey(includeFromJson: false, includeToJson: false)
      FinaryAssetsModel? finaryAssets,
      @JsonKey(includeFromJson: false, includeToJson: false)
      PhysicalAssetsModel? physicalAssets}) = _$AppCacheImpl;

  factory _AppCache.fromJson(Map<String, dynamic> json) =
      _$AppCacheImpl.fromJson;

  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  String get applicationDirectory;
  @override
  String get finarySessionId;
  @override
  String get customBackApiKey;
  @override
  double get gsrGoldFavorableRatio;
  @override
  double get gsrSilverFavorableRatio;
  @override
  double get spgrSPFavorableRatio;
  @override
  double get spgrGoldFavorableRatio;
  @override
  List<String> get investmentStocksSymbols;
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  FinaryAssetsModel? get finaryAssets;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set finaryAssets(FinaryAssetsModel? value);
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  PhysicalAssetsModel? get physicalAssets;
  @JsonKey(includeFromJson: false, includeToJson: false)
  set physicalAssets(PhysicalAssetsModel? value);

  /// Create a copy of AppCache
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppCacheImplCopyWith<_$AppCacheImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
