import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/assets/domain/exception/finary_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  S.delegate.load(const Locale.fromSubtags());

  group('FinaryException', () {
    test('401 statusCode is unauthorized', () {
      expect(FinaryException.fromStatusCode(401).title, FinaryException.unauthorized().title);
      expect(FinaryException.fromStatusCode(401).message, FinaryException.unauthorized().message);
    });
    test('401 statusCode is tooManyRequests', () {
      expect(FinaryException.fromStatusCode(429).title, FinaryException.tooManyRequests().title);
      expect(FinaryException.fromStatusCode(429).message, FinaryException.tooManyRequests().message);
    });
    test('random statusCode is unknown', () {
      expect(FinaryException.fromStatusCode(999).title, FinaryException.unknown().title);
      expect(FinaryException.fromStatusCode(999).message, FinaryException.unknown().message);
    });
  });
}
