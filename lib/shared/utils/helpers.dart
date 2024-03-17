import 'package:flutter/material.dart';

class Utils {
  Utils._();

  /// Will get the correct next color to avoid having the same color on adjacent
  /// segments of a PieChart.
  static Color getNextChartColor({
    required List<Color> colors,
    required int current,
    required int max,
    int? selected,
  }) {
    late final Color color;

    if (colors.isEmpty) {
      return Colors.transparent;
    }

    if (colors.length >= 3) {
      // If we are at the last index and the list would make two adjacent
      // sections (first and last) have the same color, skip this one
      // to avoid the issue
      if (current == max - 1 && current % colors.length == 0) {
        color = colors[1];
      } else {
        color = colors[current % colors.length];
      }
    } else {
      color = colors[current % colors.length];
    }

    if (selected == null || current == selected) {
      return color;
    }
    return Color.alphaBlend(Colors.black45, color);
  }

  static const Color goldColor = Color(0xFFDAA520);
  static const Color silverColor = Color(0xFFA8A9AD);
  static const Color moneyColor = Color(0xFF118C4F);
}
