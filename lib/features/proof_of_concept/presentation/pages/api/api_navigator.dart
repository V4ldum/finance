import 'package:finance/navigation/navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apiNavigatorProvider = Provider.autoDispose((ref) {
  return ApiNavigator();
});

class ApiNavigator with NoRoutes {
  ApiNavigator();
}
