import 'dart:async';

import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/utils/validator/string_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_package/meta_package.dart';

class EditCashPage extends ConsumerStatefulWidget {
  const EditCashPage({
    super.key,
    this.asset,
  });

  final AssetModel? asset;

  @override
  ConsumerState<EditCashPage> createState() => _EditCashPageState();
}

class _EditCashPageState extends ConsumerState<EditCashPage> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _possessedController = TextEditingController();
  final _unitValueController = TextEditingController();

  bool isLoading = false;

  int get _possessed {
    if (_possessedController.text.isEmpty) {
      return 1;
    }
    return int.parse(_possessedController.text);
  }

  int get _unitValue {
    if (_unitValueController.text.isEmpty) {
      return 1;
    }
    return int.parse(_unitValueController.text);
  }

  void _onQuantityFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      // Lost focus
      setState(() {
        // default value if empty
        if (_possessedController.text.isEmpty) {
          _possessedController.text = '1';
        }
        // remove leading zeros
        if (_possessedController.text.startsWith('0')) {
          while (_possessedController.text.length > 1 && _possessedController.text.characters.first == '0') {
            _possessedController.text = _possessedController.text.substring(1);
          }
        }
      });
    }
  }

  void _onUnitValueFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      // Lost focus
      setState(() {
        // default value if empty
        if (_unitValueController.text.isEmpty) {
          _unitValueController.text = '1';
        }
        // remove leading zeros
        if (_unitValueController.text.startsWith('0')) {
          while (_unitValueController.text.length > 1 && _unitValueController.text.characters.first == '0') {
            _unitValueController.text = _unitValueController.text.substring(1);
          }
        }
      });
    }
  }

  Future<void> _updateCashAsset() async {
    if (!formKey.isFormValid) {
      return;
    }

    try {
      setState(() {
        isLoading = true;
      });

      await ref.read(assetsServiceProvider).updateCashPhysicalAsset(
            id: widget.asset!.id,
            name: _nameController.text,
            possessed: _possessed,
            unitValue: _unitValue,
          );
    } on DisplayableException catch (e) {
      if (context.mounted) {
        unawaited(
          showDialog<void>(
            // Linter doesn't recognize that we check if context was mounted
            // ignore: use_build_context_synchronously
            context: context,
            builder: (context) => AlertDialog(
              title: Text(e.title),
              content: Text(e.message),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(S.current.ok),
                ),
              ],
            ),
          ),
        );
      }
      return;
    } finally {
      setState(() {
        isLoading = false;
      });
    }

    if (context.mounted) {
      // Linter doesn't recognize that we check if context was mounted
      // ignore: use_build_context_synchronously
      while (context.canPop()) {
        // Linter doesn't recognize that we check if context was mounted
        // ignore: use_build_context_synchronously
        context.pop();
      }
    }
  }

  Future<void> _addCashAsset() async {
    if (!formKey.isFormValid) {
      return;
    }

    try {
      setState(() {
        isLoading = true;
      });

      await ref.read(assetsServiceProvider).addCashPhysicalAsset(
            name: _nameController.text,
            possessed: _possessed,
            unitValue: _unitValue,
          );
    } on DisplayableException catch (e) {
      if (context.mounted) {
        unawaited(
          showDialog<void>(
            // Linter doesn't recognize that we check if context was mounted
            // ignore: use_build_context_synchronously
            context: context,
            builder: (context) => AlertDialog(
              title: Text(e.title),
              content: Text(e.message),
              actions: [
                TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text(S.current.ok),
                ),
              ],
            ),
          ),
        );
      }
      return;
    } finally {
      setState(() {
        isLoading = false;
      });
    }

    if (context.mounted) {
      // Linter doesn't recognize that we check if context was mounted
      // ignore: use_build_context_synchronously
      while (context.canPop()) {
        // Linter doesn't recognize that we check if context was mounted
        // ignore: use_build_context_synchronously
        context.pop();
      }
    }
  }

  @override
  void initState() {
    super.initState();

    _nameController.text = widget.asset?.name ?? '';
    _possessedController.text = widget.asset?.amount.toInt().toString() ?? '1';
    _unitValueController.text = widget.asset?.value.toInt().toString() ?? '1';
  }

  @override
  void dispose() {
    _nameController.dispose();
    _possessedController.dispose();
    _unitValueController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Scaffold(
            appBar: AppBar(
              title: Text(
                widget.asset != null //
                    ? S.current.updateAssetTitle
                    : S.current.addCashTitle,
              ),
            ),
            body: SafeArea(
              child: LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
                    child: ConstrainedBox(
                      constraints: BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            /// General
                            Form(
                              key: formKey,
                              child: TextFormField(
                                controller: _nameController,
                                validator: StringValidator.validateEmpty,
                                autocorrect: false,
                                textInputAction: TextInputAction.done,
                                decoration: InputDecoration(
                                  labelText: S.current.name,
                                  filled: true,
                                  helperText: '',
                                ),
                              ),
                            ),
                            const SizedBox(height: AppPadding.s),
                            Row(
                              children: [
                                Flexible(
                                  child: Focus(
                                    onFocusChange: _onQuantityFocusChanged,
                                    child: TextField(
                                      controller: _possessedController,
                                      autocorrect: false,
                                      textInputAction: TextInputAction.done,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: S.current.quantityPossessed,
                                        filled: true,
                                      ),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: AppPadding.m),
                                Flexible(
                                  child: Focus(
                                    onFocusChange: _onUnitValueFocusChanged,
                                    child: TextField(
                                      controller: _unitValueController,
                                      autocorrect: false,
                                      textInputAction: TextInputAction.done,
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        labelText: S.current.cashUnitValue,
                                        filled: true,
                                        suffix: Text(
                                          '€',
                                          style: Theme.of(context).textTheme.bodyLarge,
                                        ),
                                      ),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.digitsOnly,
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            const Expanded(
                              child: SizedBox(height: AppPadding.l),
                            ),

                            FilledButton(
                              onPressed: () => widget.asset != null ? _updateCashAsset() : _addCashAsset(),
                              child: Text(
                                widget.asset != null //
                                    ? S.current.updateAssetsButton
                                    : S.current.addToAssetsButton,
                              ),
                            ),
                            const SizedBox(height: AppPadding.m),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          if (isLoading)
            const ColoredBox(
              color: Colors.black38,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
        ],
      ),
    );
  }
}
