import 'package:dio/dio.dart';
import 'package:finance/feature/dashboard/data/data_source/finary_data_source.dart';
import 'package:finance/feature/dashboard/data/dto/period_dto.dart';
import 'package:finance/feature/dashboard/data/dto/type_dto.dart';
import 'package:finance/feature/dashboard/domain/exception/finary_exception.dart';
import 'package:finance/feature/dashboard/domain/model/assets_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/assets_repository.g.dart';

@riverpod
AssetsRepository assetsRepository(AssetsRepositoryRef ref) {
  final dataSource = ref.read(finaryDataSourceProvider);
  final cache = ref.read(appCacheControllerProvider);

  return AssetsRepository(dataSource, cache);
}

class AssetsRepository {
  AssetsRepository(this._dataSource, this._cache);

  final FinaryDataSource _dataSource;
  final AppCache _cache;

  Future<AssetsModel> getAssets(String accessToken) async {
    if (accessToken.isEmpty) {
      throw FinaryException.unauthorized();
    }

    try {
      final summary =
          await _dataSource.getInvestmentSummary(type: TypeDto.gross, period: PeriodDto.ytd, accessToken: accessToken);
      final userInfo = await _dataSource.getUserInfo(accessToken: accessToken);
      final stocks = await _dataSource.getStocksDetail(period: PeriodDto.ytd, accessToken: accessToken);

      final assets = AssetsModel.fromDto(summary, userInfo, stocks, _cache);

      return assets;
    } on DioException catch (e) {
      throw FinaryException.fromStatusCode(e.response?.statusCode);
    }
  }
}
