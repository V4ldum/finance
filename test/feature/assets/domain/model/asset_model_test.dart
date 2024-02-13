import 'package:finance/feature/assets/data/dto/stocks_detail_dto.dart';
import 'package:finance/feature/assets/data/dto/summary_values_dto.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_type_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late AssetModel sut;

  group('AssetModel.fromSummaryDto', () {
    late SummaryValuesDto summaryValues;

    setUp(() {
      summaryValues = const SummaryValuesDto(
        amount: 1000,
        evolution: 5.2,
        evolutionPercent: 22.3,
      );
    });

    test('AssetModel is properly built', () {
      sut = AssetModel.fromSummaryDto(
        'TestAssetModel',
        summaryValues,
        AssetCategoryModel.investment,
      );

      expect(sut.name, 'TestAssetModel');
      expect(sut.amount, 1);
      expect(sut.value, summaryValues.amount);
      expect(sut.type, AssetTypeModel.account);
      expect(sut.symbol, '');
      expect(sut.total, 1 * summaryValues.amount);
    });
    group('AssetCategoryModel', () {
      test('AssetModel is properly built for speculative category', () {
        sut = AssetModel.fromSummaryDto(
          'SpeculativeTestAssetModel',
          summaryValues,
          AssetCategoryModel.investment,
        );

        expect(sut.name, 'SpeculativeTestAssetModel');
        expect(sut.category, AssetCategoryModel.investment);
      });
      test('AssetModel is properly built for investment category', () {
        sut = AssetModel.fromSummaryDto(
          'InvestmentTestAssetModel',
          summaryValues,
          AssetCategoryModel.investment,
        );

        expect(sut.name, 'InvestmentTestAssetModel');
        expect(sut.category, AssetCategoryModel.investment);
      });
      test('AssetModel is properly built for savings category', () {
        sut = AssetModel.fromSummaryDto(
          'SavingsTestAssetModel',
          summaryValues,
          AssetCategoryModel.savings,
        );

        expect(sut.name, 'SavingsTestAssetModel');
        expect(sut.category, AssetCategoryModel.savings);
      });
      test('AssetModel is properly built for other category', () {
        sut = AssetModel.fromSummaryDto(
          'OtherTestAssetModel',
          summaryValues,
          AssetCategoryModel.other,
        );

        expect(sut.name, 'OtherTestAssetModel');
        expect(sut.category, AssetCategoryModel.other);
      });
    });
  });

  group('AssetModel.fromStocksSecurityDto', () {
    test('AssetModel is properly built', () {
      const stockDetailSecurity = StockDetailSecurityDto(
        total: 10,
        periodEvolution: 5.2,
        periodEvolutionPercent: 20.2,
        buyingPrice: 8,
        quantity: 15,
        security: StockDetailSecurityInformationDto(
          symbol: 'ABC',
          name: 'TestStockName',
          logoUrl: 'url',
          unitPrice: 12,
          type: StockDetailSecurityTypeDto.unknown,
        ),
      );
      sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

      expect(sut.name, 'TestStockName');
      expect(sut.amount, 15);
      expect(sut.value, 12);
      expect(sut.symbol, 'ABC');
      expect(sut.total, stockDetailSecurity.security.unitPrice * stockDetailSecurity.quantity);
    });
    group('AssetTypeModel', () {
      test('AssetModel type is correct with etf security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestETFSecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.etf,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.type, AssetTypeModel.fund);
      });
      test('AssetModel type is correct with fund security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestFundSecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.fund,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.type, AssetTypeModel.fund);
      });
      test('AssetModel type is correct with equity security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestEquitySecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.equity,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.type, AssetTypeModel.stock);
      });
      test('AssetModel type is correct with unknown security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestUnknownSecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.unknown, // Liquidity account
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.type, AssetTypeModel.account);
      });
    });
    group('AssetCategoryModel', () {
      test('AssetModel category is correct with etf security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestEtfSecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.etf,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.category, AssetCategoryModel.investment);
      });
      test('AssetModel category is correct with fund security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestFundSecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.fund,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.category, AssetCategoryModel.investment);
      });
      test('AssetModel category is correct with equity security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestEquitySecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.equity,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.category, AssetCategoryModel.speculative);
      });
      test('AssetModel category is correct with unknown security', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestUnknownSecurity',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.unknown,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache());

        expect(sut.category, AssetCategoryModel.other);
      });
      test('AssetModel category is correct with equity security and investmentSymbols set with correct symbol', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestEquitySecurityInvest',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.equity,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache(investmentStocksSymbols: ['ABC']));

        expect(sut.category, AssetCategoryModel.investment);
      });
      test('AssetModel category is correct with equity security and investmentSymbols set with incorrect symbol', () {
        const stockDetailSecurity = StockDetailSecurityDto(
          total: 10,
          periodEvolution: 5.2,
          periodEvolutionPercent: 20.2,
          buyingPrice: 8,
          quantity: 15,
          security: StockDetailSecurityInformationDto(
            symbol: 'ABC',
            name: 'TestEquitySecurityInvest',
            logoUrl: 'url',
            unitPrice: 12,
            type: StockDetailSecurityTypeDto.equity,
          ),
        );
        sut = AssetModel.fromStocksSecurityDto(stockDetailSecurity, AppCache(investmentStocksSymbols: ['XYZ']));

        expect(sut.category, AssetCategoryModel.speculative);
      });
    });
  });

  group('AssetModel.fromSummaryDto', () {
    setUp(() {
      sut = PreciousMetalAssetModel(
        name: 'TestPreciousMetal',
        amount: 10,
        value: 1000,
        purity: 90,
        metalType: PreciousMetalTypeModel.silver,
      );
    });

    test('AssetModel is properly built', () {
      expect(sut.name, 'TestPreciousMetal');
      expect(sut.amount, 10);
      expect(sut.value, 1000);
      expect(sut.type, AssetTypeModel.preciousMetal);
      expect(sut.category, AssetCategoryModel.savings);
      expect(sut.symbol, '');
      expect(sut.total, 10 * 1000);
      expect((sut as PreciousMetalAssetModel).purity, 90);
      expect((sut as PreciousMetalAssetModel).metalType, PreciousMetalTypeModel.silver);
    });
  });
}
