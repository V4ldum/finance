import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/data/dto/investment_summary_dto.dart';
import 'package:finance/feature/assets/data/dto/stocks_detail_dto.dart';
import 'package:finance/feature/assets/data/dto/summary_values_dto.dart';
import 'package:finance/feature/assets/data/dto/user_info_dto.dart';
import 'package:finance/feature/assets/domain/model/assets_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  S.delegate.load(const Locale.fromSubtags());

  late AssetsModel sut;

  group('AssetsModel.fromDto', () {
    setUp(() {
      sut = AssetsModel.fromDto(
        const InvestmentSummaryDto(
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
        const UserInfoDto(
          result: UserInfoResultDto(lastSync: '2023-12-05 20:15:22Z'),
        ),
        const StocksDetailDto(
          result: StockDetailResultDto(
            total: SummaryValuesDto(amount: 200, evolution: 300, evolutionPercent: 400),
            accounts: [],
          ),
        ),
        AppCache(),
      );
    });

    test('AssetsModel is properly built', () {
      expect(sut.total, 10000);
      expect(sut.evolution, 200);
      expect(sut.evolutionPercent, 20);

      expect(sut.lastSync.second, 22);
      expect(sut.lastSync.minute, 15);
      expect(sut.lastSync.hour, 20);
      expect(sut.lastSync.day, 05);
      expect(sut.lastSync.month, 12);
      expect(sut.lastSync.year, 2023);
    });

    test('Accounts are properly created', () {
      expect(sut.assets, hasLength(10));
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.checkingAccounts),
        isNot(-1),
        reason: 'checkingAccounts should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.savingsAccounts),
        isNot(-1),
        reason: 'savingsAccounts should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.cryptos),
        isNot(-1),
        reason: 'cryptos should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.fondsEuro),
        isNot(-1),
        reason: 'fondsEuro should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.realEstates),
        isNot(-1),
        reason: 'realEstates should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.startups),
        isNot(-1),
        reason: 'startups should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.crowdlendings),
        isNot(-1),
        reason: 'crowdlendings should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.otherAssets),
        isNot(-1),
        reason: 'other should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.loans),
        isNot(-1),
        reason: 'loans should be found',
      );
      expect(
        sut.assets.indexWhere((e) => e.name == S.current.creditAccounts),
        isNot(-1),
        reason: 'creditAccounts should be found',
      );
    });

    test('Accouts with an amount at 0 are not added to the list', () {
      sut = AssetsModel.fromDto(
        const InvestmentSummaryDto(
          result: InvestmentSummaryResultDto(
            total: SummaryValuesDto(amount: 10000, evolution: 200, evolutionPercent: 20),
            distribution: InvestmentSummaryDistributionDto(
              checkingAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              commodities: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              creditAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              crowdlendings: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              cryptos: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              fondsEuro: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              loans: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              other: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              realEstates: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              savingsAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              startups: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              stocksAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
            ),
          ),
        ),
        const UserInfoDto(
          result: UserInfoResultDto(lastSync: '2023-12-05 20:15:22Z'),
        ),
        const StocksDetailDto(
          result: StockDetailResultDto(
            total: SummaryValuesDto(amount: 200, evolution: 300, evolutionPercent: 400),
            accounts: [],
          ),
        ),
        AppCache(),
      );
      expect(sut.assets, hasLength(0));
    });
    test('Stocks are properly added to the assets', () {
      sut = AssetsModel.fromDto(
        const InvestmentSummaryDto(
          result: InvestmentSummaryResultDto(
            total: SummaryValuesDto(amount: 10000, evolution: 200, evolutionPercent: 20),
            distribution: InvestmentSummaryDistributionDto(
              checkingAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              commodities: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              creditAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              crowdlendings: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              cryptos: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              fondsEuro: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              loans: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              other: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              realEstates: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              savingsAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              startups: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
              stocksAccounts: SummaryValuesDto(amount: 0, evolution: 0, evolutionPercent: 0),
            ),
          ),
        ),
        const UserInfoDto(
          result: UserInfoResultDto(lastSync: '2023-12-05 20:15:22Z'),
        ),
        const StocksDetailDto(
          result: StockDetailResultDto(
            total: SummaryValuesDto(amount: 200, evolution: 300, evolutionPercent: 400),
            accounts: [
              StockDetailAccountDto(
                name: 'TestStock1',
                balance: 10,
                securities: [
                  StockDetailSecurityDto(
                    total: 10,
                    periodEvolution: 5,
                    periodEvolutionPercent: 2,
                    buyingPrice: 8,
                    quantity: 1,
                    security: StockDetailSecurityInformationDto(
                      symbol: 'ABC',
                      name: 'TestStockSecurity1',
                      logoUrl: 'logo',
                      unitPrice: 6,
                      type: StockDetailSecurityTypeDto.unknown,
                    ),
                  ),
                ],
              ),
              StockDetailAccountDto(
                name: 'TestStock2',
                balance: 20,
                securities: [
                  StockDetailSecurityDto(
                    total: 5,
                    periodEvolution: 5,
                    periodEvolutionPercent: 2,
                    buyingPrice: 8,
                    quantity: 4,
                    security: StockDetailSecurityInformationDto(
                      symbol: 'XYZ',
                      name: 'TestStockSecurity2',
                      logoUrl: 'logo',
                      unitPrice: 6,
                      type: StockDetailSecurityTypeDto.unknown,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        AppCache(),
      );
      expect(sut.assets, hasLength(2));
    });
  });
}
