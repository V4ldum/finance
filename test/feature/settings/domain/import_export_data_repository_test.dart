import 'dart:convert';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:finance/feature/settings/data/data_source/file_picker_data_source.dart';
import 'package:finance/feature/settings/domain/repository/import_export_data_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FilePickerDataSourceMock extends Mock implements FilePickerDataSource {}

class PersistCookieJarMock extends Mock implements PersistCookieJar {}

void main() {
  late FilePickerDataSource filePickerDataSource;
  late AppCache cache;
  late PersistCookieJar cookieJar;
  late ImportExportDataRepository sut;

  setUp(() {
    filePickerDataSource = FilePickerDataSourceMock();
    cache = AppCache(
      investmentStocksSymbols: ['123'],
      finarySessionId: 'sess_123',
      applicationDirectory: '/test/fake/dir',
    );
    cookieJar = PersistCookieJarMock();
    sut = ImportExportDataRepository(filePickerDataSource, cache, cookieJar);
  });

  void arrangeCookieJarInit() {
    when(() => cookieJar.forceInit()).thenAnswer((_) async {});
    when(() => cookieJar.domainCookies).thenAnswer((_) => {});
    when(() => cookieJar.hostCookies).thenAnswer((_) => {});
  }

  void arrangeExport() {
    arrangeCookieJarInit();
    when(
      () => filePickerDataSource.openDialogSaveFile(content: any(named: 'content'), filename: any(named: 'filename')),
    ).thenAnswer((_) async {});
  }

  void arrangeImportNull() {
    arrangeCookieJarInit();
    when(
      () => filePickerDataSource.openDialogReadFile(
        fileExtensionsFilter: ['json'],
        mimeTypesFilter: ['application/json'],
      ),
    ).thenAnswer((_) async => Future.value());
  }

  test('export works properly', () async {
    arrangeExport();

    await sut.export();

    verify(() => cookieJar.forceInit()).called(1);
    verify(
      () => filePickerDataSource.openDialogSaveFile(
        // parameter order is important here, check that first in case of error
        content: jsonEncode({
          'finarySessionId': 'sess_123',
          'investmentStocksSymbols': ['123'],
          'domainCookies': <String, dynamic>{},
          'hostCookies': <String, dynamic>{},
        }),
        filename: any(
          named: 'filename',
          that: allOf([
            startsWith('export_${DateTime.now().toIso8601String().substring(0, 17)}'),
            endsWith('.json'),
          ]),
        ),
      ),
    ).called(1);
  });
  test('import works properly when a file was not found', () async {
    arrangeImportNull();

    final ret = await sut.import();

    verifyNever(() => cookieJar.forceInit());
    expect(ret, null);
  });
  test('AppCache.toJson extract all the parameters', () async {
    // maybe move somewhere else later
    final map = cache.toJson();

    expect(map, hasLength(2));
  });
}
