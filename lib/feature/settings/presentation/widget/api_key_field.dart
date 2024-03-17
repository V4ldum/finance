import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/physical_assets/application/precious_metals_service.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ApiKeyField extends ConsumerStatefulWidget {
  const ApiKeyField({super.key});

  @override
  ConsumerState<ApiKeyField> createState() => _ApiKeyFieldState();
}

class _ApiKeyFieldState extends ConsumerState<ApiKeyField> {
  final formKey = GlobalKey<FormState>();
  final apiKeyController = TextEditingController();

  void _clearField() {
    setState(apiKeyController.clear);
    _updateNumistaApiKey();
  }

  Future<void> _updateNumistaApiKey() async {
    debugPrint('Saving "${apiKeyController.text}"');

    await ref.read(preciousMetalsServiceProvider).saveNumistaApiKey(apiKeyController.text);
  }

  @override
  void initState() {
    super.initState();
    apiKeyController.text = ref.read(appCacheControllerProvider).numistaApiKey;
  }

  @override
  void dispose() {
    apiKeyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      child: Form(
        key: formKey,
        child: AutofillGroup(
          child: TextFormField(
            controller: apiKeyController,
            autocorrect: false,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              suffixIcon: apiKeyController.text.isNotEmpty
                  ? IconButton(
                      onPressed: _clearField,
                      icon: const Icon(Icons.close),
                    )
                  : null,
              labelText: S.current.numistaApiKeyField,
              helperText: '',
              filled: true,
            ),
            autofillHints: const {
              AutofillHints.password,
              AutofillHints.oneTimeCode,
            },
            onChanged: (_) => _updateNumistaApiKey(),
          ),
        ),
      ),
    );
  }
}
