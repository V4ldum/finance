import 'package:finance/feature/dashboard/domain/model/asset_category_model.dart';
import 'package:flutter/material.dart';

class AssetCategoryIcon extends StatelessWidget {
  const AssetCategoryIcon({
    required this.category,
    super.key,
  });

  final AssetCategoryModel category;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 8,
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      child: Icon(
        switch (category) {
          AssetCategoryModel.speculative => Icons.bar_chart_rounded,
          AssetCategoryModel.investment => Icons.attach_money,
          AssetCategoryModel.savings => Icons.savings,
          AssetCategoryModel.other => Icons.question_mark,
        },
        size: 12,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
    );
  }
}
