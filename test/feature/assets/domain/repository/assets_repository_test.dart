import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/data/data_source/finary_data_source.dart';
import 'package:finance/feature/assets/data/dto/investment_summary_dto.dart';
import 'package:finance/feature/assets/data/dto/period_dto.dart';
import 'package:finance/feature/assets/data/dto/stocks_detail_dto.dart';
import 'package:finance/feature/assets/data/dto/summary_values_dto.dart';
import 'package:finance/feature/assets/data/dto/type_dto.dart';
import 'package:finance/feature/assets/data/dto/user_info_dto.dart';
import 'package:finance/feature/assets/domain/exception/finary_exception.dart';
import 'package:finance/feature/assets/domain/repository/assets_repository.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class FinaryDataSourceMock extends Mock implements FinaryDataSource {}

void main() {
  S.delegate.load(const Locale.fromSubtags());

  late AppCache cache;
  late FinaryDataSource dataSource;
  late AssetsRepository sut;

  setUp(() {
    cache = AppCache();
    dataSource = FinaryDataSourceMock();
    sut = AssetsRepository(dataSource, cache);
  });

  group('getAssets', () {
    void arrangeFinaryDataSourceInvalidToken() {
      when(() => dataSource.getInvestmentSummary(type: TypeDto.gross, period: PeriodDto.ytd, accessToken: 'token'))
          .thenThrow(FinaryException.unauthorized());
    }

    void arrangeFinaryDataSourceTooManyRequests() {
      when(() => dataSource.getInvestmentSummary(type: TypeDto.gross, period: PeriodDto.ytd, accessToken: 'token'))
          .thenThrow(FinaryException.tooManyRequests());
    }

    void arrangeFinaryDataSourceValidCase() {
      when(() => dataSource.getInvestmentSummary(type: TypeDto.gross, period: PeriodDto.ytd, accessToken: 'token'))
          .thenAnswer(
        (_) async => const InvestmentSummaryDto(
          result: InvestmentSummaryResultDto(
            total: SummaryValuesDto(amount: 10000, evolution: 200, evolutionPercent: 20),
            distribution: InvestmentSummaryDistributionDto(
              checkingAccounts: SummaryValuesDto(amount: 1, evolution: 10, evolutionPercent: 100),
              commodities: SummaryValuesDto(amount: 2, evolution: 20, evolutionPercent: 200),
              creditAccounts: SummaryValuesDto(amount: 3, evolution: 30, evolutionPercent: 300),
              crowdlendings: SummaryValuesDto(amount: 4, evolution: 40, evolutionPercent: 400),
              cryptos: SummaryValuesDto(amount: 5, evolution: 50, evolutionPercent: 500),
              fondsEuro: SummaryValuesDto(amount: 6, evolution: 60, evolutionPercent: 600),
              loans: SummaryValuesDto(amount: 7, evolution: 70, evolutionPercent: 700),
              other: SummaryValuesDto(amount: 8, evolution: 80, evolutionPercent: 800),
              realEstates: SummaryValuesDto(amount: 9, evolution: 90, evolutionPercent: 900),
              savingsAccounts: SummaryValuesDto(amount: 10, evolution: 100, evolutionPercent: 1000),
              startups: SummaryValuesDto(amount: 11, evolution: 110, evolutionPercent: 1100),
              stocksAccounts: SummaryValuesDto(amount: 12, evolution: 120, evolutionPercent: 1200),
            ),
          ),
        ),
      );
      when(() => dataSource.getUserInfo(accessToken: 'token')).thenAnswer(
        (_) async => const UserInfoDto(
          result: UserInfoResultDto(lastSync: '2023-12-05 20:15:22Z'),
        ),
      );
      when(() => dataSource.getStocksDetail(period: PeriodDto.ytd, accessToken: 'token')).thenAnswer(
        (_) async => const StocksDetailDto(
          result: StockDetailResultDto(
            total: SummaryValuesDto(amount: 200, evolution: 300, evolutionPercent: 400),
            accounts: [],
          ),
        ),
      );
    }

    test('the call works properly', () async {
      arrangeFinaryDataSourceValidCase();
      final ret = await sut.getAssets('token');

      expect(ret, anything);
      verify(
        () => dataSource.getInvestmentSummary(
          type: TypeDto.gross,
          period: PeriodDto.ytd,
          accessToken: any(named: 'accessToken'),
        ),
      ).called(1);
      verify(() => dataSource.getUserInfo(accessToken: any(named: 'accessToken'))).called(1);
      verify(() => dataSource.getStocksDetail(period: PeriodDto.ytd, accessToken: any(named: 'accessToken'))).called(1);
    });
    test('accessToken is empty', () async {
      try {
        await sut.getAssets('');

        throw Exception('this should not be called');
      } on FinaryException catch (e) {
        expect(e.title, FinaryException.unauthorized().title);
        expect(e.message, FinaryException.unauthorized().message);

        verifyNever(
          () => dataSource.getInvestmentSummary(
            type: TypeDto.gross,
            period: PeriodDto.ytd,
            accessToken: any(named: 'accessToken'),
          ),
        );
        verifyNever(() => dataSource.getUserInfo(accessToken: any(named: 'accessToken')));
        verifyNever(() => dataSource.getStocksDetail(period: PeriodDto.ytd, accessToken: any(named: 'accessToken')));
      }
    });
    test('accessToken is invalid', () async {
      arrangeFinaryDataSourceInvalidToken();

      try {
        await sut.getAssets('token');

        throw Exception('this should not be called');
      } on FinaryException catch (e) {
        expect(e.title, FinaryException.unauthorized().title);
        expect(e.message, FinaryException.unauthorized().message);

        verify(
          () => dataSource.getInvestmentSummary(
            type: TypeDto.gross,
            period: PeriodDto.ytd,
            accessToken: any(named: 'accessToken'),
          ),
        ).called(1);
        verifyNever(() => dataSource.getUserInfo(accessToken: any(named: 'accessToken')));
        verifyNever(() => dataSource.getStocksDetail(period: PeriodDto.ytd, accessToken: any(named: 'accessToken')));
      }
    });
    test('Too many requests', () async {
      arrangeFinaryDataSourceTooManyRequests();

      try {
        await sut.getAssets('token');

        throw Exception('this should not be called');
      } on FinaryException catch (e) {
        expect(e.title, FinaryException.tooManyRequests().title);
        expect(e.message, FinaryException.tooManyRequests().message);

        verify(
          () => dataSource.getInvestmentSummary(
            type: TypeDto.gross,
            period: PeriodDto.ytd,
            accessToken: any(named: 'accessToken'),
          ),
        ).called(1);
        verifyNever(() => dataSource.getUserInfo(accessToken: any(named: 'accessToken')));
        verifyNever(() => dataSource.getStocksDetail(period: PeriodDto.ytd, accessToken: any(named: 'accessToken')));
      }
    });
  });
}
