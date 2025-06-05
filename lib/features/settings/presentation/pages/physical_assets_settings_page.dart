import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/physical_assets/application/ratio_service.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PhysicalAssetsSettingsPage extends ConsumerStatefulWidget {
  const PhysicalAssetsSettingsPage({super.key});

  static const defaultGSRGoldFavorableRatio = 60.0;
  static const defaultGSRSilverFavorableRatio = 80.0;

  static const defaultSPGRSPFavorableRatio = 1.5;
  static const defaultSPGRGoldFavorableRatio = 3.0;

  @override
  ConsumerState<PhysicalAssetsSettingsPage> createState() => _PhysicalAssetsSettingsPageState();
}

class _PhysicalAssetsSettingsPageState extends ConsumerState<PhysicalAssetsSettingsPage> {
  static final _floatWhitelistRegExp = RegExp(r'(^\d*\.?\d*)');

  final _gsrGoldFavorableRatioController = TextEditingController();
  final _gsrSilverFavorableRatioController = TextEditingController();
  final _spgrSPFavorableRatioController = TextEditingController();
  final _spgrGoldFavorableRatioController = TextEditingController();

  double get _gsrGoldFavorableRatio {
    if (_gsrGoldFavorableRatioController.text.isEmpty) {
      return PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio;
    }
    return double.parse(_gsrGoldFavorableRatioController.text);
  }

  double get _gsrSilverFavorableRatio {
    if (_gsrSilverFavorableRatioController.text.isEmpty) {
      return PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio;
    }
    return double.parse(_gsrSilverFavorableRatioController.text);
  }

  double get _spgrSPFavorableRatio {
    if (_spgrSPFavorableRatioController.text.isEmpty) {
      return PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio;
    }
    return double.parse(_spgrSPFavorableRatioController.text);
  }

  double get _spgrGoldFavorableRatio {
    if (_spgrGoldFavorableRatioController.text.isEmpty) {
      return PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio;
    }
    return double.parse(_spgrGoldFavorableRatioController.text);
  }

