import 'package:package_info_plus/package_info_plus.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part '_generated/app_info_repository.g.dart';

@riverpod
AppInfoRepository appInfoRepository(AppInfoRepositoryRef ref) {
  return AppInfoRepository();
}

class AppInfoRepository {
  Future<String> getBuildNumber() async {
    return (await PackageInfo.fromPlatform()).buildNumber;
  }

  Future<String> getPackageName() async {
    return (await PackageInfo.fromPlatform()).packageName;
  }

  Future<String> getVersion() async {
    return (await PackageInfo.fromPlatform()).version;
  }
}
