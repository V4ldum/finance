import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/shared/constants/app_asset.dart';
import 'package:finance/shared/constants/app_component_size.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:finance/shared/utils/go_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:meta_package/meta_package.dart';

class LoadingPage extends ConsumerWidget {
  const LoadingPage({super.key});

  Future<void> _onInit(WidgetRef ref) async {
    final context = ref.context;

    try {
      await ref.read(appCacheControllerProvider.notifier).init();

      if (context.mounted) {
        context.pushReplacementNamed(AppRoutes.dashboard);
      }
    } catch (e) {
      if (context.mounted) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(S.current.genericError)));
      }
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: InitCaller(
          postFrame: true,
          onInit: () => _onInit(ref),
          child: Center(child: Image.asset(AppAsset.logo, height: AppComponentSize.m)),
        ),
      ),
    );
  }
}