  void _onGSRGoldRatioFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      setState(() {
        // default value if empty
        if (_gsrGoldFavorableRatioController.text.isEmpty) {
          _gsrGoldFavorableRatioController.text = PhysicalAssetsSettingsPage.defaultGSRGoldFavorableRatio.toString();
        }
        // remove leading zeros
        if (_gsrGoldFavorableRatioController.text.startsWith('0')) {
          while (_gsrGoldFavorableRatioController.text.length > 1 &&
              _gsrGoldFavorableRatioController.text.characters.first == '0') {
            _gsrGoldFavorableRatioController.text = _gsrGoldFavorableRatioController.text.substring(1);
          }
        }
      });
      ref.read(ratioServiceProvider).updateGSRGoldFavorableRatio(_gsrGoldFavorableRatio);
    }
  }

  void _onGSRSilverRatioFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      setState(() {
        // default value if empty
        if (_gsrSilverFavorableRatioController.text.isEmpty) {
          _gsrSilverFavorableRatioController.text =
              PhysicalAssetsSettingsPage.defaultGSRSilverFavorableRatio.toString();
        }
        // remove leading zeros
        if (_gsrSilverFavorableRatioController.text.startsWith('0')) {
          while (_gsrSilverFavorableRatioController.text.length > 1 &&
              _gsrSilverFavorableRatioController.text.characters.first == '0') {
            _gsrSilverFavorableRatioController.text = _gsrSilverFavorableRatioController.text.substring(1);
          }
        }
      });

      ref.read(ratioServiceProvider).updateGSRSilverFavorableRatio(_gsrSilverFavorableRatio);
    }
  }

  void _onSPGRSPRatioFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      setState(() {
        // default value if empty
        if (_spgrSPFavorableRatioController.text.isEmpty) {
          _spgrSPFavorableRatioController.text = PhysicalAssetsSettingsPage.defaultSPGRSPFavorableRatio.toString();
        }
        // remove leading zeros
        if (_spgrSPFavorableRatioController.text.startsWith('0')) {
          while (_spgrSPFavorableRatioController.text.length > 1 &&
              _spgrSPFavorableRatioController.text.characters.first == '0') {
            _spgrSPFavorableRatioController.text = _spgrSPFavorableRatioController.text.substring(1);
          }
        }
      });
      ref.read(ratioServiceProvider).updateSPGRSPFavorableRatio(_spgrSPFavorableRatio);
    }
  }

  void _onSPGRGoldRatioFocusChanged(bool gotFocus) {
    if (!gotFocus) {
      setState(() {
        // default value if empty
        if (_spgrGoldFavorableRatioController.text.isEmpty) {
          _spgrGoldFavorableRatioController.text = PhysicalAssetsSettingsPage.defaultSPGRGoldFavorableRatio.toString();
        }
        // remove leading zeros
        if (_spgrGoldFavorableRatioController.text.startsWith('0')) {
          while (_spgrGoldFavorableRatioController.text.length > 1 &&
              _spgrGoldFavorableRatioController.text.characters.first == '0') {
            _spgrGoldFavorableRatioController.text = _spgrGoldFavorableRatioController.text.substring(1);
          }
        }
      });
      ref.read(ratioServiceProvider).updateSPGRGoldFavorableRatio(_spgrGoldFavorableRatio);
    }
  }

  @override
  void initState() {
    super.initState();
    final cache = ref.read(appCacheControllerProvider);

    _gsrGoldFavorableRatioController.text = cache.gsrGoldFavorableRatio.toString();
    _gsrSilverFavorableRatioController.text = cache.gsrSilverFavorableRatio.toString();
    _spgrSPFavorableRatioController.text = cache.spgrSPFavorableRatio.toString();
    _spgrGoldFavorableRatioController.text = cache.spgrGoldFavorableRatio.toString();
  }

  @override
  void dispose() {
    _gsrGoldFavorableRatioController.dispose();
    _gsrSilverFavorableRatioController.dispose();
    _spgrSPFavorableRatioController.dispose();
    _spgrGoldFavorableRatioController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.current.settingsPhysicalAssetsTitle)),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(S.current.physicalAssetsSettingsGoldToSilverRatio, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: AppPadding.m),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 2, child: Text(S.current.physicalAssetsSettingsGoldFavorableRatioGSR)),
                  Flexible(
                    child: Focus(
                      onFocusChange: _onGSRGoldRatioFocusChanged,
                      child: TextField(
                        controller: _gsrGoldFavorableRatioController,
                        autocorrect: false,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: S.current.physicalAssetsSettingsGoldRatio, filled: true),
                        inputFormatters: [FilteringTextInputFormatter.allow(_floatWhitelistRegExp)],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppPadding.xs),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 2, child: Text(S.current.physicalAssetsSettingsSilverFavorableRatioGSR)),
                  Flexible(
                    child: Focus(
                      onFocusChange: _onGSRSilverRatioFocusChanged,
                      child: TextField(
                        controller: _gsrSilverFavorableRatioController,
                        autocorrect: false,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: S.current.physicalAssetsSettingsSilverRatio,
                          filled: true,
                        ),
                        inputFormatters: [FilteringTextInputFormatter.allow(_floatWhitelistRegExp)],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppPadding.l),
              const Divider(),
              Text(S.current.physicalAssetsSettingsSPToGoldRatio, style: Theme.of(context).textTheme.titleLarge),
              const SizedBox(height: AppPadding.m),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 2, child: Text(S.current.physicalAssetsSettingsSPFavorableRatioSPGR)),
                  Flexible(
                    child: Focus(
                      onFocusChange: _onSPGRSPRatioFocusChanged,
                      child: TextField(
                        controller: _spgrSPFavorableRatioController,
                        autocorrect: false,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: S.current.physicalAssetsSettingsSPRatio, filled: true),
                        inputFormatters: [FilteringTextInputFormatter.allow(_floatWhitelistRegExp)],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppPadding.xs),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(flex: 2, child: Text(S.current.physicalAssetsSettingsGoldFavorableRatioSPGR)),
                  Flexible(
                    child: Focus(
                      onFocusChange: _onSPGRGoldRatioFocusChanged,
                      child: TextField(
                        controller: _spgrGoldFavorableRatioController,
                        autocorrect: false,
                        textInputAction: TextInputAction.done,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(labelText: S.current.physicalAssetsSettingsGoldRatio, filled: true),
                        inputFormatters: [FilteringTextInputFormatter.allow(_floatWhitelistRegExp)],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: AppPadding.l),
              Text(
                S.current.physicalAssetsSettingsSPToGoldRatioExplanation,
                textAlign: TextAlign.justify,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
