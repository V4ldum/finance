import 'package:finance/features/proof_of_concept/presentation/pages/api/api_page.dart';
import 'package:finance/navigation/app_navigator.dart';

mixin ApiRoute {
  Future<void> openApi() async {
    return AppNavigator.pushReplacement(
      Routes.material(const ApiPage()),
    );
  }
}
