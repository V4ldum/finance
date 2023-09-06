import 'package:finance/feature/proof_of_concept/infrastructure/dto/investments_distribution_query_model.dart';

class InvestmentsDistributionItemEntity {
  InvestmentsDistributionItemEntity({
    required this.label,
    required this.amount,
    required this.share,
  });

  factory InvestmentsDistributionItemEntity.fromDto(InvestmentsDistributionItemModel dto) {
    return InvestmentsDistributionItemEntity(
      label: dto.label,
      amount: dto.amount,
      share: dto.share,
    );
  }

  final String label;
  final double amount;
  final double share;
}
