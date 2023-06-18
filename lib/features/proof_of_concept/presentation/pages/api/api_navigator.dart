import 'package:finance/navigation/navigation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Provider serving an instance of [ApiNavigator]
final apiNavigatorProvider = Provider.autoDispose((ref) {
  return ApiNavigator();
});

/// Navigator used by the ApiPage to navigate around the app
class ApiNavigator with NoRoutes {
  /// Constructor for the [ApiNavigator]
  ApiNavigator();
}
