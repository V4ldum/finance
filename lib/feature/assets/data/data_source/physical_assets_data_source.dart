import 'package:dio/dio.dart';
import 'package:finance/feature/assets/data/dto/physical_assets_dto.dart';
import 'package:finance/shared/constant/app_string.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:meta_package/meta_package.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/physical_assets_data_source.g.dart';

@riverpod
PhysicalAssetsDataSource physicalAssetsDataSource(PhysicalAssetsDataSourceRef ref) {
  final cache = ref.read(appCacheControllerProvider);

  return PhysicalAssetsDataSource(
    Dio(
      BaseOptions(
        baseUrl: AppString.physicalAssetsApi,
        headers: {
          AppString.customBackHeader: cache.customBackApiKey,
        },
      ),
    ),
  );
}

class PhysicalAssetsDataSource {
  PhysicalAssetsDataSource(this._dio);

  final Dio _dio;

  Future<PhysicalAssetsDto> getAssets() async {
    final response = await _dio.get<JsonMapResponse>('/assets');
    return PhysicalAssetsDto.fromHttpResponse(response.data!);
  }

  Future<void> createCoinAsset({required int id, required int possessed}) async {
    await _dio.post<void>(
      '/assets/coin',
      data: {
        'coin_id': id,
        'possessed': possessed,
      },
    );
  }

  Future<void> updateCoinAsset({required String id, required int possessed}) async {
    await _dio.patch<void>(
      '/assets/coin/$id',
      data: {
        'possessed': possessed,
      },
    );
  }

  Future<void> removeCoinAsset({required String id}) async {
    await _dio.delete<void>('/assets/coin/$id');
  }

  Future<void> createCashAsset({
    required String name,
    required int possessed,
    required int unitValue,
  }) async {
    await _dio.post<void>(
      '/assets/cash',
      data: {
        'name': name,
        'possessed': possessed,
        'unit_value': unitValue,
      },
    );
  }

  Future<void> updateCashAsset({
    required String id,
    required String name,
    required int possessed,
    required int unitValue,
  }) async {
    await _dio.patch<void>(
      '/assets/cash/$id',
      data: {
        'name': name,
        'possessed': possessed,
        'unit_weight': unitValue,
      },
    );
  }

  Future<void> removeCashAsset({required String id}) async {
    await _dio.delete<void>('/assets/cash/$id');
  }

  Future<void> createRawAsset({
    required String name,
    required int possessed,
    required int unitWeight,
    required String composition,
    required int purity,
  }) async {
    await _dio.post<void>(
      '/assets/raw',
      data: {
        'name': name,
        'possessed': possessed,
        'unit_weight': unitWeight,
        'composition': composition,
        'purity': purity,
      },
    );
  }

  Future<void> updateRawAsset({
    required int id,
    required String name,
    required int possessed,
    required int unitWeight,
    required String composition,
    required int purity,
  }) async {
    await _dio.patch<void>(
      '/assets/raw/$id',
      data: {
        'name': name,
        'possessed': possessed,
        'unit_weight': unitWeight,
        'composition': composition,
        'purity': purity,
      },
    );
  }

  Future<void> removeRawAsset({required String id}) async {
    await _dio.delete<void>('/assets/raw/$id');
  }
}
