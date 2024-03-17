import 'package:dio/dio.dart';
import 'package:finance/feature/physical_assets/data/dto/precious_metal_trade_value_dto.dart';
import 'package:finance/feature/physical_assets/data/dto/sp500_trade_value_dto.dart';
import 'package:finance/shared/constant/app_string.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/precious_metals_trade_data_source.g.dart';

@riverpod
PreciousMetalsTradeDataSource preciousMetalsTradeDataSource(PreciousMetalsTradeDataSourceRef ref) {
  return PreciousMetalsTradeDataSource();
}

class PreciousMetalsTradeDataSource {
  PreciousMetalsTradeDataSource();

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: AppString.preciousMetalTradeValueApi,
    ),
  );

  Future<PreciousMetalTradeValueDto> getMetalValue(String metalSymbol) async {
    final response = await _dio.post<JsonResponse>(
      '',
      data: {
        'query':
            r'fragment MetalFragment on Metal { name results { ...MetalQuoteFragment } } fragment MetalQuoteFragment on Quote { bid change changePercentage } query MetalQuote( $symbol: String! $currency: String! $timestamp: Int ) { GetMetalQuote( symbol: $symbol currency: $currency timestamp: $timestamp ) { ...MetalFragment } }',
        'variables': {
          'symbol': metalSymbol,
          'currency': 'EUR',
          'timestamp': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        },
      },
    );
    return PreciousMetalTradeValueDto.fromHttpResponse(response.data!);
  }

  Future<SP500TradeValueDto> getSP500Value() async {
    final response = await _dio.post<JsonResponse>(
      '',
      data: {
        'query':
            r'query BarchartsQuotes($timestamp: Int!, $symbols: String!) { GetBarchartQuotes(symbols: $symbols, timestamp: $timestamp) { results { lastPrice name } } }',
        'variables': {
          'symbols': r'$SPX',
          'timestamp': DateTime.now().millisecondsSinceEpoch ~/ 1000,
        },
      },
    );
    return SP500TradeValueDto.fromHttpResponse(response.data!);
  }
}
