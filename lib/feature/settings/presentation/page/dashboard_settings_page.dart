import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/dashboard/domain/model/asset_type_model.dart';
import 'package:finance/shared/application/assets_service.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/presentation/provider/app_cache_controller.dart';
import 'package:finance/shared/presentation/provider/assets_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardSettingsPage extends ConsumerWidget {
  const DashboardSettingsPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final assetsResult = ref.watch(assetsControllerProvider);

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
              assetsResult.maybeMap(
                data: (data) {
                  final stocks = data.value.assets.where((element) => element.type == AssetTypeModel.stock).toList()
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
                orElse: () => Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppPadding.xxl,
                    vertical: AppPadding.l,
                  ),
                  child: Text(
                    S.current.genericError,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ),
              ),
              const SizedBox(height: AppPadding.m),
            ],
          ),
        ),
      ),
    );
  }
}
