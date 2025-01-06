import 'package:finance/shared/domain/repositories/app_info_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/app_version_controller.g.dart';

@riverpod
class AppVersionController extends _$AppVersionController {
  @override
  Future<String> build() => ref.read(appInfoRepositoryProvider).getVersion();
}
