import 'package:finance/features/assets/domain/models/asset_category_model.dart';
import 'package:finance/shared/constants/app_icon_size.dart';
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class AssetCategoryIcon extends StatelessWidget {
  const AssetCategoryIcon({required this.category, super.key});

  final AssetCategoryModel category;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 8,
      backgroundColor: Theme.of(context).colorScheme.secondaryContainer,
      child: Icon(
        switch (category) {
          AssetCategoryModel.speculative => LucideIcons.chartSpline,
          AssetCategoryModel.investment => LucideIcons.circleDollarSign,
          AssetCategoryModel.savings => LucideIcons.piggyBank,
          AssetCategoryModel.other => LucideIcons.circleQuestionMark,
        },
        size: AppIconSize.xs,
        color: Theme.of(context).colorScheme.onSecondaryContainer,
      ),
    );
  }
}
