import 'dart:async';

import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
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
  final _quantityController = TextEditingController();
  final _unitValueController = TextEditingController();

  int get _quantity {
    if (_quantityController.text.isEmpty) {
      return 1;
    }
    return int.parse(_quantityController.text);
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
        if (_quantityController.text.isEmpty) {
          _quantityController.text = '1';
        }
        // remove leading zeros
        if (_quantityController.text.startsWith('0')) {
          while (_quantityController.text.length > 1 && _quantityController.text.characters.first == '0') {
            _quantityController.text = _quantityController.text.substring(1);
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

  Future<void> _addCashToAssets() async {
    if (!formKey.isFormValid) {
      return;
    }

    final asset = AssetModel(
      name: _nameController.text,
      amount: _quantity.toDouble(),
      value: _unitValue.toDouble(),
      category: AssetCategoryModel.savings,
      type: AssetTypeModel.cash,
    );

    final assetAlreadyExists = ref
        .read(appCacheControllerProvider)
        .localAssets
        .where((e) => e.type == AssetTypeModel.cash && e.name.toLowerCase() == asset.name.toLowerCase())
        .toList()
        .isNotEmpty;
    if (assetAlreadyExists && widget.asset == null) {
      unawaited(
        showDialog<void>(
          context: context,
          builder: (context) => AlertDialog(
            title: Text(S.current.physicalAssetItemAlreadyExistsTitle),
            content: Text(S.current.physicalAssetItemAlreadyExistsContent),
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
      return;
    }

    if (widget.asset != null) {
      if (widget.asset!.name != asset.name ||
          widget.asset!.amount != asset.amount ||
          widget.asset!.value != asset.value) {
        // Only update if something changed
        await ref.read(assetsServiceProvider).updateLocalAsset(widget.asset!, asset);
      }
    } else {
      await ref.read(assetsServiceProvider).addLocalAsset(asset);
    }

    if (context.mounted) {
      // ignore: use_build_context_synchronously
      context.pop();
    }
  }

  @override
  void initState() {
    super.initState();

    _nameController.text = widget.asset?.name ?? '';
    _quantityController.text = widget.asset?.amount.toInt().toString() ?? '1';
    _unitValueController.text = widget.asset?.value.toInt().toString() ?? '1';
  }

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _unitValueController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                controller: _quantityController,
                                autocorrect: false,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: S.current.quantity,
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
                        onPressed: _addCashToAssets,
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
    );
  }
}
