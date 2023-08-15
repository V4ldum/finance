import 'dart:math' as math;

import 'package:finance/features/proof_of_concept/application/providers.dart';
import 'package:finance/shared/constants/paddings.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meta_package/widgets.dart';

class ApiPage extends ConsumerWidget {
  const ApiPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: FutureWidget(
        future: ref.watch(investmentsDistributionUseCaseProvider)(),
        waiting: () => const Center(child: CircularProgressIndicator()),
        error: (_, __) => const Text('error'),
        success: (result) {
          final data = {
            for (var e in result.ok().unwrap()..sort((a, b) => (a.amount - b.amount).toInt())) e.label: e.share
          };
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: Paddings.xxl),
            child: Stack(
              children: [
                PieChart(
                  PieChartData(
                    sectionsSpace: 0,
                    sections: data.entries
                        .map(
                          (e) => PieChartSectionData(
                            title: e.key,
                            value: double.tryParse(e.value.toStringAsFixed(1)),
                            showTitle: false,
                            color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1),
                          ),
                        )
                        .toList(),
                    pieTouchData: PieTouchData(
                      enabled: true,
                      touchCallback: (event, response) {
                        if (event is FlTapDownEvent) {
                          debugPrint((response!.touchedSection!.props[0]! as PieChartSectionData).title);
                          debugPrint((response.touchedSection!.props[0]! as PieChartSectionData).value.toString());
                        }
                      },
                    ),
                  ),
                  // dataMap: ,
                  // animationDuration: const ExtraShortDuration(),
                  // chartType: ChartType.ring,
                  // legendOptions: const LegendOptions(showLegends: false),
                ),
                const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('13085€'),
                      Text('Total'),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
