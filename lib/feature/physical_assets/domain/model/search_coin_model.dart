import 'package:finance/feature/physical_assets/data/dto/coins_query_dto.dart';

class SearchCoinModel {
  SearchCoinModel({
    required this.id,
    required this.name,
    required this.minYear,
    required this.maxYear,
    required this.obverseThumbnailUrl,
    required this.reverseThumbnailUrl,
  });

  factory SearchCoinModel.fromCoinQueryDto(CoinQueryItemDto dto) {
    return SearchCoinModel(
      id: dto.id.toString(),
      name: dto.name,
      minYear: dto.minYear?.toString() ?? '',
      maxYear: dto.maxYear?.toString() ?? '',
      obverseThumbnailUrl: dto.obverseThumbnailUrl,
      reverseThumbnailUrl: dto.reverseThumbnailUrl,
    );
  }

  final String id;
  final String name;
  final String minYear;
  final String maxYear;
  final String obverseThumbnailUrl;
  final String reverseThumbnailUrl;
}
