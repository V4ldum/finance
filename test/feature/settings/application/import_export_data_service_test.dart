import 'package:finance/feature/settings/application/import_export_data_service.dart';
import 'package:finance/feature/settings/domain/repository/import_export_data_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class ImportExportDataRepositoryMock extends Mock implements ImportExportDataRepository {}

class LocalStorageRepositoryMock extends Mock implements LocalStorageRepository {}

class AppCacheControllerMock extends Mock implements AppCacheController {}

void main() {
  late ImportExportDataRepository importExportDataRepository;
  late LocalStorageRepository localStorageRepository;
  late AppCacheController cacheController;
  late ImportExportDataService sut;

  setUpAll(() {
    registerFallbackValue(AppCache());
  });

  setUp(() {
    importExportDataRepository = ImportExportDataRepositoryMock();
    localStorageRepository = LocalStorageRepositoryMock();
    cacheController = AppCacheControllerMock();
    sut = ImportExportDataService(importExportDataRepository, localStorageRepository, cacheController);
  });

  void arrangeExport() {
    when(() => importExportDataRepository.export()).thenAnswer((_) async {});
  }

  void arrangeImport() {
    when(() => importExportDataRepository.import()).thenAnswer((_) async => AppCache());
    when(() => localStorageRepository.saveInvestmentStocksSymbols(any())).thenAnswer((_) async {});
    when(() => localStorageRepository.saveSessionId(any())).thenAnswer((_) async {});
    when(() => cacheController.importData(any())).thenAnswer((_) async {});
  }

  void arrangeImportNull() {
    when(() => importExportDataRepository.import()).thenAnswer((_) async => Future.value());
  }

  test('export works', () async {
    arrangeExport();

    await sut.export();

    verify(() => importExportDataRepository.export()).called(1);
  });
  test('import works', () async {
    arrangeImport();

    await sut.import();

    verify(() => importExportDataRepository.import()).called(1);
    verify(() => localStorageRepository.saveInvestmentStocksSymbols(any())).called(1);
    verify(() => localStorageRepository.saveSessionId(any())).called(1);
    verify(() => cacheController.importData(any())).called(1);
  });
  test('import works when the file is not found', () async {
    arrangeImportNull();

    await sut.import();

    verify(() => importExportDataRepository.import()).called(1);
    verifyNever(() => localStorageRepository.saveInvestmentStocksSymbols(any()));
    verifyNever(() => localStorageRepository.saveSessionId(any()));
    verifyNever(() => cacheController.importData(any()));
  });
}
