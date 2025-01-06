import 'dart:async';

import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/application/assets_service.dart';
import 'package:finance/features/assets/domain/models/precious_metal_asset_model.dart';
import 'package:finance/features/physical_assets/domain/models/precious_metal_type_model.dart';
import 'package:finance/features/physical_assets/presentation/providers/precious_metal_estimated_value_controller.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/utils/validators/string_validator.dart';
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
  final _possessedController = TextEditingController();
  final _weightController = TextEditingController();
  final _purityController = TextEditingController();

  PreciousMetalTypeModel? _dropdownValue;

  bool isLoading = false;

  int get _possessed {
    if (_possessedController.text.isEmpty) {
      return 1;
    }
    return int.parse(_possessedController.text);
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

  Future<void> _updateRawMetalAsset() async {
    if (!formKey.isFormValid) {
      return;
    }

    try {
      setState(() {
        isLoading = true;
      });

      await ref.read(assetsServiceProvider).updateRawPhysicalAsset(
            id: widget.asset!.id,
            name: _nameController.text,
            possessed: _possessed,
            unitWeight: _weight,
            metalType: _dropdownValue!,
            purity: _purity,
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

  Future<void> _addRawMetalAssets() async {
    if (!formKey.isFormValid) {
      return;
    }

    try {
      setState(() {
        isLoading = true;
      });

      await ref.read(assetsServiceProvider).addRawPhysicalAsset(
            name: _nameController.text,
            possessed: _possessed,
            unitWeight: _weight,
            metalType: _dropdownValue!,
            purity: _purity,
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
    _weightController.text = widget.asset?.weight.toString() ?? '0';
    _purityController.text = widget.asset?.purity.toString() ?? '99.99';
    _dropdownValue = widget.asset?.metalType ?? PreciousMetalTypeModel.gold;
  }

  @override
  void dispose() {
    _nameController.dispose();
    _possessedController.dispose();
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
      body: Stack(
        children: [
          Scaffold(
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
                              spacing: AppPadding.m,
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
                              spacing: AppPadding.m,
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
                                    dropdownMenuEntries: [PreciousMetalTypeModel.gold, PreciousMetalTypeModel.silver]
                                        .map(
                                          (e) => DropdownMenuEntry(
                                            value: e,
                                            label: e.toIntlString(),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
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
                                        text: '${(data * _possessed).toStringAsFixed(2)} €',
                                        children: [
                                          if (_possessed > 1 && _dropdownValue != PreciousMetalTypeModel.other)
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
                              onPressed: () => widget.asset != null ? _updateRawMetalAsset() : _addRawMetalAssets(),
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
