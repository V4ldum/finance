import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:flutter/material.dart';
import 'package:meta_package/meta_package.dart';

class AuthenticationErrorCard extends StatelessWidget {
  const AuthenticationErrorCard({
    required this.error,
    super.key,
  });

  final Object error;

  @override
  Widget build(BuildContext context) {
    if (error is! DisplayableException) {
      debugPrint((error is DisplayableException).toString());
      debugPrint(error.toString());
      debugPrint((error as Error).stackTrace.toString());
    }

    return Card(
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(AppPadding.xs),
        ),
      ),
      elevation: 0,
      color: Theme.of(context).colorScheme.errorContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.m,
          vertical: AppPadding.s,
        ),
        child: Text(
          error is DisplayableException //
              ? (error as DisplayableException).message
              : S.current.genericError,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Theme.of(context).colorScheme.onErrorContainer,
              ),
        ),
      ),
    );
  }
}
