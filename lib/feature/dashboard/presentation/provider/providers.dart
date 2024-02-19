import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/model/asset_category_model.dart';
import 'package:finance/feature/assets/domain/model/asset_type_model.dart';
import 'package:finance/feature/assets/domain/model/assets_model.dart';
import 'package:finance/feature/dashboard/presentation/widget/pie_chart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/providers.g.dart';

@riverpod
class SelectedChartSegmentController extends _$SelectedChartSegmentController {
  @override
  int? build() => null;

  void onSelectedSegmentChanged(int index) {
    if (index < 0) {
      return;
    }

    if (index == state) {
      state = null;
      return;
    }

    state = index;
  }

  void resetState() {
    state = null;
  }
}

@riverpod
class DashboardTabController extends _$DashboardTabController {
  @override
  int build() => 0;

  void onTabSelected(int value) {
    if (value != state) {
      ref.read(selectedChartSegmentControllerProvider.notifier).resetState();
      state = value;
    }
  }

  TabData getCurrentTabData() {
    return switch (state) {
      0 => _getStocksTabData(),
      1 => _getAccountsTabData(),
      2 => _getDistributionTabData(),
      _ => throw UnimplementedError('There are no tab n°$state'),
    };
  }

  TabData _getStocksTabData() {
    return TabData(
      title: S.current.stocks,
      data: (assets) => assets.assets
          .where((e) => e.type == AssetTypeModel.stock || e.type == AssetTypeModel.fund)
          .map((e) => PieData(title: e.name, value: e.total.toInt()))
          .toList()
        ..sort((a, b) => b.value.compareTo(a.value)),
    );
  }

  TabData _getAccountsTabData() {
    return TabData(
      title: S.current.accounts,
      data: (assets) => assets.assets.where((e) => e.type == AssetTypeModel.account).map((e) {
        print(e.name);
        return PieData(title: e.name, value: e.total.toInt());
      }).toList()
        ..sort((a, b) => b.value.compareTo(a.value)),
    );
  }

  TabData _getDistributionTabData() {
    return TabData(
      title: S.current.distribution,
      data: (assets) => AssetCategoryModel.values
          .map(
            (category) => PieData(
              title: category.toIntlString(),
              value: assets.assets.fold(0, (prev, e) => prev += e.category == category ? e.total.toInt() : 0),
            ),
          )
          .toList()
        ..removeWhere((e) => e.value == 0)
        ..sort((a, b) => b.value.compareTo(a.value)),
    );
  }
}

class TabData {
  const TabData({
    required this.title,
    required this.data,
  });

  final String title;
  final List<PieData> Function(AssetsModel) data;
}
