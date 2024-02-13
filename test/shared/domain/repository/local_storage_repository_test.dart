import 'package:finance/shared/data/data_source/local_storage_data_source.dart';
import 'package:finance/shared/domain/repository/local_storage_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

const _finarySessionIdKey = 'FINARY_SESSION_ID_KEY';
const _investmentStocksSymbolsKey = 'INVESTMENT_STOCKS_SYMBOL';

class LocalStorageDataSourceMock extends Mock implements LocalStorageDataSource {}

void main() {
  late LocalStorageRepository sut;
  late LocalStorageDataSource dataSource;

  setUp(() {
    dataSource = LocalStorageDataSourceMock();
    sut = LocalStorageRepository(dataSource);
  });

  group('sessionId', () {
    void arrangeLocalStorageDataSourceWriteFinarySession() {
      when(() => dataSource.write(_finarySessionIdKey, 'sess_123')).thenAnswer((_) async {});
    }

    void arrangeLocalStorageDataSourceReadFinarySession() {
      when(() => dataSource.read(_finarySessionIdKey)).thenAnswer((_) async => 'sess_123');
    }

    void arrangeLocalStorageDataSourceDeleteFinarySession() {
      when(() => dataSource.delete(_finarySessionIdKey)).thenAnswer((_) async {});
    }

    test('saveSessionId calls the dataSource with the correct parameters', () async {
      const sessionId = 'sess_123';

      arrangeLocalStorageDataSourceWriteFinarySession();
      await sut.saveSessionId(sessionId);

      verify(() => dataSource.write(_finarySessionIdKey, sessionId)).called(1);
    });
    test('readSessionId returns the correct sessionId', () async {
      arrangeLocalStorageDataSourceReadFinarySession();
      final sessionId = await sut.readSessionId();

      verify(() => dataSource.read(_finarySessionIdKey)).called(1);
      expect(sessionId, 'sess_123');
    });
    test('clearSessionId delete the correct key', () async {
      arrangeLocalStorageDataSourceDeleteFinarySession();
      await sut.clearSessionId();

      verify(() => dataSource.delete(_finarySessionIdKey)).called(1);
    });
  });

  group('investmentStocksSymbols', () {
    void arrangeLocalStorageDataSourceReadInvestmentStocksSymbols() {
      when(() => dataSource.read(_investmentStocksSymbolsKey)).thenAnswer((_) async => '["ABC","123","XYZ"]');
    }

    void arrangeLocalStorageDataSourceReadInvestmentStocksSymbolsEmpty() {
      when(() => dataSource.read(_investmentStocksSymbolsKey)).thenAnswer((_) async => null);
    }

    void arrangeLocalStorageDataSourceWriteInvestmentStocksSymbols() {
      when(() => dataSource.write(_investmentStocksSymbolsKey, '["ABC","123","XYZ"]')).thenAnswer((_) async {});
    }

    test('readInvestmentStocksSymbols returns the list correctly formatted', () async {
      arrangeLocalStorageDataSourceReadInvestmentStocksSymbols();
      final investmentStocksSymbols = await sut.readInvestmentStocksSymbols();

      verify(() => dataSource.read(_investmentStocksSymbolsKey)).called(1);
      expect(investmentStocksSymbols, ['ABC', '123', 'XYZ']);
    });
    test('readInvestmentStocksSymbols correctly returns an empty list if no data is found', () async {
      arrangeLocalStorageDataSourceReadInvestmentStocksSymbolsEmpty();
      final investmentStocksSymbols = await sut.readInvestmentStocksSymbols();

      verify(() => dataSource.read(_investmentStocksSymbolsKey)).called(1);
      expect(investmentStocksSymbols, <String>[]);
    });
    test('saveInvestmentStocksSymbols correctly format the list and save it', () async {
      const investmentStocksSymbols = ['ABC', '123', 'XYZ'];

      arrangeLocalStorageDataSourceWriteInvestmentStocksSymbols();
      await sut.saveInvestmentStocksSymbols(investmentStocksSymbols);

      verify(() => dataSource.write(_investmentStocksSymbolsKey, '["ABC","123","XYZ"]')).called(1);
    });
  });
}
