import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';

class ApiKeyField extends ConsumerStatefulWidget {
  const ApiKeyField({super.key, this.initialValue, this.updateKeyCallback});

  final String? initialValue;
  final Future<void> Function(String)? updateKeyCallback;

  @override
  ConsumerState<ApiKeyField> createState() => _ApiKeyFieldState();
}

class _ApiKeyFieldState extends ConsumerState<ApiKeyField> {
  final formKey = GlobalKey<FormState>();
  final apiKeyController = TextEditingController();

  void _clearField() {
    setState(apiKeyController.clear);
    _updateApiKey();
  }

  Future<void> _updateApiKey() async {
    debugPrint('Saving "${apiKeyController.text}"');

    await widget.updateKeyCallback?.call(apiKeyController.text);
  }

  @override
  void initState() {
    super.initState();

    if (widget.initialValue != null) {
      apiKeyController.text = widget.initialValue!;
    }
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
              suffixIcon:
                  apiKeyController.text.isNotEmpty
                      ? IconButton(onPressed: _clearField, icon: const Icon(LucideIcons.x))
                      : null,
              labelText: S.current.numistaApiKeyField,
              helperText: '',
              filled: true,
            ),
            autofillHints: const {AutofillHints.password, AutofillHints.oneTimeCode},
            onChanged: (_) => _updateApiKey(),
          ),
        ),
      ),
    );
  }
}
