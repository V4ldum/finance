import 'package:finance/_l10n/_generated/l10n.dart';
import 'package:finance/feature/authentication/domain/exception/finary_authentication_exception.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  S.delegate.load(const Locale.fromSubtags());

  group('FinaryException', () {
    test('400 statusCode is badRequest', () {
      expect(
        FinaryAuthenticationException.fromStatusCode(400).title,
        FinaryAuthenticationException.badRequest().title,
      );
      expect(
        FinaryAuthenticationException.fromStatusCode(400).message,
        FinaryAuthenticationException.badRequest().message,
      );
    });
    test('401 statusCode is unknown', () {
      expect(
        FinaryAuthenticationException.fromStatusCode(401).title,
        FinaryAuthenticationException.unknown().title,
      );
      expect(
        FinaryAuthenticationException.fromStatusCode(401).message,
        FinaryAuthenticationException.unknown().message,
      );
    });
    test('422 statusCode is unauthorized', () {
      expect(
        FinaryAuthenticationException.fromStatusCode(422).title,
        FinaryAuthenticationException.unauthorized().title,
      );
      expect(
        FinaryAuthenticationException.fromStatusCode(422).message,
        FinaryAuthenticationException.unauthorized().message,
      );
    });
    test('429 statusCode is tooManyRequests', () {
      expect(
        FinaryAuthenticationException.fromStatusCode(429).title,
        FinaryAuthenticationException.tooManyRequests().title,
      );
      expect(
        FinaryAuthenticationException.fromStatusCode(429).message,
        FinaryAuthenticationException.tooManyRequests().message,
      );
    });
    test('random statusCode is unknown', () {
      expect(FinaryAuthenticationException.fromStatusCode(999).title, FinaryAuthenticationException.unknown().title);
      expect(
        FinaryAuthenticationException.fromStatusCode(999).message,
        FinaryAuthenticationException.unknown().message,
      );
    });
  });
}
