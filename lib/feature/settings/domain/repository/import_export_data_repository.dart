import 'dart:convert';
import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:finance/feature/authentication/data/data_source/finary_authentication_data_source.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metals_trade_value_model.dart';
import 'package:finance/feature/settings/data/data_source/file_picker_data_source.dart';
import 'package:finance/shared/constant/app_string.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/import_export_data_repository.g.dart';

@riverpod
ImportExportDataRepository importExportDataRepository(ImportExportDataRepositoryRef ref) {
  final cache = ref.watch(appCacheControllerProvider);

  return ImportExportDataRepository(
    ref,
    PersistCookieJar(
      storage: FileStorage('${cache.applicationDirectory}${Platform.pathSeparator}.finary_cookies'),
    ),
  );
}

class ImportExportDataRepository {
  ImportExportDataRepository(
    this._ref,
    this._cookieJar,
  );

  static const String _domainCookiesKey = 'domainCookies';
  static const String _hostCookiesKey = 'hostCookies';
  final PersistCookieJar _cookieJar;
  final ImportExportDataRepositoryRef _ref;

  FilePickerDataSource get _filePickerDataSource => _ref.read(filePickerDataSourceProvider);
  AppCache get _cache => _ref.read(appCacheControllerProvider);
  AppCacheController get _cacheController => _ref.read(appCacheControllerProvider.notifier);

  Future<void> export() async {
    final filename = 'export_${DateTime.now().toIso8601String()}.json';
    await _cookieJar.forceInit();

    final cacheMap = _cache.toJson();
    final domainCookiesMap = _cookieJar.domainCookies;
    final hostCookiesMap = _cookieJar.hostCookies;
    final data = jsonEncode({
      ...cacheMap,
      _domainCookiesKey: domainCookiesMap,
      _hostCookiesKey: hostCookiesMap,
    });

    await _filePickerDataSource.openDialogSaveFile(content: data, filename: filename);
  }

  Future<AppCache?> import({
    required Future<PreciousMetalTradeValueModel> Function() goldTradePriceFuture,
    required Future<PreciousMetalTradeValueModel> Function() silverTradePriceFuture,
  }) async {
    final file = await _filePickerDataSource.openDialogReadFile(
      fileExtensionsFilter: ['json'],
      mimeTypesFilter: ['application/json'],
    );

    if (file == null) {
      return null;
    }

    final fileContent = Map<String, dynamic>.from(jsonDecode(await file.readAsString(encoding: latin1)) as Map);
    final cache = AppCache.fromJson(fileContent);

    if (_cache.customBackApiKey.isEmpty) {
      // Temporary save the customBackApiKey to be able to query gold & silver price
      _cacheController.refreshCustomBackApiKey(key: cache.customBackApiKey);
    }

    await _cookieJar.forceInit();

    final domainCookies = await _mapCookies(fileContent[_domainCookiesKey] as Map<String, dynamic>);
    final hostCookies = await _mapCookies(fileContent[_hostCookiesKey] as Map<String, dynamic>);

    _cookieJar.domainCookies.addAll(domainCookies);
    _cookieJar.hostCookies.addAll(hostCookies);

    await _refreshAuth(_cookieJar, cache.finarySessionId);

    return cache;
  }

  Future<Map<String, Map<String, Map<String, SerializableCookie>>>> _mapCookies(Map<String, dynamic> hostMap) async {
    final result = <String, Map<String, Map<String, SerializableCookie>>>{};

    hostMap.forEach((hostKey, hostValue) {
      final pathMap = hostValue as Map<String, dynamic>;
      final convertedPathMap = <String, Map<String, SerializableCookie>>{};

      pathMap.forEach((pathKey, pathValue) {
        final cookieMap = pathValue as Map<String, dynamic>;
        final convertedCookieMap = <String, SerializableCookie>{};

        cookieMap.forEach((cookieKey, cookieValue) {
          final innerMap = <String, SerializableCookie>{cookieKey: SerializableCookie.fromJson(cookieValue as String)};
          convertedCookieMap.addAll(innerMap);
        });

        convertedPathMap[pathKey] = convertedCookieMap;
      });

      result[hostKey] = convertedPathMap;
    });

    return result;
  }

  Future<void> _refreshAuth(CookieJar cookieJar, String sessionId) async {
    // Ugly manual reauth, it is what it is
    await FinaryAuthenticationDataSource(
      Dio(
        BaseOptions(
          baseUrl: AppString.finaryClerkApiUrl,
          contentType: Headers.formUrlEncodedContentType,
          headers: {
            'Origin': AppString.finaryAppUrl,
            'Referer': AppString.finaryAppUrl,
          },
        ),
      )..interceptors.add(CookieManager(cookieJar)),
      cookieJar,
    ).refreshToken(sessionId: sessionId);
  }
}
