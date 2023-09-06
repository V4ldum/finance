import 'package:finance/feature/proof_of_concept/presentation/pages/auth/auth_page.dart';
import 'package:finance/navigation/app_navigator.dart';

mixin AuthRoute {
  Future<void> openAuth() async {
    return AppNavigator.push(
      Routes.material(const AuthPage()),
    );
  }
}
