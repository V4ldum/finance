import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/shared/constant/app_component_size.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:flutter/material.dart';

class PrivacyShieldPage extends StatelessWidget {
  const PrivacyShieldPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Icon(
              Icons.visibility_off_rounded,
              size: AppComponentSize.s,
              color: Theme.of(context).colorScheme.surfaceVariant,
            ),
          ),
          Align(
            alignment: AlignmentDirectional.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.xl),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.shield,
                    color: Theme.of(context).colorScheme.surfaceVariant,
                  ),
                  const SizedBox(width: AppPadding.s),
                  Text(
                    S.current.privacyShieldText,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Theme.of(context).colorScheme.surfaceVariant,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
