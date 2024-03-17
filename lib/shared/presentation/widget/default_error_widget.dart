import 'package:finance/shared/constant/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:meta_package/meta_package.dart';

class DefaultErrorWidget extends StatelessWidget {
  const DefaultErrorWidget({
    required this.error,
    required this.trace,
    super.key,
  });

  final DisplayableException error;
  final StackTrace trace;

  @override
  Widget build(BuildContext context) {
    debugPrint('$error');
    debugPrint('--- STACKTRACE ---');
    debugPrint('$trace');

    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: AppPadding.xxl,
        vertical: AppPadding.m,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            error.title,
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppPadding.s),
          Text(
            error.message,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
