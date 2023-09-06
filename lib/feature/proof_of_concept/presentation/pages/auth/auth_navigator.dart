import 'package:finance/feature/proof_of_concept/presentation/routes/api_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authNavigatorProvider = Provider.autoDispose((ref) {
  return AuthNavigator();
});

class AuthNavigator with ApiRoute {
  AuthNavigator();
}
