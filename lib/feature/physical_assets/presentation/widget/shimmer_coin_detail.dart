import 'package:finance/shared/constant/app_component_size.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meta_package/meta_package.dart';

class ShimmerCoinDetail extends StatelessWidget {
  const ShimmerCoinDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final shimmerImagesSize = MediaQuery.of(context).size.width * .43;

    return Shimmer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title & Date
          const ShimmerBlock.text(height: AppPadding.xxl),
          const SizedBox(height: AppPadding.l),

          /// Features
          const ShimmerBlock.text(height: AppPadding.xl, width: AppComponentSize.m),
          const SizedBox(height: AppPadding.m),
          const ShimmerBlock.text(),
          const ShimmerBlock.text(),
          const ShimmerBlock.text(),
          const ShimmerBlock.text(),
          const ShimmerBlock.text(),
          const SizedBox(height: AppPadding.l),

          /// Images
          const ShimmerBlock.text(height: AppPadding.xl, width: AppComponentSize.m),
          const SizedBox(height: AppPadding.m),

          Row(
            children: [
              Expanded(
                child: ShimmerBlock(
                  height: shimmerImagesSize,
                ),
              ),
              const SizedBox(width: AppPadding.m),
              Expanded(
                child: ShimmerBlock(
                  height: shimmerImagesSize,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
