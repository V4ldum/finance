import 'package:finance/shared/constants/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:meta_package/meta_package.dart';

class ShimmerDashboard extends StatelessWidget {
  const ShimmerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final chartSize = MediaQuery.of(context).size.width * .6;

    return Shimmer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.s, horizontal: AppPadding.m),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: AppPadding.l,
          children: [
            /// Chart
            Center(
              child: ShimmerBlock(
                height: chartSize,
                width: chartSize,
                borderRadius: BorderRadius.circular(chartSize / 2),
              ),
            ),

            /// Lines
            const ShimmerBlock.text(height: AppPadding.xl),
            const SizedBox(height: AppPadding.xs),
            const ShimmerBlock.text(height: AppPadding.xl),
            const SizedBox(height: AppPadding.xs),
            const ShimmerBlock.text(height: AppPadding.xl),
          ],
        ),
      ),
    );
  }
}
