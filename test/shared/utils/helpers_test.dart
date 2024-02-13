import 'package:finance/shared/utils/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late List<Color> colors;

  setUp(() {
    colors = <Color>[Colors.red, Colors.blue, Colors.green];
  });

  group('Helpers.getNextChartColor', () {
    test('should work with only one color', () {
      colors
        ..removeLast()
        ..removeLast();

      final max = colors.length * 2;

      for (var current = 0; current < max; current++) {
        final ret = Helpers.getNextChartColor(colors: colors, current: current, max: max);

        if (current.isEven) expect(ret, Colors.red, reason: 'Color should be red');
        if (current.isOdd) expect(ret, Colors.red, reason: 'Color should be red');
      }
    });
    test('should work with only two color', () {
      colors.removeLast();

      final max = colors.length * 2;

      for (var current = 0; current < max; current++) {
        final ret = Helpers.getNextChartColor(colors: colors, current: current, max: max);

        if (current.isEven) expect(ret, Colors.red, reason: 'Color should be red');
        if (current.isOdd) expect(ret, Colors.blue, reason: 'Color should be blue');
      }
    });
    test(
        "should cycle over the colors in the list and start back at the beginning of the list if max is greater that the list's size",
        () {
      final max = colors.length * 2;

      for (var current = colors.length; current < max; current++) {
        final ret = Helpers.getNextChartColor(colors: colors, current: current, max: max);

        if (0 == current + 1 % 1) expect(ret, Colors.red, reason: 'Color should be red');
        if (0 == current + 1 % 2) expect(ret, Colors.blue, reason: 'Color should be blue');
        if (0 == current + 1 % 3) expect(ret, Colors.green, reason: 'Color should be green');
      }
    });
    test("shouldn't give the same color twice back to back. This can happen if we have max equals to colors.length + 1",
        () {
      final max = colors.length + 1;

      for (var current = 0; current < max; current++) {
        if (current < max - 1) {
          final ret = Helpers.getNextChartColor(colors: colors, current: current, max: max);
          final nextRet = Helpers.getNextChartColor(colors: colors, current: current + 1, max: max);

          expect(ret, isNot(nextRet), reason: 'Two back to back colors should not be the same');
        } else {
          final ret = Helpers.getNextChartColor(colors: colors, current: current, max: max);

          expect(
            ret,
            colors[(current + 1) % colors.length],
            reason: 'When two back to back colors would be produced, function should skip to the next one',
          );
        }
      }
    });
    test('should return transparent if the list of colors is empty', () {
      colors.removeWhere((_) => true);

      const max = 1;

      for (var current = 0; current < max; current++) {
        final ret = Helpers.getNextChartColor(colors: colors, current: current, max: max);

        expect(ret, Colors.transparent, reason: 'Color should be transparent');
      }
    });
    test(
        'should return a slightly darker color for a unselected index, and the true color for the selected index if selected is not null',
        () {
      final max = colors.length * 2;

      for (var selected = 0; selected < max; selected++) {
        for (var current = 0; current < max; current++) {
          final ret = Helpers.getNextChartColor(colors: colors, current: current, max: max, selected: selected);

          if (current == selected) {
            if (0 == current + 1 % 1) expect(ret, Colors.red, reason: 'Color should be red');
            if (0 == current + 1 % 2) expect(ret, Colors.blue, reason: 'Color should be blue');
            if (0 == current + 1 % 3) expect(ret, Colors.green, reason: 'Color should be green');
          } else {
            if (0 == current + 1 % 1) {
              expect(ret, Color.alphaBlend(Colors.black45, Colors.red), reason: 'Color should be dark red');
            }
            if (0 == current + 1 % 2) {
              expect(ret, Color.alphaBlend(Colors.black45, Colors.blue), reason: 'Color should be dark blue');
            }
            if (0 == current + 1 % 3) {
              expect(ret, Color.alphaBlend(Colors.black45, Colors.green), reason: 'Color should be dark green');
            }
          }
        }
      }
    });
  });
}
