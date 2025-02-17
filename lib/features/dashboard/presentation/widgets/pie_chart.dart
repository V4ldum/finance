import 'package:finance/shared/constants/app_duration.dart';
import 'package:fl_chart/fl_chart.dart' as chart;
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({
    required this.colorManager,
    super.key,
    this.selectedIndex,
    this.child,
    this.data = const [],
    this.onSectionTaped,
  });

  final Widget? child;
  final Color Function(List<PieData>, int) colorManager;
  final List<PieData> data;
  final void Function(int)? onSectionTaped;
  final int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    final chartWidget = chart.PieChart(
      duration: const MediumDuration(),
      curve: Curves.easeOutCubic,
      chart.PieChartData(
        sectionsSpace: 3,
        startDegreeOffset: -90,
        sections: [
          ...List.generate(data.length, (index) {
            return chart.PieChartSectionData(
              radius: 21,
              title: data[index].title,
              value: data[index].value.toDouble(),
              showTitle: false,
              color: colorManager(data, index),
            );
          }),
        ],
        pieTouchData: chart.PieTouchData(
          enabled: onSectionTaped != null,
          touchCallback: (event, response) {
            if (event is chart.FlTapDownEvent) {
              if (response!.touchedSection!.props[0] == null) {
                return;
              }

              final title = (response.touchedSection!.props[0]! as chart.PieChartSectionData).title;

              onSectionTaped?.call(data.indexWhere((element) => element.title == title));
            }
          },
        ),
      ),
    );

    if (child != null) {
      return Stack(children: [chartWidget, Center(child: child)]);
    }
    return chartWidget;
  }
}

class PieData {
  const PieData({required this.title, required this.value, this.evolutionPercent});
  final String title;
  final int value;
  final double? evolutionPercent;
}
