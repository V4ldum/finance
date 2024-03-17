import 'package:dio/dio.dart';
import 'package:finance/feature/assets/data/data_source/finary_data_source.dart';
import 'package:finance/feature/assets/data/dto/period_dto.dart';
import 'package:finance/feature/assets/data/dto/type_dto.dart';
import 'package:finance/feature/assets/domain/exception/finary_exception.dart';
import 'package:finance/feature/assets/domain/model/finary_assets_model.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/assets_repository.g.dart';

@riverpod
AssetsRepository assetsRepository(AssetsRepositoryRef ref) {
  return AssetsRepository(ref);
}

class AssetsRepository {
  AssetsRepository(this._ref);

  final AssetsRepositoryRef _ref;

  FinaryDataSource get _dataSource => _ref.read(finaryDataSourceProvider);
  AppCache get _cache => _ref.read(appCacheControllerProvider);

  Future<FinaryAssetsModel> getFinaryAssets(String accessToken) async {
    if (accessToken.isEmpty) {
      throw FinaryException.unauthorized();
    }

    try {
      final summary =
          await _dataSource.getInvestmentSummary(type: TypeDto.gross, period: PeriodDto.ytd, accessToken: accessToken);
      final userInfo = await _dataSource.getUserInfo(accessToken: accessToken);
      final stocks = await _dataSource.getStocksDetail(period: PeriodDto.ytd, accessToken: accessToken);

      final assets = FinaryAssetsModel.fromDto(summary, userInfo, stocks, _cache);

      return assets;
    } on DioException catch (e) {
      throw FinaryException.fromStatusCode(e.response?.statusCode);
    }
  }
}
