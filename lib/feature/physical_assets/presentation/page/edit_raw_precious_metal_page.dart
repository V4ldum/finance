import 'dart:async';

import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/application/assets_service.dart';
import 'package:finance/feature/assets/domain/model/precious_metal_asset_model.dart';
import 'package:finance/feature/physical_assets/domain/model/precious_metal_type_model.dart';
import 'package:finance/feature/physical_assets/presentation/provider/precious_metal_estimated_value_controller.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:finance/shared/utils/validator/string_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_package/meta_package.dart';

class EditRawPreciousMetalPage extends ConsumerStatefulWidget {
  const EditRawPreciousMetalPage({
    this.asset,
    super.key,
  });

  final PreciousMetalAssetModel? asset;

  @override
  ConsumerState<EditRawPreciousMetalPage> createState() => _EditRawPreciousMetalPageState();
}

class _EditRawPreciousMetalPageState extends ConsumerState<EditRawPreciousMetalPage> {
  static final _floatWhitelistRegExp = RegExp(r'(^\d*\.?\d*)');

  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _quantityController = TextEditingController();
  final _weightController = TextEditingController();
  final _purityController = TextEditingController();

  PreciousMetalTypeModel? _dropdownValue;

  int get _quantity {
    if (_quantityController.text.isEmpty) {
      return 1;
    }
    return int.parse(_quantityController.text);
  }

  double get _weight {
    if (_weightController.text.isEmpty) {
      return 0;
    }
    return double.parse(_weightController.text);
  }

  double get _purity {
    if (_purityController.text.isEmpty) {
      return 0;
    }
    return double.parse(_purityController.text);
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

  void _onWeightFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      setState(() {
        // default value if empty
        if (_weightController.text.isEmpty) {
          _weightController.text = '0';
        }
        // remove leading zeros
        if (_weightController.text.startsWith('0')) {
          while (_weightController.text.length > 1 && _weightController.text.characters.first == '0') {
            _weightController.text = _weightController.text.substring(1);
          }
        }
      });
    }
  }

  void _onMetalDropdownChanged(PreciousMetalTypeModel? value) {
    setState(() {
      _dropdownValue = value;
    });
  }

  void _onPurityFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      // Lost focus
      setState(() {
        // default value if empty
        if (_purityController.text.isEmpty) {
          _purityController.text = '0';
        }
        // remove leading zeros
        if (_purityController.text.startsWith('0')) {
          while (_purityController.text.length > 1 && _purityController.text.characters.first == '0') {
            _purityController.text = _purityController.text.substring(1);
          }
        }
      });
    }
  }

  Future<void> _addMetalToAssets(double estimatedValue) async {
    if (!formKey.isFormValid) {
      return;
    }

    final asset = PreciousMetalAssetModel(
      numistaId: '',
      name: _nameController.text,
      amount: _quantity.toDouble(),
      value: estimatedValue,
      purity: _purity,
      weight: _weight,
      metalType: _dropdownValue ?? PreciousMetalTypeModel.other,
    );

    if (ref
        .read(appCacheControllerProvider)
        .localAssets
        .where(
          (e) =>
              e is PreciousMetalAssetModel && e.numistaId.isEmpty && e.name.toLowerCase() == asset.name.toLowerCase(),
        )
        .toList()
        .isNotEmpty) {
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
          widget.asset!.weight != asset.weight ||
          widget.asset!.metalType != asset.metalType ||
          widget.asset!.purity != asset.purity) {
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
    _weightController.text = widget.asset?.weight.toString() ?? '0';
    _purityController.text = widget.asset?.purity.toString() ?? '99.99';
    _dropdownValue = widget.asset?.metalType ?? PreciousMetalTypeModel.gold;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _weightController.dispose();
    _purityController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final estimatedValueResult = ref.watch(
      preciousMetalEstimatedValueControllerProvider(_dropdownValue, _purity / 100, _weight),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.asset != null //
              ? S.current.updateAssetTitle
              : S.current.addRawPreciousMetalTitle,
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
                              onFocusChange: _onWeightFocusChanged,
                              child: TextField(
                                controller: _weightController,
                                autocorrect: false,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: S.current.metalFeaturesWeight,
                                  filled: true,
                                  suffix: Text(
                                    'g',
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(_floatWhitelistRegExp),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: AppPadding.l),

                      /// Composition
                      Text(
                        S.current.metalFeaturesComposition,
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                      ),

                      const SizedBox(height: AppPadding.m),

                      Row(
                        children: [
                          Expanded(
                            child: DropdownMenu<PreciousMetalTypeModel>(
                              initialSelection: _dropdownValue,
                              label: Text(S.current.metalDropdown),
                              expandedInsets: EdgeInsets.zero,
                              inputDecorationTheme: const InputDecorationTheme(
                                filled: true,
                              ),
                              onSelected: _onMetalDropdownChanged,
                              dropdownMenuEntries: PreciousMetalTypeModel.values
                                  .map(
                                    (e) => DropdownMenuEntry(
                                      value: e,
                                      label: e.toIntlString(),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                          const SizedBox(width: AppPadding.m),
                          Expanded(
                            child: Focus(
                              onFocusChange: _onPurityFocusChanged,
                              child: TextField(
                                controller: _purityController,
                                autocorrect: false,
                                textInputAction: TextInputAction.done,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  labelText: S.current.purity,
                                  filled: true,
                                  suffix: Text(
                                    '%',
                                    style: Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(_floatWhitelistRegExp),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: AppPadding.xl),

                      /// Estimated Value
                      RichText(
                        text: TextSpan(
                          text: S.current.estimatedPrice,
                          style: Theme.of(context).textTheme.bodyLarge,
                          children: [
                            estimatedValueResult.when(
                              data: (data) {
                                return TextSpan(
                                  text: '${(data * _quantity).toStringAsFixed(2)} €',
                                  children: [
                                    if (_quantity > 1 && _dropdownValue != PreciousMetalTypeModel.other)
                                      TextSpan(
                                        text: '  (${data.toStringAsFixed(2)} €/u)',
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                  ],
                                );
                              },
                              error: (error, __) {
                                debugPrint('$error');
                                return TextSpan(text: S.current.unknownErrorTitle);
                              },
                              loading: () => const WidgetSpan(
                                alignment: PlaceholderAlignment.middle,
                                child: Padding(
                                  padding: EdgeInsets.only(left: AppPadding.s),
                                  child: SizedBox(
                                    height: AppPadding.m,
                                    width: AppPadding.m,
                                    child: CircularProgressIndicator(strokeWidth: 1.5),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      const Expanded(
                        child: SizedBox(height: AppPadding.l),
                      ),

                      FilledButton(
                        onPressed: () => _addMetalToAssets(estimatedValueResult.asData?.value ?? 0),
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
