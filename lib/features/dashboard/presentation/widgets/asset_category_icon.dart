import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/shared/constants/app_icon_size.dart';
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
          AssetCategoryModel.speculative => Icons.show_chart,
          AssetCategoryModel.investment => Icons.attach_money,
          AssetCategoryModel.savings => Icons.savings,
          AssetCategoryModel.other => Icons.question_mark,
        },
        size: AppIconSize.xs,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
    );
  }
}
