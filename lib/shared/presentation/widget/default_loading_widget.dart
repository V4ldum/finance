import 'package:finance/shared/constant/app_padding.dart';
import 'package:flutter/material.dart';

class DefaultLoadingWidget extends StatelessWidget {
  const DefaultLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppPadding.xxl,
        vertical: AppPadding.l,
      ),
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
