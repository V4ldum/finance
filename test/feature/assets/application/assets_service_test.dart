import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/assets_model.dart';
import 'package:finance/feature/assets/domain/repository/assets_repository.dart';
import 'package:finance/feature/authentication/domain/repository/authentication_repository.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class AssetsRepositoryMock extends Mock implements AssetsRepository {}

class FinaryAuthenticationRepositoryMock extends Mock implements FinaryAuthenticationRepository {}

class LocalStorageRepositoryMock extends Mock implements LocalStorageRepository {}

class AppCacheControllerMock extends Mock implements AppCacheController {}

class AssetsModelMock extends Mock implements AssetsModel {}

void main() {
  late AssetsRepository assetsRepository;
  late FinaryAuthenticationRepository finaryAuthenticationRepository;
  late LocalStorageRepository localStorageRepository;
  late AppCache cache;
  late AppCacheController cacheController;
  late AssetsService sut;

  setUp(() {
    assetsRepository = AssetsRepositoryMock();
    finaryAuthenticationRepository = FinaryAuthenticationRepositoryMock();
    localStorageRepository = LocalStorageRepositoryMock();
    cache = AppCache(assets: AssetsModelMock(), investmentStocksSymbols: ['123']);
    cacheController = AppCacheControllerMock();

    sut = AssetsService(
      assetsRepository,
      finaryAuthenticationRepository,
      localStorageRepository,
      cache,
      cacheController,
    );
  });

  group('assets', () {
    void arrangeAssetsServiceGetAssetsCalled() {
      when(() => finaryAuthenticationRepository.refreshToken('')).thenAnswer((_) async => '123');
      when(() => assetsRepository.getAssets('123')).thenAnswer((_) async => AssetsModelMock());
    }

    test('getAssets with no assets in cache', () async {
      arrangeAssetsServiceGetAssetsCalled();
      cache.assets = null;
      expect(cache.assets, null);

      await sut.getAssets();

      expect(cache.assets, isNot(null));
      verify(() => finaryAuthenticationRepository.refreshToken(any())).called(1);
      verify(() => assetsRepository.getAssets(any())).called(1);
    });
    test('getAssets with assets in cache', () async {
      expect(cache.assets, isNot(null));

      await sut.getAssets();

      expect(cache.assets, isNot(null));
      verifyNever(() => finaryAuthenticationRepository.refreshToken(any()));
      verifyNever(() => assetsRepository.getAssets(any()));
    });
    test('refreshAssets with no assets in cache', () async {
      arrangeAssetsServiceGetAssetsCalled();
      cache.assets = null;
      expect(cache.assets, null);

      await sut.refreshAssets();

      expect(cache.assets, isNot(null));
      verify(() => finaryAuthenticationRepository.refreshToken(any())).called(1);
      verify(() => assetsRepository.getAssets(any())).called(1);
    });
    test('refreshAssets with assets in cache', () async {
      arrangeAssetsServiceGetAssetsCalled();
      expect(cache.assets, isNot(null));

      await sut.refreshAssets();

      expect(cache.assets, isNot(null));
      verify(() => finaryAuthenticationRepository.refreshToken(any())).called(1);
      verify(() => assetsRepository.getAssets(any())).called(1);
    });
  });

  group('investmentStocksSymbols', () {
    void arrangeAssetsServiceGetStocksSymbols() {
      when(() => localStorageRepository.readInvestmentStocksSymbols()).thenAnswer((_) async => ['123', 'ABC']);
    }

    void arrangeCacheControllerRefreshStocksSymbols() {
      arrangeAssetsServiceGetStocksSymbols();
      when(() => cacheController.refreshStocksSymbol(any())).thenAnswer((_) {});
    }

    void arrangeLocalStorageRepositorySaveInvestmentStocksSymbols() {
      when(() => localStorageRepository.saveInvestmentStocksSymbols(any())).thenAnswer((_) async {});
    }

    test('getStocksSymbols works properly', () async {
      arrangeAssetsServiceGetStocksSymbols();

      final ret = await sut.getStocksSymbols();

      verify(() => localStorageRepository.readInvestmentStocksSymbols()).called(1);
      expect(ret, hasLength(2));
      expect(ret.first, '123');
      expect(ret.last, 'ABC');
    });
    test('addInvestmentStockSymbol without the stockSymbol in cache', () async {
      arrangeCacheControllerRefreshStocksSymbols();
      arrangeLocalStorageRepositorySaveInvestmentStocksSymbols();

      await sut.addInvestmentStockSymbol('ABC');

      verify(() => localStorageRepository.saveInvestmentStocksSymbols(any())).called(1);
      verify(() => cacheController.refreshStocksSymbol(any())).called(1);
    });
    test('addInvestmentStockSymbol with the stockSymbol in cache', () async {
      arrangeCacheControllerRefreshStocksSymbols();

      await sut.addInvestmentStockSymbol('123');

      verifyNever(() => localStorageRepository.saveInvestmentStocksSymbols(any()));
      verifyNever(() => cacheController.refreshStocksSymbol(any()));
    });
    test('removeInvestmentStockSymbol without the stockSymbol in cache', () async {
      arrangeCacheControllerRefreshStocksSymbols();

      await sut.removeInvestmentStockSymbol('ABC');

      verifyNever(() => localStorageRepository.saveInvestmentStocksSymbols(any()));
      verifyNever(() => cacheController.refreshStocksSymbol(any()));
    });
    test('removeInvestmentStockSymbol with the stockSymbol in cache', () async {
      arrangeCacheControllerRefreshStocksSymbols();
      arrangeLocalStorageRepositorySaveInvestmentStocksSymbols();

      await sut.removeInvestmentStockSymbol('123');

      verify(() => localStorageRepository.saveInvestmentStocksSymbols(any())).called(1);
      verify(() => cacheController.refreshStocksSymbol(any())).called(1);
    });
    test('addInvestmentStockSymbols works properly', () async {
      arrangeCacheControllerRefreshStocksSymbols();
      arrangeLocalStorageRepositorySaveInvestmentStocksSymbols();

      await sut.addInvestmentStockSymbols(['123', 'ABC']);

      verify(() => localStorageRepository.saveInvestmentStocksSymbols(any())).called(1);
      verify(() => cacheController.refreshStocksSymbol(any())).called(1);
    });
  });
}
