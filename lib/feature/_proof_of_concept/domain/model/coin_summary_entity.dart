import 'package:finance/feature/_proof_of_concept/infrastructure/dto/coins_query_model.dart';

class CoinSummaryEntity {
  CoinSummaryEntity({
    required this.id,
    required this.name,
    required this.minYear,
    required this.maxYear,
    required this.obverseThumbnailUrl,
    required this.reverseThumbnailUrl,
  });

  factory CoinSummaryEntity.fromDto(CoinQueryItemModel dto) {
    return CoinSummaryEntity(
      id: dto.id,
      name: dto.title,
      minYear: dto.minYear?.toString() ?? '',
      maxYear: dto.maxYear?.toString() ?? '',
      obverseThumbnailUrl: dto.obverseThumbnailUrl ?? '',
      reverseThumbnailUrl: dto.reverseThumbnailUrl ?? '',
    );
  }

  final int id;
  final String name;
  final String minYear;
  final String maxYear;
  final String obverseThumbnailUrl;
  final String reverseThumbnailUrl;
}
