import 'package:finance/feature/proof_of_concept/infrastructure/dto/coins_query_model.dart';
import 'package:meta_package/meta_package.dart';

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
      minYear: Option.instance(dto.minYear),
      maxYear: Option.instance(dto.maxYear),
      obverseThumbnailUrl: Option.instance(dto.obverseThumbnailUrl),
      reverseThumbnailUrl: Option.instance(dto.reverseThumbnailUrl),
    );
  }

  final int id;
  final String name;
  final Option<int> minYear;
  final Option<int> maxYear;
  final Option<String> obverseThumbnailUrl;
  final Option<String> reverseThumbnailUrl;
}
