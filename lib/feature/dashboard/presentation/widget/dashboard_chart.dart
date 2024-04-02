import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/dashboard/presentation/provider/providers.dart';
import 'package:finance/feature/dashboard/presentation/widget/asset_category_icon.dart';
import 'package:finance/feature/dashboard/presentation/widget/linear_chart_item.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart_center.dart';
import 'package:finance/shared/constant/app_padding.dart';
import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

Color _defaultColorManager(List<PieData> data, int index, int? selectedIndex) {
  return Utils.getNextChartColor(
    colors: const [
      Colors.red,
      Colors.orange,
      Colors.green,
      Colors.blueAccent,
      Colors.deepPurple,
    ],
    current: index,
    max: data.length,
    selected: selectedIndex,
  );
}

class DashboardChart extends ConsumerWidget {
  const DashboardChart({
    required this.assetsFilter,
    required this.categoryFilter,
    required this.emptyTitle,
    required this.emptyBody,
    this.assetUnit = '€',
    this.colorManager = _defaultColorManager,
    super.key,
  });

  final List<PieData> Function() assetsFilter;
  final AssetCategoryModel Function(PieData item) categoryFilter;
  final String assetUnit;
  final String emptyTitle;
  final String emptyBody;
  final Color Function(List<PieData>, int, int?) colorManager;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChartSegment = ref.watch(selectedChartSegmentControllerProvider);

    final data = assetsFilter()..sort((a, b) => b.value.compareTo(a.value));

    if (data.isEmpty) {
      return Padding(
        padding: const EdgeInsets.all(AppPadding.xxl),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(emptyTitle),
            const SizedBox(height: AppPadding.m),
            Text(
              emptyBody,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }

    final total = data.fold(0, (prev, e) => prev += e.value);

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: AppPadding.s, horizontal: AppPadding.m),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .6,
            child: PieChart(
              data: data,
              colorManager: (data, index) => colorManager(data, index, selectedChartSegment),
              selectedIndex: selectedChartSegment,
              onSectionTaped: ref.read(selectedChartSegmentControllerProvider.notifier).onSelectedSegmentChanged,
              child: PieChartCenter(
                top:
                    '${NumberFormat().format(selectedChartSegment == null ? total : data[selectedChartSegment].value)} $assetUnit',
                bottom: selectedChartSegment == null ? S.current.total : data[selectedChartSegment].title,
                size: MediaQuery.of(context).size.width * .4,
              ),
            ),
          ),
          const SizedBox(height: AppPadding.l),
          ...List.generate(
            data.length,
            (index) {
              final item = data[index];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: AppPadding.xs),
                child: LinearChartItem(
                  title: item.title,
                  value: item.value.toDouble(),
                  assetUnit: assetUnit,
                  percent: item.value / total,
                  color: colorManager(data, index, null),
                  leading: AssetCategoryIcon(
                    category: categoryFilter(item),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
