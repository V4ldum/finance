import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/features/assets/application/assets_service.dart';
import 'package:finance/features/assets/domain/models/asset_type_model.dart';
import 'package:finance/features/assets/presentation/providers/finary_assets_controller.dart';
import 'package:finance/shared/constants/app_padding.dart';
import 'package:finance/shared/presentation/providers/app_cache_controller.dart';
import 'package:finance/shared/presentation/widgets/default_error_widget.dart';
import 'package:finance/shared/presentation/widgets/default_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/meta_package.dart';

class DashboardSettingsPage extends ConsumerWidget {
  const DashboardSettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assetsResult = ref.watch(finaryAssetsControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(S.current.settingsAssetsTitle),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.l),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      S.current.dashboardSettingsStockCategorisationTitle,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: AppPadding.m),
                    Text(
                      S.current.dashboardSettingsStockCategorisationMessage,
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    const SizedBox(height: AppPadding.m),
                  ],
                ),
              ),
              assetsResult.when(
                data: (data) {
                  final stocks = data.assets.where((element) => element.type == AssetTypeModel.stock).toList()
                    ..sort(
                      (a, b) => a.name.compareTo(b.name),
                    );

                  if (stocks.isEmpty) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppPadding.xxl,
                        vertical: AppPadding.l,
                      ),
                      child: Text(
                        S.current.dashboardSettingsStockCategorisationEmptyError,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    );
                  }

                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: List.generate(
                      stocks.length,
                      (index) {
                        final stock = stocks[index];

                        return CheckboxListTile(
                          contentPadding: const EdgeInsets.only(left: AppPadding.l, right: AppPadding.m),
                          dense: true,
                          value: ref.watch(appCacheControllerProvider).investmentStocksSymbols.contains(stock.symbol),
                          onChanged: (value) {
                            if (value case true) {
                              ref.read(assetsServiceProvider).addInvestmentStockSymbol(stock.symbol);
                            }
                            if (value case false) {
                              ref.read(assetsServiceProvider).removeInvestmentStockSymbol(stock.symbol);
                            }
                          },
                          title: Text(
                            stock.name,
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        );
                      },
                    ),
                  );
                },
                error: (error, trace) => DefaultErrorWidget(
                  error: error as DisplayableException,
                  trace: trace,
                ),
                loading: () => const DefaultLoadingWidget(),
              ),
              const SizedBox(height: AppPadding.m),
            ],
          ),
        ),
      ),
    );
  }
}
